package src.test.java;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bean.Orderdetails;
import com.service.OldUsersService;
import com.service.OrderdetailsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:cfg/applicationContext.xml")
public class OldUsersServiceImplTest {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	
	@Autowired
	@Qualifier("orderdetailsService")
	private OrderdetailsService orderdetailsService;

	@Test
	public void testQueryUsers() {
		List<Orderdetails> list=new ArrayList<Orderdetails>();
		//List<Integer> list2=null;
		Orderdetails orderdetails=new Orderdetails();
		orderdetails.setOid("fsdgfhgjfdhgsafrtdyhgdfz");
		orderdetails.setOrdercount(3);
		orderdetails.setPid(3);
		list.add(orderdetails);
		Orderdetails orderdetails2=new Orderdetails();
		orderdetails2.setOid("fsdgfhgjfdhgsafrtdyhgdfz");
		orderdetails2.setOrdercount(5);
		orderdetails2.setPid(2);
		list.add(orderdetails2);
		Orderdetails orderdetails21=new Orderdetails();
		orderdetails21.setOid("fsdgfhgjfdhgsafrtdyhgdfz");
		orderdetails21.setOrdercount(15);
		orderdetails21.setPid(1);
		list.add(orderdetails21);
		int d=orderdetailsService.insertSelectiveList(list);
		System.out.println(">>>>>>>>>>>>>>>>>>.."+d);
		System.out.println("---------------------------------------------------------");
		for (Orderdetails orderdetails3 : list) {
			System.out.println("------------------->>>"+orderdetails3.getId());
		}
		System.out.println("---------------------------------------------------------");
	}

}
