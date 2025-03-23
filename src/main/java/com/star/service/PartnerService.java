package com.star.service;

import com.star.entity.Partner;
import java.util.List;

public interface PartnerService {
    List<Partner> getPartnerList(String keyword, Integer partnerType);
    Partner getById(Long id);
    void savePartner(Partner partner);
    void updatePartner(Partner partner);
    void deletePartner(Long id);
} 