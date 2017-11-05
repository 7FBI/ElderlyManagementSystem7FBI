package com.service;


import java.util.List;

import com.bean.OldDiseasedetails;

public interface OldDiseasedetailsService {	
   public OldDiseasedetails selectByPrimaryKey(Integer id);

 List<OldDiseasedetails> selectOldDiseasedetailsByUid(String uid);
 void addOldDiseasedetail(OldDiseasedetails oldDiseasedetail);
  public void deleteByPrimaryKey(Integer id);

public void updateByPrimaryKeySelective(OldDiseasedetails oldDiseasedetail);
}
