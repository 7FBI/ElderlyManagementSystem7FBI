package com.service;

import org.springframework.stereotype.Service;
import com.bean.Oldcollection;

public interface OldCollectionService {
	int insert(Oldcollection record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collection
     *
     * @mbggenerated
     */
    int insertSelective(Oldcollection record);
    
    int delete(Oldcollection record);
    
    Oldcollection select(Oldcollection record);
}
