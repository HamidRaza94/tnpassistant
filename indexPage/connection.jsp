<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.google.gson.Gson, tnp.CheckUser" %>
<%
	if(request.getMethod().equalsIgnoreCase("post")) {
		String user_type = request.getParameter("user_type");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		Map<String, Object> map = new HashMap<String, Object>();
		CheckUser check = new CheckUser();
		
		map = check.isValidUser(user_type, id, pass);
		boolean isValid = (boolean) map.get("isValid");
		
		if(isValid) {
			session.setAttribute("userID", id);
			session.setAttribute("connection", map.get("connection"));
		}

		System.out.println(map);
		map.remove("connection");
		System.out.println(map);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(new Gson().toJson(map));
	}
%>