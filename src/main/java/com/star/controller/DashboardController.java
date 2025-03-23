package com.star.controller;

import com.star.service.DashboardService;
import com.star.utils.Result;
import com.star.vo.DashboardDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/dashboard")
public class DashboardController {

    @Autowired
    private DashboardService dashboardService;

    @GetMapping("/data")
    public Result<DashboardDataVO> getDashboardData() {
        return Result.success(dashboardService.getDashboardData());
    }
} 