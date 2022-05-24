package com.iteat.domain;

import java.util.List;

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
	public List<SBComment> selectSBComm(int num){
		SqlSession sqlSession = SqlSessionFactory.openSession();
		List<SBComment> SBCList = null;
			try {
				SBCList = sqlSession.selectList("com.iteat.domain.SBCommentDAO.selectSBComm", num);
				if(SBCList!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		return SBCList;
	}
	public int deleteSBC(int num) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.iteat.domain.SBCommentDAO.deleteSBC",num);
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
