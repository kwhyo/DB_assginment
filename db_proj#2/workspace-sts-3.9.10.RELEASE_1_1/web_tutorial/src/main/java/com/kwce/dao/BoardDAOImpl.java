package com.kwce.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kwce.domain.BoardVO;
import com.kwce.domain.Criteria;
import com.kwce.domain.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO{
   
   @Autowired
   private SqlSession session;
   private static String namespace="com.kwce.mapper.BoardMapper";
   
   @Override
   public void create(BoardVO vo) throws Exception {
   session.insert(namespace+".create",vo);   // TODO Auto-generated method stub
   }

   @Override
   public BoardVO read(Integer m_ID) throws Exception {
      // TODO Auto-generated method stub
      return session.selectOne(namespace+".read",m_ID);
   }

   @Override
   public void update(BoardVO vo) throws Exception {
      session.update(namespace + ".update", vo);// TODO Auto-generated method stub
      
   }


   @Override
   public void delete(Integer m_ID) throws Exception {
      session.delete(namespace+".delete",m_ID);
      // TODO Auto-generated method stub
   }

   @Override
   public List<BoardVO> listAll(Criteria criteria) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".listCriteria",criteria);
   }
   
   @Override
   public List<BoardVO> listAnima(Criteria criteria) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".listAnima",criteria);
   }
   
   @Override
   public List<BoardVO> listDrama(Criteria criteria) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".listDrama",criteria);
   }
   
   @Override
   public List<BoardVO> listSF(Criteria criteria) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".listSF",criteria);
   }
   
   @Override
   public List<BoardVO> listActor20(Criteria criteria) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".listActor20",criteria);
   }
   
   @Override
   public List<BoardVO> listActor30(Criteria criteria) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".listActor30",criteria);
   }
   
   @Override
   public List<BoardVO> listActor40(Criteria criteria) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".listActor40",criteria);
   }
   
   public List<BoardVO> listJGcgv(Criteria criteria) throws Exception {
	      // TODO Auto-generated method stub
	      return session.selectList(namespace+".listJGcgv",criteria);
   }
   
   public List<BoardVO> listNWlt(Criteria criteria) throws Exception {
	      // TODO Auto-generated method stub
	      return session.selectList(namespace+".listNWlt",criteria);
   }
   
   public List<BoardVO> listMAcgv(Criteria criteria) throws Exception {
	      // TODO Auto-generated method stub
	      return session.selectList(namespace+".listMAcgv",criteria);
   }
   
   @Override
   public List<BoardVO> read_actor_movie(String a_name) throws Exception {
      return session.selectList(namespace+".readActor", a_name);
   }
   
   @Override
   public void updateViewCnt(Integer m_ID)throws Exception{
      session.update(namespace + ".updateViewCnt", m_ID);
   }
   @Override
   public void updatePcheck(Integer m_ID)throws Exception{
      session.update(namespace + ".updatePcheck", m_ID);
   }
   @Override
   public List<BoardVO> listPaging(int page)throws Exception{
      if(page<= 0) {
         page = 1;
      }
      page = (page - 1) * 10;
      return session.selectList(namespace + ".listPaging",page);
   }
   @Override
   public List<BoardVO> listCriteria(Criteria criteria)throws Exception{
      return session.selectList(namespace + ".listCriteria",criteria);
   }
   @Override
   public int countBoard(Criteria criteria)throws Exception{
      return session.selectOne(namespace + ".countBoard",criteria);
   }
    @Override
       public int listCount(SearchCriteria criteria) throws Exception {
           return session.selectOne(namespace + ".listSearchCount", criteria);
       }
    @Override
       public List<BoardVO> list(SearchCriteria criteria) throws Exception {
           return session.selectList(namespace + ".listPagingSearch", criteria);
      }
}