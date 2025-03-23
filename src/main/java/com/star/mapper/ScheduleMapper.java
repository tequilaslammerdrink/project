package com.star.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.star.entity.Schedule;
import org.apache.ibatis.annotations.Select;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public interface ScheduleMapper extends BaseMapper<Schedule> {
    
    @Select("SELECT COUNT(*) FROM schedule WHERE schedule_type = #{type} AND DATE_FORMAT(start_time, '%Y-%m') = #{month}")
    Integer countByTypeAndMonth(Integer type, String month);
    
    @Select("SELECT DATE_FORMAT(start_time, '%Y-%m-%d') as date, COUNT(*) as count " +
            "FROM schedule " +
            "WHERE start_time BETWEEN #{startDate} AND #{endDate} " +
            "GROUP BY DATE_FORMAT(start_time, '%Y-%m-%d')")
    List<Map<String, Object>> countByDate(LocalDate startDate, LocalDate endDate);
}
