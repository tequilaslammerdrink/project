package com.star.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.star.entity.Artist;
import com.star.entity.MarketingCampaign;
import com.star.entity.Partner;
import com.star.mapper.ArtistMapper;
import com.star.mapper.MarketingCampaignMapper;
import com.star.mapper.PartnerMapper;
import com.star.service.MarketingCampaignService;
import com.star.vo.MarketingCampaignVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class MarketingCampaignServiceImpl implements MarketingCampaignService {

    @Autowired
    private MarketingCampaignMapper marketingMapper;
    
    @Autowired
    private ArtistMapper artistMapper;
    
    @Autowired
    private PartnerMapper partnerMapper;

    @Override
    public List<MarketingCampaignVO> getMarketingList(String keyword, Integer campaignType, Integer status) {
        LambdaQueryWrapper<MarketingCampaign> wrapper = new LambdaQueryWrapper<>();
        
        if (StringUtils.isNotBlank(keyword)) {
            wrapper.like(MarketingCampaign::getCampaignName, keyword);
        }
        if (campaignType != null) {
            wrapper.eq(MarketingCampaign::getCampaignType, campaignType);
        }
        if (status != null) {
            wrapper.eq(MarketingCampaign::getStatus, status);
        }
        
        wrapper.orderByDesc(MarketingCampaign::getCreateTime);
        List<MarketingCampaign> campaigns = marketingMapper.selectList(wrapper);
        
        List<MarketingCampaignVO> vos = new ArrayList<>();
        for (MarketingCampaign campaign : campaigns) {
            MarketingCampaignVO vo = new MarketingCampaignVO();
            BeanUtils.copyProperties(campaign, vo);
            
            // 获取艺人名称
            Artist artist = artistMapper.selectById(campaign.getArtistId());
            if (artist != null) {
                vo.setArtistName(artist.getName());
            }
            
            // 获取合作方名称
            Partner partner = partnerMapper.selectById(campaign.getPartnerId());
            if (partner != null) {
                vo.setPartnerName(partner.getPartnerName());
            }
            
            vos.add(vo);
        }
        return vos;
    }

    @Override
    public MarketingCampaignVO getById(Long id) {
        MarketingCampaign campaign = marketingMapper.selectById(id);
        if (campaign == null) {
            return null;
        }
        
        MarketingCampaignVO vo = new MarketingCampaignVO();
        BeanUtils.copyProperties(campaign, vo);
        
        Artist artist = artistMapper.selectById(campaign.getArtistId());
        if (artist != null) {
            vo.setArtistName(artist.getName());
        }
        
        Partner partner = partnerMapper.selectById(campaign.getPartnerId());
        if (partner != null) {
            vo.setPartnerName(partner.getPartnerName());
        }
        
        return vo;
    }

    @Override
    public void saveMarketing(MarketingCampaign campaign) {
        campaign.setCreateTime(new Date());
        campaign.setUpdateTime(new Date());
        marketingMapper.insert(campaign);
    }

    @Override
    public void updateMarketing(MarketingCampaign campaign) {
        campaign.setUpdateTime(new Date());
        marketingMapper.updateById(campaign);
    }

    @Override
    public void deleteMarketing(Long id) {
        marketingMapper.deleteById(id);
    }
} 