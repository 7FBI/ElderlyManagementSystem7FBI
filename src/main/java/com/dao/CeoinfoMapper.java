package com.dao;

import com.bean.Ceoinfo;

public interface CeoinfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ceoinfo
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ceoinfo
     *
     * @mbggenerated
     */
    int insert(Ceoinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ceoinfo
     *
     * @mbggenerated
     */
    int insertSelective(Ceoinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ceoinfo
     *
     * @mbggenerated
     */
    Ceoinfo selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ceoinfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Ceoinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ceoinfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Ceoinfo record);

	Ceoinfo selectCeoinfoByName(String name);
}