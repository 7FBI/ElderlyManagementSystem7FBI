package com.service;

import java.util.List;



import com.bean.OldSickness;


public interface OldSicknessService {
	public List<OldSickness> selectOldSicknesses(Integer oldDiseasedetail_id);
	public void insertSelective(OldSickness oldSickness);
	public void deleteOldSicknessByoldDiseasedetailId(Integer detailid);
	
	 public List<OldSickness> selectDiseaseAndDiseaseDetailsByDetailid(Integer id);

}
