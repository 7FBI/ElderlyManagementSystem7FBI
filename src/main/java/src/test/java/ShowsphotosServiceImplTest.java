package src.test.java;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bean.ShoppingCart;
import com.bean.Showsphotos;
import com.bean.Stormproducts;
import com.service.ClassificationService;
import com.service.ShoppingCartService;
import com.service.ShowsphotosService;
import com.service.StormproductsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:cfg/applicationContext.xml")

public class ShowsphotosServiceImplTest {

	@Autowired
	@Qualifier("showsphotosService")
	private ShowsphotosService showsphotosService;

	
	@Autowired
	@Qualifier("stormproductsService")
	private StormproductsService stormproductsService;
	
	@Autowired
	@Qualifier("shoppingCartService")
	private ShoppingCartService shoppingCartService;
	
	@Test
	public void Bypid(){
		List<Showsphotos> photos=null; 
		photos=showsphotosService.selectBypid(14);
		for(Showsphotos photo:photos){
			System.out.println(photo.getImage());
		}      
	}
	
	@Test
	public void insert(){
		ShoppingCart shop=null;
		shop.setPid(5);
		shop.setUid("pxj123");
		shop.setCartcount(2);
		shoppingCartService.insertSelective(shop);
	}
	
	@Test
	public void selectsStorm(){
		 ShoppingCart shtorm=null;
		 shtorm.setPid(8);
		 shtorm.setUid("wbq123");
		 int fv=shoppingCartService.insertByaproduvts(shtorm);
		 System.out.println(fv);
		}
}
