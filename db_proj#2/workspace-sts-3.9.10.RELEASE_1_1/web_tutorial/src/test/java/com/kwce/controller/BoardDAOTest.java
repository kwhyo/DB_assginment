package com.kwce.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.kwce.dao.BoardDAO;
import com.kwce.domain.BoardVO;
import com.kwce.domain.Criteria;

import java.util.List;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {
	@Autowired
	private BoardDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	@Test
	public void testCreate()throws Exception {
		for(int i = 1; i < 100; i++) {
		BoardVO board = new BoardVO();
		board.setBno(i);
		board.setTitle(i + "번째 글 제목 입니다.");
		board.setContent(i + "번째 글 내용입니다.");
		board.setWriter("20157220"+i);
		dao.create(board);
		}
	}
	@Test @Ignore
	public void testDelete()throws Exception{
	dao.delete(1);	
	}
	@Test @Ignore
	public void testListPaging() throws Exception{
		int page = 1;
		List<BoardVO> boards = dao.listPaging(page);
		for(BoardVO board : boards) {
			logger.info(board.getBno() + ":" + board.getTitle());
		}
	}
	@Test @Ignore
	public void testListCriteria()throws Exception{
		Criteria criteria = new Criteria();
		criteria.setPage(1);
		criteria.setPerPageNum(15);
		 
		List<BoardVO> boards = dao.listCriteria(criteria);
		for(BoardVO board : boards) {
			logger.info(board.getBno() + " : " + board.getTitle());
		}
	}


}
