
<%@ page import="java.util.*" %>
<html>
	<body>
	
	<html>
	<head><title>Student Registration Form</title></head>
	<body>
		<form action="todo-demo.jsp">
			Add new Item <input type="text" name="theItem">
			<br> <br>
			<input type="submit" value="Submit">
		</form>
		
		
		<%
			// get the to do list item 
			List<String> items = (List<String>) session.getAttribute("todoList");
			//if todo list not exist then create one 
			if(items==null){
				items = new ArrayList<String>();
				session.setAttribute("todoList", items);
			}
			
			// see if exist form data to add
			String theItem=request.getParameter("theItem");
			if(theItem!=null){
				items.add(theItem);
			}
			
		%>
		
		<!--display all  -->
		<hr>
		<b>To List Items:</b>
		<ol>
			<%for(String temp :items){
					out.println("<li>"+temp+"</li>");
				} 
			
			%>
		
		</ol>
		 
	
	</body>

</html>
	
	</body>

</html>