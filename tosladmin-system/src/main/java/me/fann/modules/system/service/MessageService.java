package me.fann.modules.system.service;
import me.fann.modules.system.domain.Message;
import me.fann.modules.system.service.dto.*;
import org.springframework.data.domain.Pageable;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public interface MessageService {

    /**
     * 分页查询
     * @param criteria 查询条件
     * @param pageable 分页参数
     * @return /
     */
    Object queryAll(MessageQueryCriteria criteria, Pageable pageable);

    /**
     * 查询全部数据
     * @param criteria 查询条件
     * @return /
     */
    List<Message> queryAll(MessageQueryCriteria criteria);


    /**
     * 查询全部数据
     * @param user_id
     * @return /
     */
    List<MessageDto> getMessage(Integer user_id);


    /**
     * 上传数据
     * @param resource /
     */
    void setMessage(Message resource);

    /**
     * 导出消息
     * @param message 待导出的数据
     * @param response /
     * @throws IOException /
     */
    void download(List<Message> message, HttpServletResponse response) throws IOException;

    /**
     * 删除所有消息
     */
    void delAllMessage();
}
