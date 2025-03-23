package com.star.service.impl;

import com.star.mapper.*;
import com.star.service.DashboardService;
import com.star.vo.DashboardDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Service
public class DashboardServiceImpl implements DashboardService {

    @Autowired
    private ArtistMapper artistMapper;

    @Autowired
    private MarketingCampaignMapper campaignMapper;

    @Autowired
    private PartnerMapper partnerMapper;

    @Autowired
    private ContractMapper contractMapper;

    @Autowired
    private ScheduleMapper scheduleMapper;

    @Override
    public DashboardDataVO getDashboardData() {
        DashboardDataVO data = new DashboardDataVO();

        // 获取概要数据
        data.setSummary(getSummaryData());

        // 获取艺人活动分布数据
        data.setArtistActivity(getArtistActivityData());

        // 获取合作方类型分布
        data.setPartnerTypes(getPartnerTypeData());

        // 获取收入趋势
        data.setIncomeTrend(getIncomeTrendData());

        // 获取活动状态分布
        data.setCampaignStatus(getCampaignStatusData());

        // 获取日程热力图数据
        data.setScheduleData(getScheduleData());

        return data;
    }

    private DashboardDataVO.DashboardSummary getSummaryData() {
        DashboardDataVO.DashboardSummary summary = new DashboardDataVO.DashboardSummary();

        // 获取艺人统计
        summary.setArtistCount(artistMapper.selectCount(null).intValue());
        summary.setActiveArtistCount(artistMapper.countActiveArtists());

        // 获取活动统计
        LocalDate now = LocalDate.now();
        summary.setOngoingCampaignCount(campaignMapper.countOngoingCampaigns());
        summary.setMonthCampaignCount(campaignMapper.countMonthCampaigns(now));

        // 获取合作方统计
        summary.setPartnerCount(partnerMapper.selectCount(null).intValue());
        summary.setCorePartnerCount(partnerMapper.countCorePartners());

        // 获取收入统计
        summary.setTotalIncome(contractMapper.sumTotalIncome());
        summary.setYearIncome(contractMapper.sumYearIncome(now.getYear()));

        return summary;
    }

    private DashboardDataVO.ArtistActivityData getArtistActivityData() {
        DashboardDataVO.ArtistActivityData data = new DashboardDataVO.ArtistActivityData();

        // 获取最近12个月的月份列表
        List<String> months = new ArrayList<>();
        List<Integer> performance = new ArrayList<>();
        List<Integer> advertisement = new ArrayList<>();
        List<Integer> movie = new ArrayList<>();
        List<Integer> variety = new ArrayList<>();

        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM");

        for (int i = 11; i >= 0; i--) {
            LocalDate date = now.minusMonths(i);
            months.add(date.format(formatter));

            // 获取各类型活动数量
            String monthStr = date.format(formatter);
            performance.add(scheduleMapper.countByTypeAndMonth(1, monthStr));
            advertisement.add(scheduleMapper.countByTypeAndMonth(2, monthStr));
            movie.add(scheduleMapper.countByTypeAndMonth(3, monthStr));
            variety.add(scheduleMapper.countByTypeAndMonth(4, monthStr));
        }

        data.setMonths(months);
        data.setPerformance(performance);
        data.setAdvertisement(advertisement);
        data.setMovie(movie);
        data.setVariety(variety);

        return data;
    }

    private List<DashboardDataVO.TypeData> getPartnerTypeData() {
        List<DashboardDataVO.TypeData> typeDataList = new ArrayList<>();
        Map<Integer, String> typeNames = new HashMap<>();
        typeNames.put(1, "品牌商");
        typeNames.put(2, "广告公司");
        typeNames.put(3, "制作公司");

        List<Map<String, Object>> statistics = partnerMapper.countByType();
        for (Map<String, Object> stat : statistics) {
            DashboardDataVO.TypeData typeData = new DashboardDataVO.TypeData();
            Integer type = (Integer) stat.get("type");
            typeData.setName(typeNames.get(type));
            typeData.setValue(((Number) stat.get("count")).intValue());
            typeDataList.add(typeData);
        }

        return typeDataList;
    }

    private DashboardDataVO.IncomeTrendData getIncomeTrendData() {
        DashboardDataVO.IncomeTrendData data = new DashboardDataVO.IncomeTrendData();

        List<String> months = new ArrayList<>();
        List<Double> values = new ArrayList<>();

        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM");

        for (int i = 11; i >= 0; i--) {
            LocalDate date = now.minusMonths(i);
            String monthStr = date.format(formatter);
            months.add(monthStr);
            values.add(contractMapper.sumIncomeByMonth(monthStr));
        }

        data.setMonths(months);
        data.setValues(values);

        return data;
    }

    private List<DashboardDataVO.StatusData> getCampaignStatusData() {
        List<DashboardDataVO.StatusData> statusDataList = new ArrayList<>();
        Map<Integer, String> statusNames = new HashMap<>();
        statusNames.put(1, "筹备中");
        statusNames.put(2, "进行中");
        statusNames.put(3, "已完成");
        statusNames.put(4, "已取消");

        List<Map<String, Object>> statistics = campaignMapper.countByStatus();
        for (Map<String, Object> stat : statistics) {
            DashboardDataVO.StatusData statusData = new DashboardDataVO.StatusData();
            Integer status = (Integer) stat.get("status");
            statusData.setName(statusNames.get(status));
            statusData.setValue(((Number) stat.get("count")).intValue());
            statusDataList.add(statusData);
        }

        return statusDataList;
    }

    private List<DashboardDataVO.ScheduleData> getScheduleData() {
        List<DashboardDataVO.ScheduleData> scheduleDataList = new ArrayList<>();

        // 获取最近一年的日程数据
        LocalDate startDate = LocalDate.now().minusYears(1);
        LocalDate endDate = LocalDate.now();

        List<Map<String, Object>> statistics = scheduleMapper.countByDate(startDate, endDate);
        for (Map<String, Object> stat : statistics) {
            DashboardDataVO.ScheduleData scheduleData = new DashboardDataVO.ScheduleData();
            scheduleData.setDate(stat.get("date").toString());
            scheduleData.setCount(((Number) stat.get("count")).intValue());
            scheduleDataList.add(scheduleData);
        }

        return scheduleDataList;
    }
}
