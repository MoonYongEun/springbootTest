package com.example.demo.service;

import java.util.List;
import java.util.Map;

import com.example.demo.model.IndexDTO;


public interface IndexService {
	public void insert(Map<String,String>map);

	public List<IndexDTO> selectList();

	public void delete(String seq);

	public IndexDTO modifySearch(String name);

	public void modifyUpdate(Map<String, String> map);

}
