package com.kwce.service;

import java.util.List;
import com.kwce.domain.BoardVO;
import com.kwce.domain.Criteria;
import com.kwce.domain.SearchCriteria;

public interface BoardService{
	
	public void regist(BoardVO board)throws Exception;
	
	public BoardVO read(Integer bno)throws Exception;
	
	public void modify(BoardVO board)throws Exception;
	
	public void remove(Integer bno)throws Exception;
	
	public List<BoardVO>listAll(Criteria criteria)throws Exception;
	
	public List<BoardVO>listAnima(Criteria criteria)throws Exception;
	
	public List<BoardVO>listDrama(Criteria criteria)throws Exception;
	
	public List<BoardVO>listSF(Criteria criteria)throws Exception;
	
	public List<BoardVO>listActor20(Criteria criteria)throws Exception;
	
	public List<BoardVO>listActor30(Criteria criteria)throws Exception;
	
	public List<BoardVO>listActor40(Criteria criteria)throws Exception;
	
	public List<BoardVO>listJGcgv(Criteria criteria)throws Exception;
	
	public List<BoardVO>listNWlt(Criteria criteria)throws Exception;
	
	public List<BoardVO>listMAcgv(Criteria criteria)throws Exception;
	
	public List<BoardVO>listCriteria(Criteria criteria)throws Exception;

	public int countBoard(Criteria criteria)throws Exception;
	
	public List<BoardVO> list(SearchCriteria criteria) throws Exception;
	
	public int listCount(SearchCriteria criteria) throws Exception;
	
	public List<BoardVO> read_actor(String a_name) throws Exception;

	
	
}