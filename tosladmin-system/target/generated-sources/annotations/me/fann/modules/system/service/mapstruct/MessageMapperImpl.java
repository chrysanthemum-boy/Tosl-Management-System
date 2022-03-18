package me.fann.modules.system.service.mapstruct;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import me.fann.modules.system.domain.Message;
import me.fann.modules.system.service.dto.MessageDto;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-03-18T16:17:46+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_321 (Oracle Corporation)"
)
@Component
public class MessageMapperImpl implements MessageMapper {

    @Override
    public Message toEntity(MessageDto dto) {
        if ( dto == null ) {
            return null;
        }

        Message message = new Message();

        message.setUpdateBy( dto.getUpdateBy() );
        message.setUpdateTime( dto.getUpdateTime() );
        message.setUser_id( dto.getUser_id() );
        message.setUser_name( dto.getUser_name() );
        message.setMessage( dto.getMessage() );
        message.setId( dto.getId() );
        message.setSend_to( dto.getSend_to() );
        message.setCreateBy( dto.getCreateBy() );
        message.setCreateTime( dto.getCreateTime() );

        return message;
    }

    @Override
    public MessageDto toDto(Message entity) {
        if ( entity == null ) {
            return null;
        }

        MessageDto messageDto = new MessageDto();

        messageDto.setCreateBy( entity.getCreateBy() );
        messageDto.setUpdateBy( entity.getUpdateBy() );
        messageDto.setCreateTime( entity.getCreateTime() );
        messageDto.setUpdateTime( entity.getUpdateTime() );
        messageDto.setId( entity.getId() );
        messageDto.setUser_id( entity.getUser_id() );
        messageDto.setUser_name( entity.getUser_name() );
        messageDto.setMessage( entity.getMessage() );
        messageDto.setSend_to( entity.getSend_to() );

        return messageDto;
    }

    @Override
    public List<Message> toEntity(List<MessageDto> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<Message> list = new ArrayList<Message>( dtoList.size() );
        for ( MessageDto messageDto : dtoList ) {
            list.add( toEntity( messageDto ) );
        }

        return list;
    }

    @Override
    public List<MessageDto> toDto(List<Message> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<MessageDto> list = new ArrayList<MessageDto>( entityList.size() );
        for ( Message message : entityList ) {
            list.add( toDto( message ) );
        }

        return list;
    }
}
