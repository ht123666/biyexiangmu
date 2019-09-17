package sz.publicModel.configuration;

import java.io.IOException;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

@Configuration
@PropertySource(value = "classpath:conn.properties")
public class MybatisConfig {
	@Value("${mydriver}")
	private String mydriver;
	@Value("${myurl}")
	private String myurl;
	@Value("${myuser}")
	private String myuser;
	@Value("${mypsw}")
	private String mypsw;
	@Autowired
	private BasicDataSource dataSource;
	
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName(mydriver);
		dataSource.setUrl(myurl);
		dataSource.setUsername(myuser);
		dataSource.setPassword(mypsw);
		return dataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(dataSource);
		ResourcePatternResolver rs = new PathMatchingResourcePatternResolver();
//		sqlSessionFactory.setConfigLocation(rs.getResource(""));
		sqlSessionFactory.setMapperLocations(rs.getResources("classpath:mybatis/*.xml"));
		return sqlSessionFactory.getObject();
	}
	
	
	
	
}
