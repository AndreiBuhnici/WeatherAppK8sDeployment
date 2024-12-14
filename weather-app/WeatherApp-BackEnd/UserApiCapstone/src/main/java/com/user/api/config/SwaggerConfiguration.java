package com.user.api.config;

import java.util.Collections;

import org.springframework.context.annotation.Bean;

import springfox.documentation.builders.PathSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

public class SwaggerConfiguration {
	
	@Bean
	public Docket swaggerConfig()
	{
		return new Docket(DocumentationType.SWAGGER_2).
				select().paths(PathSelectors.ant("/user/**")).
				build().apiInfo(new ApiInfo("user API", "user-Api management system","1.0", "openweather.com",
						new Contact("Name", "Url", "info@pms.openweather.com"), "opensourse","openweather.com/licence", Collections.emptyList()));
	}
	

}
