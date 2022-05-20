package com.iteat.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.iteat.domain.Message;
import com.iteat.database.SqlSessionManager;

public class MessageDAO {
	SqlSessionFactory SqlSessionFactory = SqlSessionManager.getSqlSession();

	
	public int insertMessage(Message ms_vo) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.iteat.domain.MessageDAO.insertMessage",ms_vo);
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
	public List<Message> selectSendMessage(String email) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		List<Message> messageList = null;
		try {
			
			messageList = sqlSession.selectList("com.iteat.domain.MessageDAO.selectSendMessage",email);
			
			if(messageList!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return messageList;
	}
	public List<Message> selectReceiveMessage(String email) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		List<Message> messageList = null;
		try {
			
			messageList = sqlSession.selectList("com.iteat.domain.MessageDAO.selectReceiveMessage",email);
			
			if(messageList!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return messageList;
	}
	
	public int deleteReceiveMessage(int msg_seq) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.iteat.domain.MessageDAO.deleteReceiveMessage", msg_seq);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	public int deleteAllMessage(String msg_receiver) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.iteat.domain.MessageDAO.deleteAllMessage", msg_receiver);
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
