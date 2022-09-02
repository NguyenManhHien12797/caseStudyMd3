package com.example.caseStudyMd3.service.interfaceService;

import com.example.caseStudyMd3.model.Brand;
import com.example.caseStudyMd3.service.IGeneralService;

public interface IBrandService extends IGeneralService {
    boolean add(Brand brand);

    boolean update(int id, Brand brand);
}
