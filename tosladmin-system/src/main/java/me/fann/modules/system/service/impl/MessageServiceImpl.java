package me.fann.modules.system.service.impl;

import lombok.RequiredArgsConstructor;
import me.fann.modules.system.domain.Message;
import me.fann.modules.system.repository.MessageRepository;
import me.fann.modules.system.service.MessageService;
import me.fann.modules.system.service.dto.MessageDto;
import me.fann.modules.system.service.dto.MessageQueryCriteria;
import me.fann.modules.system.service.mapstruct.MessageMapper;
import me.fann.utils.FileUtil;
import me.fann.utils.QueryHelp;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@CacheConfig(cacheNames = "message")
public class MessageServiceImpl implements MessageService {

    private final MessageRepository messageRepository;
    private final MessageMapper messageMapper;


    @Override
    @Transactional(rollbackFor = Exception.class)
    public List<MessageDto> getMessage(Integer user_id) {
        return messageMapper.toDto(messageRepository.getMessage(user_id));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void setMessage(Message resource) {
        messageRepository.save(resource);
    }

    @Override
    public Object queryAll(MessageQueryCriteria criteria, Pageable pageable) {
        return messageRepository.findAll(((root, criteriaQuery, cb) -> QueryHelp.getPredicate(root, criteria, cb)), pageable);
    }

    @Override
    public List<Message> queryAll(MessageQueryCriteria criteria) {
        return messageRepository.findAll(((root, criteriaQuery, cb) -> QueryHelp.getPredicate(root, criteria, cb)));
    }

    @Override
    public void download(List<Message> messages, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (Message message : messages) {
            Map<String, Object> map = new LinkedHashMap<>();
            map.put("用户ID", message.getUser_id());
            map.put("用户名", message.getUser_name());
            map.put("内容", message.getMessage());
            map.put("接收用户", message.getSend_to());
            map.put("发送用户", message.getCreateBy());
            map.put("发送时间", message.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delAllMessage() {
        messageRepository.deleteAll();
    }
}
