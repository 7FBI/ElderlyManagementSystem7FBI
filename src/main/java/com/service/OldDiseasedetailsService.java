package com.service;


import java.util.List;

import com.bean.OldDiseasedetails;

public interface OldDiseasedetailsService {	
   public OldDiseasedetails selectByPrimaryKey(Integer id);

 List<OldDiseasedetails> selectOldDiseasedetailsByUid(String uid);
}
