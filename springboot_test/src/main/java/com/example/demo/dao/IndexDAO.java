package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import com.example.demo.model.IndexDTO;

public interface IndexDAO {

	public void insert(Map<String, String> map);

	public List<IndexDTO> selectList();

	public void delete(String seq);

}
