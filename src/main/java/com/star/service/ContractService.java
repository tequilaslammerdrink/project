package com.star.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Contract;

public interface ContractService {
    Page<Contract> getContractList(Integer pageNum, Integer pageSize, Long artistId);
    Contract getContractById(Long id);
    void saveContract(Contract contract);
    void updateContract(Contract contract);
    void deleteContract(Long id);
} 