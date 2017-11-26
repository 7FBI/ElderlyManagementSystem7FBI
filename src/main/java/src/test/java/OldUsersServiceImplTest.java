package src.test.java;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bean.OldUsers;
import com.bean.Orderdetails;
import com.bean.Remarkpicture;
import com.bean.ShoppingCart;
import com.service.OldUsersService;
import com.service.OrderdetailsService;
import com.service.RemarkpictureService;
import com.service.ShoppingCartService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:cfg/applicationContext.xml")
public class OldUsersServiceImplTest {
	@Autowired
	@Qualifier("shoppingCartService")
	private ShoppingCartService shoppingCartService;
	
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	
	@Autowired
	@Qualifier("orderdetailsService")
	private OrderdetailsService orderdetailsService;
	
	@Autowired
	@Qualifier("remarkpictureService")
	private RemarkpictureService remarkpictureService;

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
	
	@Test
	public void insertRemark(){
		Map<String, List<Remarkpicture>> map=new HashMap<String, List<Remarkpicture>>();
		List<Remarkpicture> list=new ArrayList<Remarkpicture>();
		for (int i = 0; i < 2; i++) {
			Remarkpicture remarkpicture=new Remarkpicture();
			remarkpicture.setOpinionid(1);
			remarkpicture.setRemarkurl("/front/oldUsers/image/oldusers.jpg");
			list.add(remarkpicture);
		}
		map.put("list", list);
		remarkpictureService.insertRemarkpictureList(map);
		for (Remarkpicture remarkpicture : list) {
			System.out.println("-------------------->>id:"+remarkpicture.getId());
		}
	}
	
	
	@Test
	public void ShopTest(){
		List<Integer> pids=new ArrayList<Integer>();
		for (int i = 1; i <= 2; i++) {
			pids.add(i);
		}
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("list", pids);
		map.put("uid", "clong123");
		List<ShoppingCart> sList=shoppingCartService.selectByaproduvtsList(map);
		List<Integer> integers=new ArrayList<Integer>();
		System.out.println("--------->>><<<----------");
		for (ShoppingCart ShoppingCart : sList) {
			System.out.println("----------------->商品id:"+ShoppingCart.getPid());
			System.out.println("----------------->商品数量:"+ShoppingCart.getCartcount());
			integers.add(ShoppingCart.getId());
		}
		System.out.println("--------->>><<<----------");
		map.put("list", integers);
		shoppingCartService.deleteByPrimaryKeyList(map);
		List<ShoppingCart> sList2=shoppingCartService.selectByaproduvtsList(map);
		System.out.println("--------->>><<<----------");
		for (ShoppingCart ShoppingCart : sList2) {
			System.out.println("----------------->商品id:"+ShoppingCart.getPid());
			System.out.println("----------------->商品数量:"+ShoppingCart.getCartcount());
		}
		System.out.println("--------->>><<<----------");
	}

}
