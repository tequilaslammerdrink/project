package com.star.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.star.entity.MarketingCampaign;
import org.apache.ibatis.annotations.Select;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public interface MarketingCampaignMapper extends BaseMapper<MarketingCampaign> {
    
    @Select("SELECT COUNT(*) FROM marketing_campaign WHERE status = 2")
    Integer countOngoingCampaigns();
    
    @Select("SELECT COUNT(*) FROM marketing_campaign WHERE DATE_FORMAT(start_date, '%Y-%m') = DATE_FORMAT(#{date}, '%Y-%m')")
    Integer countMonthCampaigns(LocalDate date);
    
    @Select("SELECT status, COUNT(*) as count FROM marketing_campaign GROUP BY status")
    List<Map<String, Object>> countByStatus();
} 