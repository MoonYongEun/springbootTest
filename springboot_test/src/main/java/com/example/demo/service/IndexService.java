package com.example.demo.service;

import java.util.List;
import java.util.Map;

import com.example.demo.model.IndexDTO;


public interface IndexService {
	public void insert(Map<String,String>map);

	public List<IndexDTO> selectList();

}
