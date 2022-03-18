package me.fann.modules.system.repository;


import me.fann.modules.system.domain.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.List;


public interface MessageRepository extends JpaRepository<Message, Long>, JpaSpecificationExecutor<Message> {

    /**
     * 根据user_id查询
     * @param user_id /
     * @return /
     */
    @Query(value = "SELECT * FROM sys_user_message where user_id = ?1 ",nativeQuery = true)
    List<Message> getMessage(Integer user_id);


    /**
     * 上传数据
     * @param message_id,user_id,user_name,message,create_by,create_time /
     */
    @Transactional
    @Modifying
    @Query(value = "INSERT INTO sys_user_message (message_id,user_id,user_name,message,create_by,send_to,create_time ) VALUES (?1,?2,?3,?4,?5,?6,?7) ",
            nativeQuery = true)
    void setMessage(Integer message_id, Integer user_id, String user_name, String message, String create_by, String send_to,Timestamp create_time);

}
