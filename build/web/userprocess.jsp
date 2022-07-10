
<%@page import="bean.UserDao"%>
<jsp:useBean id="bean" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="bean"/>

<%
    boolean status1 = UserDao.validate(bean);
    System.out.println("USER dao.." + status1);
    if (status1) {
        out.println("You are successfully logged in");
%>
<jsp:include page="UserLoginView.jsp"></jsp:include>
<%
    session.setAttribute("session", "TRUE");
} else {
    out.println("Sorry, email or password error");
    out.print("Please Ragister First");
%>
<jsp:include page="register.jsp"></jsp:include>
<%
    }
%>