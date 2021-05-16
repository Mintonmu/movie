package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "dianyingyuan")
public class Dianyingyuan {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id", insertable = false)
    private Integer id;

    @Column(name = "yingyuanmingcheng")
    private String yingyuanmingcheng;

    @Column(name = "yingyuandizhi")
    private String yingyuandizhi;


    public Integer getId() {
        return id;
    }

    public String getYingyuandizhi() {
        return yingyuandizhi;
    }

    public String getYingyuanmingcheng() {
        return yingyuanmingcheng;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setYingyuandizhi(String yingyuandizhi) {
        this.yingyuandizhi = yingyuandizhi;
    }

    public void setYingyuanmingcheng(String yingyuanmingcheng) {
        this.yingyuanmingcheng = yingyuanmingcheng;
    }

    @Override
    public String toString() {
        return "Dianyingyuan{" +
                "id=" + id +
                ", yingyuanmingcheng='" + yingyuanmingcheng + '\'' +
                ", yingyuandizhi='" + yingyuandizhi + '\'' +
                '}';
    }
}
