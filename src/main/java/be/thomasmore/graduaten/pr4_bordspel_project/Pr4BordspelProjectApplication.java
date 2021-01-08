package be.thomasmore.graduaten.pr4_bordspel_project;

import be.thomasmore.graduaten.pr4_bordspel_project.repository.GebruikerRepository;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackageClasses = GebruikerRepository.class)
public class Pr4BordspelProjectApplication {

    public static void main(String[] args) {
        SpringApplication.run(Pr4BordspelProjectApplication.class, args);
    }

}
