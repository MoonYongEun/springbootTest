package com.example.demo.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IndexDAO;
import com.example.demo.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexDAO indexdao;


	@Override
	public void insert(Map<String, String> map) {
		indexdao.insert(map);
	}

}
