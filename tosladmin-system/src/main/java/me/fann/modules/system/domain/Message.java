package me.fann.modules.system.domain;

import lombok.Getter;
import lombok.Setter;
import me.fann.base.BaseEntity;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Objects;


@Entity
@Getter
@Setter
@Table(name="sys_user_message")
public class Message extends BaseEntity implements Serializable{

    @Id
    @Column(name = "message_id")
    private Integer id;

    @Column(name = "user_id")
    private Integer user_id;

    @Column(name = "user_name")
    private String user_name;

    @Column(name = "message")
    private String message;

    @Column(name = "send_to")
    private String send_to;

    @Column(name = "create_by")
    private String createBy;

    /** 创建日期 */
    @CreationTimestamp
    private Timestamp createTime;

    public Message() {
    }

    public Message(Integer message_id, Integer user_id, String user_name, String message, String send_to) {
        this.id = message_id;
        this.user_id = user_id;
        this.user_name = user_name;
        this.message = message;
        this.send_to = send_to;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer message_id) {
        this.id = message_id;
    }

    public String getSend_to() {
        return send_to;
    }

    public void setSend_to(String send_to) {
        this.send_to = send_to;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Message message = (Message) o;
        return Objects.equals(id, message.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}