package com.star.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("work")
public class Work {
    @TableId(type = IdType.AUTO)
    private Long id;
    private Long artistId;
    private String workName;
    private Integer workType;
    private Date releaseDate;
    private String image;
    private String roleName;
    private String description;
    private Long partnerId;
    private Date createTime;
    private Date updateTime;
} 