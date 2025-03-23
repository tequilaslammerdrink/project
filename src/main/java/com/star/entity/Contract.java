package com.star.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
@TableName("contract")
public class Contract {
    @TableId(type = IdType.AUTO)
    private Long id;
    private String contractNo;
    private Long artistId;
    private Integer contractType;
    private Long partnerId;
    private Date startDate;
    private Date endDate;
    private BigDecimal contractAmount;
    private String content;
    private String attachmentUrl;
    private Integer status;
    private Date createTime;
    private Date updateTime;
} 