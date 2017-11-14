package com.service;

import com.bean.Shoppingcart;

public interface ShoppingcartService {
	
    public void deleteByPrimaryKey(Integer id); //根据id删除购物车对象
    
    public void  insertSelective(Shoppingcart record);  //插入购物车对象
    
    public  Shoppingcart selectByPrimaryKey(Integer id);  //根据id查询购物车对象
    
    public int insertByaproduvts(Shoppingcart record); //根据用户账号和商品id去购物表里面查询记录 即是看购物表里面是否已经存在这个购物车

    public void updateAddproducts(Shoppingcart record);   ////根据用户账号和商品id增加购物车中该条记录的商品数量
}
