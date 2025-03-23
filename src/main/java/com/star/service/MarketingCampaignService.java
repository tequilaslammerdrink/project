package com.star.service;

import com.star.entity.MarketingCampaign;
import com.star.vo.MarketingCampaignVO;
import java.util.List;

public interface MarketingCampaignService {
    List<MarketingCampaignVO> getMarketingList(String keyword, Integer campaignType, Integer status);
    MarketingCampaignVO getById(Long id);
    void saveMarketing(MarketingCampaign campaign);
    void updateMarketing(MarketingCampaign campaign);
    void deleteMarketing(Long id);
} 