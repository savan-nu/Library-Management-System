<%-- 
    Document   : ShowDataReg
    Created on : 2 May, 2022, 1:47:45 AM
    Author     : it
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: left;
}

thead {
	th {
		background-color: #55608f;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}
.con{
    position: absolute;
    top : 70%;
    left: 50%;
}
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Data </title>
    </head>
    <body>
        <% 
            String username = request.getParameter("uname");
            String password = request.getParameter("pword");
            String age = request.getParameter("age");
            String contact = request.getParameter("cno");
            String address = request.getParameter("add");
            String mailid = request.getParameter("eid");
            String qualification = request.getParameter("qu");
            System.out.println(username + " " + password + " " + age + " " + contact);
           String jdbcur1 = "jdbc:mysql://localhost:3306/savan";
        String Username = "root";
        String Password = "12345";
        String driverclass = "com.mysql.cj.jdbc.Driver";
//        String query="SELECT * FROM savan.sa";    

        //Driver Class
        Class.forName(driverclass);

        //Path
        Connection conn = DriverManager.getConnection(jdbcur1, Username, Password);
            String query = "insert into reg values(?,?,?,?,?,?,?)";

            //Step1 :  Get PreparedStatement 
            PreparedStatement pstmt = conn.prepareStatement(query);
            //Step2 :  Set parameters
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, age);
            pstmt.setString(4, contact);
            pstmt.setString(5, address);
            pstmt.setString(6, mailid);
            pstmt.setString(7, qualification);

            //Step3 : execute the query
            int i = pstmt.executeUpdate();
            System.out.println("Record inserted count" + i);

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FormParameters</title>");
            out.println("</head>");

            out.println("<body bgcolor='#DFBDEA'>");
            
            out.println("<center>");
            out.println("<table>");
            out.println("<tr><td> User Name :</td><td>" + username + "</td></tr>");
            out.println("<tr><td> Password  : </td><td>" + password + "</td></tr>");
            out.println("<tr><td> Age :</td><td> " + age + "</td></tr>");
            out.println("<tr><td> Contact :</td><td> " + contact + "</td></tr>");
            out.println("<tr><td>Address : </td><td>" + address + "</td></tr>");
            out.println("<tr><td> Mail Id :</td><td>" + mailid + "</td></tr>");
            out.println("<tr><td> Qualtification :</td><td> " + qualification + "</td></tr>");
            out.println("<tr><td> Record inserted count :</td><td> " + i + "</td></tr>");
            
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
            
        %>
        <form action="Login.jsp" class="con"> 
            <button type="submit">Login</button>
        </form>
        <jsp:include page = "footer.jsp" />
    </body>
</html>
