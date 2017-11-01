package com.dao;

import org.springframework.stereotype.Repository;

import com.bean.ManagerInfo;

@Repository("ManagerInfosMapper")
public interface ManagerInfoMapper {
  public ManagerInfo findManagerBynametype(String name);
}
