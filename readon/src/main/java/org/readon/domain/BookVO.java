package org.readon.domain;

public class BookVO {
	// 책 번호
	private int book_id;
	// 제목
	private String book_title;
	// 저자
	private String book_writer;
	// 출판사
	private String book_pub;
	// 출판일
	private String book_pubdate;
	// 책 이미지
	private String book_img;
	// 책 정보
	private String book_info;
	// 카테고리
	private String book_cat;
	// 가격
	private int book_price;
	// 판매량
	private int book_count;
	
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getBook_writer() {
		return book_writer;
	}
	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}
	public String getBook_pub() {
		return book_pub;
	}
	public void setBook_pub(String book_pub) {
		this.book_pub = book_pub;
	}
	public String getBook_pubdate() {
		return book_pubdate;
	}
	public void setBook_pubdate(String book_pubdate) {
		this.book_pubdate = book_pubdate;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	public String getBook_info() {
		return book_info;
	}
	public void setBook_info(String book_info) {
		this.book_info = book_info;
	}
	public String getBook_cat() {
		return book_cat;
	}
	public void setBook_cat(String book_cat) {
		this.book_cat = book_cat;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public int getBook_count() {
		return book_count;
	}
	public void setBook_count(int book_count) {
		this.book_count = book_count;
	}
	
	
	@Override
	public String toString() {
		return "BookVO [book_id=" + book_id + ", book_title=" + book_title + ", book_writer=" + book_writer
				+ ", book_pub=" + book_pub + ", book_pubdate=" + book_pubdate + ", book_img=" + book_img
				+ ", book_info=" + book_info + ", book_cat=" + book_cat + ", book_price=" + book_price + ", book_count="
				+ book_count + "]";
	}
	
	
	
}	


