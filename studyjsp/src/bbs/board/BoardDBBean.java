package bbs.board;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
//dbct 참조를 위해 3가지 인폴트

public class BoardDBBean {

	private static BoardDBBean instance = new BoardDBBean();
	
	 //.jsp페이지에서 DB연동빈인 BoardDBBean클래스의 메소드에 접근시 필요
	public	static BoardDBBean getInstanc() {//getInstanc 으로 갔다가 쓸수있음
		return instance;// 한번 만들면 객체는 다른대서 못쓰고 생성된 객체하나로만 사용
	}
	private BoardDBBean() {}// 여기생성 안할시 public 자동생성\\
	
	 //커넥션풀로부터 Connection객체를 얻어냄 : DB연동빈의 쿼리문을 수행하는 메소드에서 사용
	private Connection getConnection() throws Exception{//빨간오류중 Exception 나올경우 throws Exception 작성
		Context initCtx =new InitialContext();
		Context envCtx =(Context)initCtx.lookup("java:comp/env");// 약속된것 미리작성되는부분
		DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptesto");//설정된이름 web xml 참조
		return ds.getConnection();
		
	}
	
}
