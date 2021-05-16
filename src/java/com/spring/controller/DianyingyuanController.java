package com.spring.controller;

import com.spring.dao.DianyingyuanMapper;
import com.spring.entity.Dianyingyuan;
import com.spring.service.DianyingyuanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
@Controller
public class DianyingyuanController extends BaseController {
    @Autowired
    private DianyingyuanMapper dao;
    @Autowired
    private DianyingyuanService service;

    @RequestMapping("/dianyingyuanlist")
    public String list2()
    {
        Example example = new Example(Dianyingyuan.class);
        Example.Criteria criteria = example.createCriteria();
        String where = " 1=1 ";
        criteria.andCondition(where);
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
        page = Math.max(1, page);
        List<Dianyingyuan> list = service.selectPageExample(example, page, 12);
        list.forEach(System.out::println);
        request.setAttribute("dianyingyuan", list);
        return "dianyingyuanlist";
    }

}
