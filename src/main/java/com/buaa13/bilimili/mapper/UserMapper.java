package com.buaa13.bilimili.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.buaa13.bilimili.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserMapper extends BaseMapper<User> {
    @Select("select distinct uid from user ")
    List<Integer> getAllUserIds();
}
