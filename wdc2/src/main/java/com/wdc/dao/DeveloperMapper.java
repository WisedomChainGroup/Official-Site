package com.wdc.dao;

import com.wdc.bean.Developer;
import com.wdc.bean.DeveloperExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DeveloperMapper {
    long countByExample(DeveloperExample example);

    int deleteByExample(DeveloperExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Developer record);

    int insertSelective(Developer record);

    List<Developer> selectByExample(DeveloperExample example);

    Developer selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Developer record, @Param("example") DeveloperExample example);

    int updateByExample(@Param("record") Developer record, @Param("example") DeveloperExample example);

    int updateByPrimaryKeySelective(Developer record);

    int updateByPrimaryKey(Developer record);
}