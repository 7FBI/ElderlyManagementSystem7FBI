package com.service;

import java.util.List;
import java.util.Map;

import com.bean.ShoppingCart;
//修改
public interface ShoppingCartService {
	
    public void deleteByPrimaryKey(Integer id); //根据id删除购物车对象
    
    public void  insertSelective(ShoppingCart record);  //插入购物车对象
    
    public  ShoppingCart selectByPrimaryKey(Integer id);  //根据id查询购物车对象
    
    public int insertByaproduvts(ShoppingCart record); //根据用户账号和商品id去购物表里面查询记录 即是看购物表里面是否已经存在这个购物车

    public void updateAddproducts(ShoppingCart record);   ////根据用户账号和商品id增加购物车中该条记录的商品数量
    ShoppingCart selectByaproduvts(ShoppingCart record);
    List<ShoppingCart> selectByaproduvtsList(Map map);
    int deleteByPrimaryKeyList(Map map);
}
