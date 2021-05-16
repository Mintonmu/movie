package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DianyingyuanMapper;
import com.spring.entity.Dianyingyuan;
import com.spring.service.DianyingyuanService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("DianyingyuanService")
public class DianyingyuanServiceImpl extends ServiceBase<Dianyingyuan> implements DianyingyuanService {
    @Resource
    private DianyingyuanMapper dao;

    @Override
    protected DianyingyuanMapper getDao() {
        return dao;
    }
}
