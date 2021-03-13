package plo.web.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import plo.web.admin.entity.User;
import plo.web.admin.service.DashboardService;
import plo.web.admin.service.UserManagerService;

@WebServlet("/userManager")
public class UserManagerController extends HttpServlet {

	int strToInt(String str) {
		int num = 1;
		try {
			num = Integer.parseInt(str);
		} catch(Exception e) {
			num = 1;
		}
		return num;
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = request.getParameter("p");
		
		
		UserManagerService service = new UserManagerService();
		ArrayList<User> userList = service.getUserList(strToInt(page), 10);
		int userCnt = service.count();
		
		request.setAttribute("userList", userList);
		request.setAttribute("userCnt", userCnt);
		
		request.getRequestDispatcher("a00_admin/userManager.jsp").forward(request, response);
	}
}
