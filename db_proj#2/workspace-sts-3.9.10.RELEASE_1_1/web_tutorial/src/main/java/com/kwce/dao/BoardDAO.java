package com.kwce.dao;
import java.util.List;
import com.kwce.domain.BoardVO;
import com.kwce.domain.Criteria;
import com.kwce.domain.SearchCriteria;

public interface BoardDAO{
   
	public List<BoardVO> read_actor_movie(String a_name) throws Exception;
	
	public void create(BoardVO vo) throws Exception;
   
   public BoardVO read(Integer bno)throws Exception;
   
   public void update(BoardVO vo)throws Exception;    
   
   public void delete(Integer bno)throws Exception;
   
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
 
   public void updateViewCnt(Integer bno)throws Exception;
   
   public void updatePcheck(Integer bno)throws Exception;
   
   public List<BoardVO>listPaging(int page)throws Exception;
   
   public List<BoardVO>listCriteria(Criteria criteria)throws Exception;
   
   public int countBoard(Criteria criteria)throws Exception;
   
   public List<BoardVO> list(SearchCriteria criteria) throws Exception;
   
   public int listCount(SearchCriteria criteria) throws Exception;
}