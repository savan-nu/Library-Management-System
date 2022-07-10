
<%@page import="bean.LoginDao"%>
<jsp:useBean id="bean" class="bean.LoginBean1"/>
<jsp:setProperty property="*" name="bean"/>
<%
    System.out.println("Details" + request.getParameter("email") + " " + request.getParameter("pass"));
%>
<%
    boolean status = LoginDao.validate(bean);
    System.out.println("ADMIN dao.." + status);
    if (status) {
        out.println("You are successfully logged in");
%>
<jsp:include page="Welcome.jsp"></jsp:include>

<%
    session.setAttribute("session", "TRUE");
} else {
    out.print("Sorry, email or password Wrong Try agin");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
    }
%> 
