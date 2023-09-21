package com.ecommercewebsite.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommercewebsite.entities.PurchasedRecord;
import com.ecommercewebsite.model.PurchasedRecordDao;

/**
 * Servlet implementation class CheckoutOrderedCtl
 */
public class CheckoutOrderedCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutOrderedCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		try {
		
		HttpSession httpSession = request.getSession();	
		
		PurchasedRecord record = new PurchasedRecord();
		
		record.setPurchase_User(request.getParameter("userName"));
		
		record.setPurchase_UserEmail(request.getParameter("userEmail"));
		
		record.setPurchase_UserContact(request.getParameter("userPhone"));
		
		record.setPurchase_UserShippingAddress(request.getParameter("shippingAddress"));
		
		record.setPurchase_Date(request.getParameter("purchaseDate"));
		
		record.setPurchase_Category(request.getParameter("purchaseCategory"));
		
		record.setPurchase_PaymentMode(request.getParameter("paymentMode"));
		
		record.setPurchase_TotalAmount(request.getParameter("totalAmount"));
		
		String puchase_DeliveryStatus = "Processing";
		
		record.setPurchase_DeliveryStatus(puchase_DeliveryStatus);
		
		String puchase_ExpectedDaysForDelivery = "15 Days Maximum";
		
		record.setPuchase_ExpectedDaysForDelivery(puchase_ExpectedDaysForDelivery);
		
		
		
		long flag =PurchasedRecordDao.addPurchasedRecord(record);
		
		if ( flag>0) {
			httpSession.setAttribute("message", "Your Ordered has been Placed ...!!! Please GoTo in Your Cart and remove Added items...!!!");
			response.sendRedirect("viewOrderd.jsp");
			return;
		}
		else {
			httpSession.setAttribute("message", "There is some Problem while Ordering..!! please try again");
			response.sendRedirect("checkout.jsp");
			return;
		}
			
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
