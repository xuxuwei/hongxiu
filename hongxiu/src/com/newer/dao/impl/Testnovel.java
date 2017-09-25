package com.newer.dao.impl;

import java.util.List;

import com.newer.pojo.Novel;

public class Testnovel {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Novel novel = new Novel();
NovelDAO dao =new NovelDAO();

novel.setType("最新小说");
System.out.println("a897a");
List<Novel> results = dao.findByType(novel);
	for (Novel novel2 : results) {
		System.out.println(novel2);
	}

	}}
