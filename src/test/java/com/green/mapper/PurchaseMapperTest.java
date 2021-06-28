package com.green.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.green.domain.PurchaseVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class PurchaseMapperTest {

	@Autowired
	private PurchaseMapper mapper;
	
	@Test
	public void 등록() {
		
		PurchaseVO vo = new PurchaseVO();
		
		String orderid = "123124";
		String userid = "1";
		Long gno = 1L;
		
		vo.setOrderid(orderid);
		vo.setUserid(userid);
		vo.setGno(gno);
		
		mapper.insert(vo);
		
		
		
	}
	
	@Test
	public void 더미데이터삽입() {
		
		PurchaseVO vo = new PurchaseVO();
		
		String userid = "1";
		
		for(int i=0 ; i<5 ; i++){
		
			vo.setOrderid( String.valueOf(1000 + i));
			vo.setUserid(userid);
			vo.setGno(Long.valueOf(i + 1));
			
			mapper.insert(vo);
		}
	}
	
	@Test
	public void 삭제() {
		
		mapper.delete(1L);
		
	}
	
	@Test
	public void 목록조회() {
		
		mapper.getList("1").forEach(i-> System.out.println(i));
		
	}
}
