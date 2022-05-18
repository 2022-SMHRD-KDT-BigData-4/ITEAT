package com.iteat.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.iteat.database.SqlSessionManager;

public class StudyBoardDAO {
	SqlSessionFactory SqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<StudyBoard> selectStudyBoard() {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		List<StudyBoard> sbList = null;
		try {
			sbList = sqlSession.selectList("com.iteat.domain.StudyBoardDAO.selectStudyBoard");
			if(sbList!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return sbList;
	}
}
