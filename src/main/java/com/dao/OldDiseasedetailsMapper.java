package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bean.OldDiseasedetails;
@Repository("oldDiseasedetailsMapper")
public interface OldDiseasedetailsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_diseasedetails
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_diseasedetails
     *
     * @mbggenerated
     */
    int insert(OldDiseasedetails record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_diseasedetails
     *
     * @mbggenerated
     */
    int insertSelective(OldDiseasedetails record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_diseasedetails
     *
     * @mbggenerated
     */
    OldDiseasedetails selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_diseasedetails
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(OldDiseasedetails record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_diseasedetails
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(OldDiseasedetails record);

	List<OldDiseasedetails> selectOldDiseasedetailsByUid(String uid);

	void addOldDiseasedetail(OldDiseasedetails oldDiseasedetail);
	
}