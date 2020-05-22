package com.xing.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MyBatisUtil {
	//在当前线程上绑定sqlsession
	private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<>();
	
	//
	private static SqlSessionFactory factory = null;
	static{
		try {
			InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(inputStream);
			inputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	//获取session
	public static SqlSession getSession() {
		//从当前线程上去拿session
		SqlSession session = threadLocal.get();
		if (session==null) {
			session = factory.openSession();//创建一个线程
			//将session绑定到当前线程上
			threadLocal.set(session);
		}
		return session;
	}
	
	//关闭session
	public static void close() {
		//获取session
		SqlSession session = threadLocal.get();
		if (session!=null) {
			//从线程上解绑
			threadLocal.remove();
			//关闭session
			session.close();
		}
	}
}
