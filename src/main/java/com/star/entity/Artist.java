package com.star.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("artist")
public class Artist {
    @TableId(type = IdType.AUTO)
    private Long id;
    private String name;
    private String stageName;
    private String gender;
    private Date birthDate;
    private String phone;
    private String email;
    private String image;
    private String idCard;
    private String address;
    private String education;
    private String skills;
    private String description;
    private Integer status;
    private Date createTime;
    private Date updateTime;
}
