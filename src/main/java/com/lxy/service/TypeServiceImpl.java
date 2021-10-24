package com.lxy.service;

import com.lxy.dao.TypeMapper;
import com.lxy.pojo.Type;

import java.util.List;

public class TypeServiceImpl implements TypeService{

    private TypeMapper typeMapper;

    public void setTypeMapper(TypeMapper typeMapper) {
        this.typeMapper = typeMapper;
    }

    @Override
    public List<Type> queryAllType() {
        return typeMapper.queryAllType();
    }
}
