package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "pingjia")
public class Pingjia implements Serializable {
    private static final long serialVersionUID = 1L;
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id", insertable = false)
    private Integer id;
    @Column(name = "content")
    private String content;
    @Column(name = "score")
    private Integer score;
    @Column(name = "createtime")
    private String createtime;
    @Column(name = "uid")
    private Integer uid;
    @Column(name = "vid")
    private Integer vid;

    public Integer getVid() {
        return vid;
    }

    public void setVid(Integer vid) {
        this.vid = vid;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Pingjia{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", score=" + score +
                ", createtime='" + createtime + '\'' +
                ", uid=" + uid +
                ", vid=" + vid +
                '}';
    }
}
