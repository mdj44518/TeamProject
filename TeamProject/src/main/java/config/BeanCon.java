package config;

import java.net.URI;

import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;

@Configuration
public class BeanCon {
	
	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		DataSource ds = new DataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://127.0.0.1:3306/book_ex");
		ds.setUsername("root");
		ds.setPassword("akdqhddl3#");
		ds.setInitialSize(2);
		ds.setMaxActive(10);
		ds.setTestWhileIdle(true);
		ds.setMinEvictableIdleTimeMillis(60000 * 3);
		ds.setTimeBetweenEvictionRunsMillis(10 * 1000);
		return ds;
	}
	
	@Bean
	public SqlSessionFactoryBean sqlSessionFactoryBean() throws NamingException {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource());
		sqlSessionFactoryBean.setConfigLocation((Resource)new InitialContext().lookup("classpath:/mybatis-config.xml"));
		Resource[] r = new Resource[1];
		r[0] = (Resource) ClassLoader.getSystemResourceAsStream("classpath*:mappers/BoardMapper.xml");
		sqlSessionFactoryBean.setMapperLocations(r);
		return sqlSessionFactoryBean;
	}
	
//	<bean id="sqlSession" class="org.mybatis.spring.SqlSessionTemplate" destroy-method="clearCache">
//	<constructor-arg name="sqlSessionFactory" ref="sqlSessionFactory"></constructor-arg> 
//	</bean>
	
	@Bean(destroyMethod = "clearCache")
	public SqlSessionTemplate sqlSessionTemplate() throws NamingException {
		return new SqlSessionTemplate((SqlSessionFactory) sqlSessionFactoryBean());
	}
}
