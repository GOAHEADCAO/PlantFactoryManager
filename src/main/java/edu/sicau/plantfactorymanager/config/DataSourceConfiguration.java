package edu.sicau.plantfactorymanager.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
//这个注解导入刚才增加的jdbc配置文件
@PropertySource("classpath:mysql.properties")
public class DataSourceConfiguration {
  @Value("${jdbc.driver}")
  private String driver;
  @Value("${jdbc.url}")
  private String url;
  @Value("${jdbc.username}")
  private String username;
  @Value("${jdbc.password}")
  private String password;
  @Value("${jdbc.initialSize}")
  private int initialSize;
  @Value("${jdbc.maxActive}")
  private int maxActive;
  @Value("${jdbc.maxWait}")
  private int maxWait;
  @Value("${jdbc.timeBetweenEvictionRunsMillis}")
  private int timeBetweenEvictionRunsMillis;
  @Value("${jdbc.minEvictableIdleTimeMillis}")
  private int minEvictableIdleTimeMillis;
  @Value("${jdbc.validationQuery}")
  private String validationQuery;
  @Value("${jdbc.testWhileIdle}")
  private boolean testWhileIdle;
  @Value("${jdbc.testOnBorrow}")
  private boolean testOnBorrow;
  @Value("${jdbc.testOnReturn}")
  private boolean testOnReturn;
  @Value("${jdbc.poolPreparedStatements}")
  private boolean poolPreparedStatements;
  @Value("${jdbc.maxPoolPreparedStatementPerConnectionSize}")
  private int maxPoolPreparedStatementPerConnectionSize;
  @Value("${jdbc.filters}")
  private String filters;

  
  @Bean
  public DruidDataSource dataSource(){
	  DruidDataSource dataSource = new DruidDataSource();
      //dataSource.setDriverClassName(driver);
      dataSource.setUrl(url);
      dataSource.setUsername(username);
      dataSource.setPassword(password);
      dataSource.setInitialSize(initialSize);
      dataSource.setMaxActive(maxActive);
      dataSource.setMaxWait(maxWait);
      dataSource.setTimeBetweenEvictionRunsMillis(timeBetweenEvictionRunsMillis);
      dataSource.setMinEvictableIdleTimeMillis(minEvictableIdleTimeMillis);
      dataSource.setValidationQuery(validationQuery);
      dataSource.setTestWhileIdle(testWhileIdle);
      dataSource.setTestOnBorrow(testOnBorrow);
      dataSource.setTestOnReturn(testOnReturn);
      dataSource.setPoolPreparedStatements(poolPreparedStatements);
      dataSource.setMaxPoolPreparedStatementPerConnectionSize(maxPoolPreparedStatementPerConnectionSize);
      //dataSource.setFilters(filters);
      return dataSource;
  }
}