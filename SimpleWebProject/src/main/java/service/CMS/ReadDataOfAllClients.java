package service.CMS;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DatabaseQueries;
import dto.Client;

public class ReadDataOfAllClients extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		@SuppressWarnings("unchecked")
		DatabaseQueries<Client> databaseQueries = (DatabaseQueries<Client>) DatabaseQueries.getObject();
		Client client = new Client();
		List<List<String>> list = databaseQueries.readAll(client);
		List<Client> listOfClients = new ArrayList<>();
		if (list.size() == 0) {
			request.setAttribute("listOfClients", listOfClients);
			request.getRequestDispatcher("StartOfCMS.jsp").forward(request, response);
		} else {
			for (int i = 0; i < list.size(); i++) {
				Client clientObj = new Client();
				clientObj.setUid(list.get(i).get(0));
				clientObj.setFname(list.get(i).get(1));
				clientObj.setLname(list.get(i).get(2));
				clientObj.setMobileNumber(list.get(i).get(3));
				clientObj.setEmail(list.get(i).get(4));
				clientObj.setBillAmount(list.get(i).get(5));
				clientObj.setTenure(list.get(i).get(6));
				listOfClients.add(clientObj);
			}
			request.setAttribute("listOfClients", listOfClients);
			request.getRequestDispatcher("DisplayAllClientsData.jsp").forward(request, response);
		}
	}

}
