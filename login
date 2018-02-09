package intermediate;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;


public class login {
	WebDriver driver;

	@Before
	public void setup() {
		System.setProperty("webdriver.gecko.driver",
				"C:\\Users\\Joshu\\Downloads\\geckodriver-v0.19.1-win64\\geckodriver.exe");
		driver = new FirefoxDriver();

	}
	
	@Test
	public void test() {
		
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		driver.get("https://www.thedemosite.co.uk/addauser.php");
		driver.manage().window().maximize();
		driver.findElement(By.name("username")).sendKeys("sammy");
		driver.findElement(By.name("password")).sendKeys("ffff");
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		driver.findElement(By.name("FormsButton2")).click();
		System.out.println("user created");
	}

	@Test
	public void test2() {
		
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);

		driver.get("https:www.thedemosite.co.uk/login.php");

		driver.manage().window().maximize();

		driver.findElement(By.name("username")).sendKeys("sammy");

		driver.findElement(By.name("password")).sendKeys("ffff");
		// Wait For Page To Load
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		// Click on 'Sign In'
		driver.findElement(By.name("FormsButton2")).click();
		System.out.println("attempted login");
		
		
		
	}
	
	
	
	
	@After
	public void tearDown() {
		try {
			driver.close();
		} catch (Exception ex) {
			System.out.println(ex.toString());
		}
	}
}
