	package by.htp.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

 
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public Controller() {
        super();
         
    }

	 
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String REGISTER_FORM_VALUE = "register";
		String LOGIN_FORM_VALUE = "login";
		String LOGIN = "admin";
		String PASSWORD = "password";
		String formValue = request.getParameter("form");
		PrintWriter out = response.getWriter();
		String html = ("<html> <body>");
		out.print(html);
		
		if(formValue.equals(REGISTER_FORM_VALUE)) {
			out.print("Your name: " + request.getParameter("name") + "</br>");
			out.print("Your surname: " + request.getParameter("surname") + "</br>");
			LocalDate born = LocalDate.parse(request.getParameter("born"));
			out.print("You was born: " + born.format(DateTimeFormatter.ofPattern("dd:MM:YYYY") )+ "</br>");
		} else if (formValue.equals(LOGIN_FORM_VALUE)) {
			if (request.getParameter("login").equals(LOGIN) && request.getParameter("password").equals(PASSWORD)) {
				out.print("Login success");
		}   else {
				out.print("Login failed");
		}
		}
	
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		doGet(request, response);
	}

}
