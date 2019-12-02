package service.CMS;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DatabaseQueries;
import dto.Client;

public class ReadDataOfClient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String operationName = request.getParameter("operationName");
		Client client = new Client();
		@SuppressWarnings("unchecked")
		DatabaseQueries<Client> databaseQueries = (DatabaseQueries<Client>) DatabaseQueries.getObject();
		List<String> dataOfAClient = databaseQueries.read(id, client);
		if (dataOfAClient.size() != 0) {
			request.setAttribute("valueOfId", dataOfAClient.get(0));
			request.setAttribute("valueOfFirstName", dataOfAClient.get(1));
			request.setAttribute("valueOfLastName", dataOfAClient.get(2));
			request.setAttribute("valueOfMobileNumber", dataOfAClient.get(3));
			request.setAttribute("valueOfEmail", dataOfAClient.get(4));
			request.setAttribute("valueOfBillAmount", dataOfAClient.get(5));
			request.setAttribute("valueOfTenure", dataOfAClient.get(6));
			if (operationName.equals("update")) {
				request.setAttribute("headingOfPage", "Update Client Data");
				request.getRequestDispatcher("FormPageForAddUpdateRead.jsp").forward(request, response);
			} else if (operationName.equals("read")) {
				request.setAttribute("headingOfPage", "Client Data");
				request.getRequestDispatcher("FormPageForAddUpdateRead.jsp").forward(request, response);
			}
		}
	}

}
