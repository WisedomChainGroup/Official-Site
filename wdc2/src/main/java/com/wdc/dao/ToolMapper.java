package com.wdc.dao;

import com.wdc.bean.Tool;
import com.wdc.bean.ToolExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ToolMapper {
    long countByExample(ToolExample example);

    int deleteByExample(ToolExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Tool record);

    int insertSelective(Tool record);

    List<Tool> selectByExample(ToolExample example);

    Tool selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Tool record, @Param("example") ToolExample example);

    int updateByExample(@Param("record") Tool record, @Param("example") ToolExample example);

    int updateByPrimaryKeySelective(Tool record);

    int updateByPrimaryKey(Tool record);
}