package com.wfh.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.wfh")
@EnableWebMvc
@EnableTransactionManagement

// Load to Environment.
@PropertySources({ @PropertySource("classpath:ds/datasource-cfg.properties") })

public class ApplicationContextConfig implements WebMvcConfigurer {

	@Autowired
	private Environment env;

	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");

		return viewResolver;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/css");
	}

	

	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		// See: datasouce-cfg.properties
		dataSource.setDriverClassName(env.getProperty("ds.database-driver"));
		dataSource.setUrl(env.getProperty("ds.url"));
		dataSource.setUsername(env.getProperty("ds.username"));
		dataSource.setPassword(env.getProperty("ds.password"));

		System.out.println("## getDataSource: " + dataSource);

		return dataSource;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) throws Exception {
		Properties properties = new Properties();

		// See: application.properties
		properties.put("hibernate.dialect", env.getProperty("hibernate.dialect"));
		properties.put("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
		properties.put("current_session_context_class", //
				env.getProperty("hibernate.packagesToScan"));

		// Fix Postgres JPA Error:
		// Method org.postgresql.jdbc.PgConnection.createClob() is not yet implemented.
		// properties.put("hibernate.temp.use_jdbc_metadata_defaults",false);

		LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();

		// Package contain entity classes
		factoryBean.setPackagesToScan(new String[] { "" });
		factoryBean.setDataSource(dataSource);
		factoryBean.setHibernateProperties(properties);
		factoryBean.afterPropertiesSet();
		//
		SessionFactory sf = factoryBean.getObject();
		System.out.println("## getSessionFactory: " + sf);
		return sf;
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

		return transactionManager;
	}

}
