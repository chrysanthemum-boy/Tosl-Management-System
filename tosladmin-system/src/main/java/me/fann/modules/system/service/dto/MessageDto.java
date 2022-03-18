package me.fann.modules.system.service.dto;

import lombok.Getter;
import lombok.Setter;
import me.fann.base.BaseDTO;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Objects;


@Getter
@Setter
public class MessageDto extends BaseDTO implements Serializable {

    private Integer id;

    private Integer user_id;

    private String user_name;

    private String message;

    private String send_to;

    private String create_by;

    private Timestamp create_time;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        MessageDto messageDto = (MessageDto) o;
        return Objects.equals(id, messageDto.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
