package rva;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import rva.jpa.Klijent;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.VendorExtension;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@EnableSwagger2
@Configuration
public class Swagger {/*

	public static final Contact DEFAULT_CONTACT = new Contact("Marko Staka", "https://github.com/staka-marko","staka.99@uns.ac.rs");
				
	public static final ApiInfo DEFAULT_API_INFO = new ApiInfo("Backend RVA Swagger ",
			"Razvoj viseslojnih aplikacija", "1.0", "", DEFAULT_CONTACT, "", "",
			new ArrayList<VendorExtension>());

	@Bean
	Docket api() {
	return new Docket(DocumentationType.SWAGGER_2).select().
	apis(RequestHandlerSelectors.basePackage("rva")).build().apiInfo(DEFAULT_API_INFO);
	}
	
	
	@RestController
	@Api(tags = {"Klijent CRUD operacije"})
	public class KlijentRestController {}
	
	@GetMapping("klijent")
	@ApiOperation(value = "Vraća kolekciju svih klijenata iz baze podataka")
	public void getKlijenti() {}
	
	@RestController
	@Api(tags = {"Kredit CRUD operacije"})
	public class KreditRestController {}
	
	@GetMapping("kredit")
	@ApiOperation(value = "Vraća kolekciju svih kredita iz baze podataka")
	public void getKrediti() {}
	
	
	@RestController
	@Api(tags = {"Racun CRUD operacije"})
	public class RacunRestController {}
	
	@GetMapping("racun")
	@ApiOperation(value = "Vraća kolekciju svih racuna iz baze podataka")
	public void getRacuni() {}
	
	@RestController
	@Api(tags = {"Tip Racuna CRUD operacije"})
	public class TipRacunaRestController {}
	
	@GetMapping("tip_racuna")
	@ApiOperation(value = "Vraća kolekciju svih tipova racuna iz baze podataka")
	public void getTipoviRacuna() {}*/

}
