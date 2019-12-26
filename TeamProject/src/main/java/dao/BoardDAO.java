package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import model.BoardDTO;
@Repository
public class BoardDAO {
	@Autowired
	private SqlSession sqlsession;
	private static final String namespace = "boardMapper";
	
	public void insert(BoardDTO dto) throws Exception{
		sqlsession.insert(namespace+".insertBoard",dto);
	}
	
	public BoardDTO read(int boardId) throws Exception{
		return sqlsession.selectOne(namespace+".selectBoard", boardId);
	}
	
	public void update(@RequestParam BoardDTO dto) throws Exception{
		sqlsession.update(namespace+".updateBoard", dto);
	}
	
	public void delete(int boardId) throws Exception{
		sqlsession.delete(namespace+".deleteBoard", boardId);
	}
	
	public List<BoardDTO> listAll() throws Exception{
		return sqlsession.selectList(namespace+ ".allBoard");
	}
}
