package com.star.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.star.entity.Contract;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ContractMapper extends BaseMapper<Contract> {
    
    @Select("SELECT COALESCE(SUM(contract_amount)/10000, 0) FROM contract WHERE status = 1")
    Double sumTotalIncome();
    
    @Select("SELECT COALESCE(SUM(contract_amount)/10000, 0) FROM contract WHERE status = 1 AND YEAR(start_date) = #{year}")
    Double sumYearIncome(int year);
    
    @Select("SELECT COALESCE(SUM(contract_amount)/10000, 0) FROM contract WHERE status = 1 AND DATE_FORMAT(start_date, '%Y-%m') = #{month}")
    Double sumIncomeByMonth(String month);
} 