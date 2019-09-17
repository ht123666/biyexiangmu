package sz.publicModel.configuration;

import java.util.Arrays;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@AutoConfigureAfter(value = MybatisConfig.class)
public class SpringConfig {
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	
	@Bean
	public MapperScannerConfigurer mapperScanner() {
		MapperScannerConfigurer ms = new MapperScannerConfigurer();
		ms.setSqlSessionFactoryBeanName("sqlSessionFactory");
		ms.setBasePackage("sz.publicModel.dao");
		return ms;
	}
	
	
//	@Bean
	public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
	    return args -> {
	        System.out.println("以下是spring创建好的依赖：");
	        String[] beanNames = ctx.getBeanDefinitionNames();
	        Arrays.sort(beanNames);
	        for (String beanName : beanNames) {
	            System.out.println(beanName);
	        }
	    };
	}
	
}
