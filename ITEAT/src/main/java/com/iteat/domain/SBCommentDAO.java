package com.iteat.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.iteat.database.SqlSessionManager;

public class SBCommentDAO {
	SqlSessionFactory SqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertSBComm(SBComment sbc) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.iteat.domain.SBCommentDAO.insertSBComm",sbc);
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
}
