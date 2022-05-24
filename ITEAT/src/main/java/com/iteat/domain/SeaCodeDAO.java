package com.iteat.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.iteat.database.SqlSessionManager;

public class SeaCodeDAO {
	
	SqlSessionFactory SqlSessionFactory = SqlSessionManager.getSqlSession();

	// 글등록 - insert
	public int insertSC(SeaCode sc) {

		SqlSession sqlSession = SqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.iteat.domain.SeaCodeDAO.insertSC", sc);
			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;

	}
	
	
	// 리스트 보기 -selectList
	public List<SeaCode> selectSeaCode(String code_nick){

		SqlSession sqlSession = SqlSessionFactory.openSession();
		List<SeaCode> scList = null;
		try {
			scList = sqlSession.selectList("com.iteat.domain.SeaCodeDAO.selectSeaCode", code_nick);
			if(scList!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return scList;
	}
	
	
	
	// 글 상세보기 - select
	public SeaCode selectSC(int codeSeq) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		SeaCode sc = null;
		try {
			sc = sqlSession.selectOne("com.iteat.domain.SeaCodeDAO.selectSC", codeSeq);
			if (sc != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return sc;

	}
		
		
	// 글 갯수 - count
	public int countSC(String code_nick) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		int code_count = 0;
		try {
			
			code_count = sqlSession.selectOne("com.iteat.domain.SeaCodeDAO.countSC", code_nick);
			
			if(code_count>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		} return code_count;
	}
		
}
