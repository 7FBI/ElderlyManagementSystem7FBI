package com.service;

import java.util.List;

import com.bean.Localarea;

public interface LocalAreaService {
public void updateLocalAreaById(Localarea localArea);
public void deleteLocalAreaById(Localarea localArea);
public void addLocalArea(Localarea localArea);
public List<Localarea> findAllLocalArea();
public List<Localarea> findLocalAreaByRecord(Localarea localArea);

}
