package com.iteat.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.iteat.database.SqlSessionManager;

public class UserInfoDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertUif(UserInfo uif) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.iteat.domain.UserInfoDAO.insertUif",uif);
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
	public boolean idCheck(String uif_id) {
	
		SqlSession sqlSession = sqlSessionFactory.openSession();
		boolean check = false; 
		try {
			String id2 = sqlSession.selectOne("com.iteat.domain.UserInfoDAO.idCheck",uif_id);
			if(id2!=null) {
				check = false;
				sqlSession.commit();
			}else {
				check = true;
				sqlSession.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return check;
	}
	public boolean nickCheck(String uif_nick) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		boolean check = false; 
		try {
			String nick2 = sqlSession.selectOne("com.iteat.domain.UserInfoDAO.nickCheck",uif_nick);
			if(nick2!=null) {
				check = false;
				sqlSession.commit();
			}else {
				check = true;
				sqlSession.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return check;
	}
}
