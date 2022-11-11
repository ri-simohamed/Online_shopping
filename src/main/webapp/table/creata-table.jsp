<%@page import="com.rami.connection.DbCon"%>
<%@page import="java.sql.*"%>
<%

try{
	
	Connection con = DbCon.getConnection();
	Statement st = con.createStatement();
	String q1 = "create table phone(category varchar(200)primary key, serie varchar(200), price DOUBLE, description varchar(200),image varchar(200))";
	String q2 = "create table users (email varchar(222), password varchar(222))";
	System.out.print(q2);
	st.execute(q2);
	System.out.println("Table Created");
	
}catch(Exception e){
	
	System.out.print(e);
	
}

%>