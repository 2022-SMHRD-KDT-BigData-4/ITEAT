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
	public int insertSB(StudyBoard sb) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.iteat.domain.StudyBoardDAO.insertSB",sb);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	return cnt;
	}
	public StudyBoard selectSB(int num) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		StudyBoard sb = null;
		try {
			sb = sqlSession.selectOne("com.iteat.domain.StudyBoardDAO.selectSB",num);
			if(sb!=null){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return sb;
	}
}
