package com.star.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.star.entity.Partner;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import java.util.List;
import java.util.Map;

@Mapper
public interface PartnerMapper extends BaseMapper<Partner> {
    
    @Select("SELECT COUNT(*) FROM partner WHERE id IN (SELECT partner_id FROM marketing_campaign GROUP BY partner_id HAVING COUNT(*) >= 3)")
    Integer countCorePartners();
    
    @Select("SELECT partner_type as type, COUNT(*) as count FROM partner GROUP BY partner_type")
    List<Map<String, Object>> countByType();
} 