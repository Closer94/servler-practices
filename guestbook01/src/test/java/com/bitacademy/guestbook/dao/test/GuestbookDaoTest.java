package com.bitacademy.guestbook.dao.test;

import java.util.List;

import com.bitacademy.guestbook.dao.GuestbookDao;
import com.bitacademy.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		// insert test
		testInsert();

		// findAll test
		testFindAll();
	}

	public static void testInsert() {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("마이콜");
		vo.setPassword("1234");
		vo.setContents("안녕하세요. 마이콜입니다.");

		new GuestbookDao().insert(vo);
	}

	public static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for (GuestbookVo vo : list) {
			System.out.println(vo);
		}

	}

}
