package me.fann.modules.system.service.mapstruct;

import me.fann.base.BaseMapper;
import me.fann.modules.system.domain.Message;
import me.fann.modules.system.service.dto.MessageDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",  unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MessageMapper extends BaseMapper<MessageDto, Message> {
}
