package com.danny.dannywallet.datasource01;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/mybatis-context.xml")
@Log4j
public class DataSourceTests {
	
	
	@Setter(onMethod_ = { @Autowired })
	 private DataSource dataSource;
	
	//데이터풀의 커넥션 가져오기 완료
	@Test
	public void testConnection() {
		try {
			Connection conn = dataSource.getConnection();
			log.info(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
