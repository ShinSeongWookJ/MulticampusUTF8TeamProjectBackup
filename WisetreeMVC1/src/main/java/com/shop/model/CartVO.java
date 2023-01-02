package com.shop.model;

import lombok.Data;

@Data
public class CartVO {
	
	private int cartNo; //장바구니 번호
	private int idx; //회원 번호
	private int ItemNo; //상품 번호 
	private int count; //수량 
	private java.sql.Date indate;
	
	//장바구니안 상품 정보 
	private String itemName;
	private String itemImage1;
	
	private int price;
	private int saleprice;
	private int point;
	
	private int totalPrice; //saleprice*count =>상품 당 총가격합계 
	private int totalPoint; //point*count => 상품 당 총포인트 합
	
	private int carttotalPrice; //장바구니 총액 합계 
	private int carttotalPoint;//장바구니 포인트 합계 
}
