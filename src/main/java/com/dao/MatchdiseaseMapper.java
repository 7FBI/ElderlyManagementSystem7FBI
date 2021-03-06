package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bean.Matchdisease;
import com.bean.OldDiseasedetails;
@Repository("matchdiseaseMapper")
public interface MatchdiseaseMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table matchdisease
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);
    public List<Matchdisease> queryProductByUid(String uid);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table matchdisease
     *
     * @mbggenerated
     */
    int insert(Matchdisease record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table matchdisease
     *
     * @mbggenerated
     */
    int insertSelective(Matchdisease record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table matchdisease
     *
     * @mbggenerated
     */
    Matchdisease selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table matchdisease
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Matchdisease record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table matchdisease
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Matchdisease record);
    List<Matchdisease> selectProductByDiseasesId(Integer did);
    //病历详情
    public List<Matchdisease> queryOldUserDiseaseDetails(String uid);
	List<Matchdisease> selectByDiseasesId(Integer id);
}