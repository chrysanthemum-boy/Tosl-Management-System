package me.fann.modules.system.service.dto;

import lombok.Data;
import me.fann.annotation.Query;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@Data
public class MessageQueryCriteria implements Serializable {
//    @Query(blurry = "user_id,message,send_to,create_by,id")
//    private String blurry;

    @Query
    private Integer id;

    @Query
    private Integer user_id;

    @Query
    private String message;

    @Query
    private String send_to;

    @Query
    private String create_by;

    @Query(type = Query.Type.BETWEEN)
    private List<Timestamp> createTime;
}
