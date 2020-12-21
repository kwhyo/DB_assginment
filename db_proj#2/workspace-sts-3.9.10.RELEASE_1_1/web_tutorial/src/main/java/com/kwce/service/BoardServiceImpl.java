package com.kwce.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kwce.dao.BoardDAO;
import com.kwce.domain.BoardVO;
import com.kwce.domain.Criteria;
import com.kwce.domain.SearchCriteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO dao;
	
	@Override
	public void regist(BoardVO board) throws Exception {
		dao.create(board);// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO read(Integer m_ID) throws Exception {
		// TODO Auto-generated method stub
		dao.updateViewCnt(m_ID);
		return dao.read(m_ID);
	}



	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Integer m_ID) throws Exception {
		dao.delete(m_ID);// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardVO> listAll(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(criteria);
	}
	@Override
	public List<BoardVO> listAnima(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAnima(criteria);
	}
	
	public List<BoardVO> listDrama(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listDrama(criteria);
	}
	
	public List<BoardVO> listSF(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSF(criteria);
	}
	
	public List<BoardVO> listActor20(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listActor20(criteria);
	}
	
	public List<BoardVO> listActor30(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listActor30(criteria);
	}
	
	public List<BoardVO> listActor40(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listActor40(criteria);
	}
	
	public List<BoardVO> listJGcgv(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listJGcgv(criteria);
	}
	
	public List<BoardVO> listNWlt(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listNWlt(criteria);
	}
	
	public List<BoardVO> listMAcgv(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return dao.listMAcgv(criteria);
	}
	
  @Override
   public List<BoardVO> read_actor(String a_name) throws Exception {
      // TODO Auto-generated method stub
      return dao.read_actor_movie(a_name);
   }
	
	@Override
	public List<BoardVO> listCriteria(Criteria criteria)throws Exception{
		return dao.listCriteria(criteria);
	}
	@Override
	public int countBoard(Criteria criteria)throws Exception{
		return dao.countBoard(criteria);
	}
	@Override
    public int listCount(SearchCriteria criteria) throws Exception {
        return dao.listCount(criteria);
    }
	@Override
    public List<BoardVO> list(SearchCriteria criteria) throws Exception {
        return dao.list(criteria);
    }

	
}