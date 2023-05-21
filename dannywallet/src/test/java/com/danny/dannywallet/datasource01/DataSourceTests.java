package com.danny.dannywallet.datasource01;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/mybatis-context.xml")
@Log4j
public class DataSourceTests {
	
	
	@Setter(onMethod_ = {@Autowired})
	private SqlSessionTemplate sqlSession;
	
	@Test
	public void checkMybatis() {
		
		Connection conn = sqlSession.getConnection();
		log.info(conn); // 커넥션풀에서 커넥션 제대로 가져왔는지
		log.info(sqlSession); // sqlsession 제대로 작동하는지 
		
	}
}
