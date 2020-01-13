package com.wdc.dao;

import com.wdc.bean.Qr;
import com.wdc.bean.QrExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface QrMapper {
    long countByExample(QrExample example);

    int deleteByExample(QrExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Qr record);

    int insertSelective(Qr record);

    List<Qr> selectByExample(QrExample example);

    Qr selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Qr record, @Param("example") QrExample example);

    int updateByExample(@Param("record") Qr record, @Param("example") QrExample example);

    int updateByPrimaryKeySelective(Qr record);

    int updateByPrimaryKey(Qr record);
}