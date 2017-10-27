package src.test.java;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.service.OldUsersService;

public class OldUsersServiceImplTest {
	@Autowired
	@Qualifier("oldUsersService")
private  OldUsersService  oldUsersService;
	@Test
	public void testQueryUsers() {
		
	}

}
