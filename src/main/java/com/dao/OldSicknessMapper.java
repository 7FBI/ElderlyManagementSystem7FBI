package com.dao;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bean.OldSickness;
@Repository("oldSicknessMapper")
public interface OldSicknessMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    int insert(OldSickness record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    int insertSelective(OldSickness record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    OldSickness selectByPrimaryKey(Integer id);
    List<OldSickness> selectOldSicknessByoldDiseasedetailIid(Integer oldDiseasedetail_id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(OldSickness record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(OldSickness record);

    void deleteOldSicknessByoldDiseasedetailId(Integer detailid);
    
}