package com.ecommercewebsite.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommercewebsite.entities.User;
import com.ecommercewebsite.helper.DbConnectionProvider;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class PrintBillCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PrintBillCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		try {
			HttpSession httpSession = request.getSession();
			User user =  (User) httpSession.getAttribute("current-user");
			
			System.out.println("coming User is " + user);
			
			String userName = user.getUserEmail();
			
			String file_name = "C:\\OrderedBill\\YourPurchaseBill.pdf";
			Document document  = new Document();
			
			PdfWriter.getInstance(document, new FileOutputStream(file_name));
			
			document.open();
			document.add(new Chunk(""));
			
			int check = 0;
			Connection con = DbConnectionProvider.getCon();
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String query = "select *from purchasedrecord where purchase_UserEmail = '"+userName +"'";
			
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			
			
			while (rs.next()) {
				check =1;
				Paragraph para = new Paragraph(rs.getString(2)+ " "+rs.getString(3)+ " "+rs.getString(4)+ " "+rs.getString(5)+ " "+rs.getString(6)+ " "+rs.getString(7)+ " "+rs.getString(8)+ " "+rs.getString(9)+ " "+rs.getString(10)+" ");
				document.add(para);
				document.add(new Paragraph(" "));
				
			}
			
			httpSession.setAttribute("message", "Your Bill has been saved goto OrderedBill folder in C dirve to see your pdf bill of placed orders...!!! ");
			response.sendRedirect("bill.jsp");
			
			
			
			if (check == 0) {
				httpSession.setAttribute("message", "There is some Problem ..!! please try again to save your Pdf bill Locally...!!");
				response.sendRedirect("bill.jsp");
			}
			document.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
