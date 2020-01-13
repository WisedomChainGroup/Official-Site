package com.wdc.dao;

import com.wdc.bean.Development;
import com.wdc.bean.DevelopmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DevelopmentMapper {
    long countByExample(DevelopmentExample example);

    int deleteByExample(DevelopmentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Development record);

    int insertSelective(Development record);

    List<Development> selectByExample(DevelopmentExample example);

    Development selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Development record, @Param("example") DevelopmentExample example);

    int updateByExample(@Param("record") Development record, @Param("example") DevelopmentExample example);

    int updateByPrimaryKeySelective(Development record);

    int updateByPrimaryKey(Development record);
}