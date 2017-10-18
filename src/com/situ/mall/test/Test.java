package com.situ.mall.test;

import org.hamcrest.Condition;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.situ.mall.dao.ProductMangerDao;
import com.situ.mall.pojo.Product;
import com.situ.mall.vo.FindByCondition;

public class Test {

	@org.junit.Test
	public void test() {
		 ApplicationContext applicationContext =
		           new ClassPathXmlApplicationContext("applicationContext.xml");
		    // 从容器中获取bean
		 ProductMangerDao productMangerDao = (ProductMangerDao)applicationContext.getBean("productMangerDao");
		   
		int a =  productMangerDao.totalCountCondition(new FindByCondition(), 100007);
		System.out.println(a);
	}
}
