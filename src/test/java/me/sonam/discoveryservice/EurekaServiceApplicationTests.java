package me.sonam.discoveryservice;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class EurekaServiceApplicationTests {

	@Test
	void contextLoads() {
	}

	@BeforeAll
	static void loadProperty() {
		System.setProperty("EUREKA_USER", "test");
		System.setProperty("EUREKA_PASSWORD", "test");
	}
}
