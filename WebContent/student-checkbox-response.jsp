<html>
	<head><title>Student Confirmation Page</title></head>
	<body>
	
		Student Confirmed : ${param.firstName}  ${param.lastName}
		<br> <br>
	    
	    <br><br>
	    <!-- display list of favorit language  -->
	    <ul>
		    <%
		    	String[] langs =request.getParameterValues("favoritLanguage");
		    	if(langs != null){
			    	for(String tempLang : langs){
			    		out.println("<li>"+tempLang+"</li>");
			    		
			    	}
		    	}
		    %>
		 </ul>
	</body>

</html>