package me.fann.modules.system.rest;

import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.fann.modules.system.domain.Message;
import me.fann.modules.system.service.dto.MessageQueryCriteria;
import me.fann.modules.system.repository.MessageRepository;
import me.fann.modules.system.service.MessageService;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/message")
@RequiredArgsConstructor
public class MessageController {

   

    @Resource
    private final MessageRepository messageRepository;
    
    private final MessageService messageService;


    @GetMapping("/test")
    public List<Message> testMessage(Integer id){
        return messageRepository.getMessage(id);
    }

    @ApiOperation("获取用户消息")
    @GetMapping(value = "/all")
    public ResponseEntity<Object> getMessage(Integer id){
        return new ResponseEntity<>(messageRepository.getMessage(id), HttpStatus.OK);
    }

    @ApiOperation("上传用户消息")
    @PostMapping(value = "/set")
    public ResponseEntity<Object> setMessage(@RequestBody Message resource){
        messageService.setMessage(resource);
        return new ResponseEntity<>( HttpStatus.OK);
    }

    @ApiOperation("导出消息")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check()")
    public void exportMessage(HttpServletResponse response, MessageQueryCriteria criteria) throws IOException {
        messageService.download(messageService.queryAll(criteria), response);
    }

    @GetMapping
    @ApiOperation("消息查询")
    @PreAuthorize("@el.check()")
    public ResponseEntity<Object> queryMessage(MessageQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(messageService.queryAll(criteria,pageable), HttpStatus.OK);
    }

    @DeleteMapping(value = "/del")
    @ApiOperation("删除所有消息")
    @PreAuthorize("@el.check()")
    public ResponseEntity<Object> delAllMessage(){
        messageService.delAllMessage();
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
