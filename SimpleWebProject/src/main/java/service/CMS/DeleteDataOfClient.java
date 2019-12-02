package service.CMS;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DatabaseQueries;
import dto.Client;

public class DeleteDataOfClient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		Client client = new Client();
		@SuppressWarnings("unchecked")
		DatabaseQueries<Client> databaseQueries = (DatabaseQueries<Client>) DatabaseQueries.getObject();
		if (databaseQueries.delete(id, client) > 0) {
			request.setAttribute("errorInId", null);
			request.getRequestDispatcher("ReadDataOfAllClients").forward(request, response);
		}
	}
	
}
