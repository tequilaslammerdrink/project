package com.star.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Contract;
import com.star.mapper.ContractMapper;
import com.star.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContractServiceImpl implements ContractService {

    @Autowired
    private ContractMapper contractMapper;

    @Override
    public Page<Contract> getContractList(Integer pageNum, Integer pageSize, Long artistId) {
        Page<Contract> page = new Page<>(pageNum, pageSize);
        LambdaQueryWrapper<Contract> wrapper = new LambdaQueryWrapper<>();
        if (artistId != null) {
            wrapper.eq(Contract::getArtistId, artistId);
        }
        wrapper.orderByDesc(Contract::getCreateTime);
        return contractMapper.selectPage(page, wrapper);
    }

    @Override
    public Contract getContractById(Long id) {
        return contractMapper.selectById(id);
    }

    @Override
    public void saveContract(Contract contract) {
        // 生成合同编号
        contract.setContractNo(generateContractNo());
        contractMapper.insert(contract);
    }

    @Override
    public void updateContract(Contract contract) {
        contractMapper.updateById(contract);
    }

    @Override
    public void deleteContract(Long id) {
        contractMapper.deleteById(id);
    }

    private String generateContractNo() {
        // 生成合同编号: HT + 年月日 + 6位随机数
        return "HT" + System.currentTimeMillis() + String.format("%06d", (int)(Math.random() * 1000000));
    }
} 