package com.star.controller;

import com.star.entity.MarketingCampaign;
import com.star.service.MarketingCampaignService;
import com.star.utils.Result;
import com.star.vo.MarketingCampaignVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/marketing")
public class MarketingCampaignController {

    @Autowired
    private MarketingCampaignService marketingService;

    @GetMapping("/list")
    public Result<List<MarketingCampaignVO>> list(
            @RequestParam(required = false) String keyword,
            @RequestParam(required = false) Integer campaignType,
            @RequestParam(required = false) Integer status) {
        return Result.success(marketingService.getMarketingList(keyword, campaignType, status));
    }

    @GetMapping("/{id}")
    public Result<MarketingCampaignVO> getById(@PathVariable Long id) {
        return Result.success(marketingService.getById(id));
    }

    @PostMapping
    public Result<Void> save(@RequestBody MarketingCampaign campaign) {
        marketingService.saveMarketing(campaign);
        return Result.success();
    }

    @PutMapping
    public Result<Void> update(@RequestBody MarketingCampaign campaign) {
        marketingService.updateMarketing(campaign);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result<Void> delete(@PathVariable Long id) {
        marketingService.deleteMarketing(id);
        return Result.success();
    }
} 