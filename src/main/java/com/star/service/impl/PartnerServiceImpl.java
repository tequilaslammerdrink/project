package com.star.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.star.entity.Partner;
import com.star.mapper.PartnerMapper;
import com.star.service.PartnerService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PartnerServiceImpl implements PartnerService {

    @Autowired
    private PartnerMapper partnerMapper;

    @Override
    public List<Partner> getPartnerList(String keyword, Integer partnerType) {
        LambdaQueryWrapper<Partner> wrapper = new LambdaQueryWrapper<>();
        
        // 关键字搜索
        if (StringUtils.isNotBlank(keyword)) {
            wrapper.like(Partner::getPartnerName, keyword)
                  .or()
                  .like(Partner::getContactPerson, keyword)
                  .or()
                  .like(Partner::getContactPhone, keyword)
                  .or()
                  .like(Partner::getContactEmail, keyword);
        }
        
        // 类型筛选
        if (partnerType != null) {
            wrapper.eq(Partner::getPartnerType, partnerType);
        }
        
        wrapper.orderByDesc(Partner::getCreateTime);
        return partnerMapper.selectList(wrapper);
    }

    @Override
    public Partner getById(Long id) {
        return partnerMapper.selectById(id);
    }

    @Override
    public void savePartner(Partner partner) {
        partner.setCreateTime(new Date());
        partner.setUpdateTime(new Date());
        partnerMapper.insert(partner);
    }

    @Override
    public void updatePartner(Partner partner) {
        partner.setUpdateTime(new Date());
        partnerMapper.updateById(partner);
    }

    @Override
    public void deletePartner(Long id) {
        partnerMapper.deleteById(id);
    }
} 