package com.wdc.dao;

import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SlideMapper {
    long countByExample(SlideExample example);

    int deleteByExample(SlideExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Slide record);

    int insertSelective(Slide record);

    List<Slide> selectByExample(SlideExample example);

    Slide selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Slide record, @Param("example") SlideExample example);

    int updateByExample(@Param("record") Slide record, @Param("example") SlideExample example);

    int updateByPrimaryKeySelective(Slide record);

    int updateByPrimaryKey(Slide record);
}