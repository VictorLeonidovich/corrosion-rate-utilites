package com.krasikov.corrosion_rate_utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.krasikov.corrosion_rate_calculator.util.ConversionUtil;

public class CorrosionRateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger log = Logger.getLogger(CorrosionRateServlet.class);

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		double convertVal = 0;
		Enumeration<String> param = req.getParameterNames();
		while (param.hasMoreElements()) {
			log.debug("Enumeration: " + param.nextElement());
		}

		double corrosionratevalue = Double.parseDouble(req.getParameter("corrosionratevalue"));
		String dimensionIn = req.getParameter("dimensionin");
		String convertTo = req.getParameter("convertto");
		log.debug(req.getParameterNames() + "Request Parameters ==>" + "Distance-" + corrosionratevalue + dimensionIn + " Conversion Unit- "
				+ convertTo);
		ConversionUtil conversion = new ConversionUtil();
		if (dimensionIn.equals("mmyear") && convertTo.equals("mpy")) {
			convertVal = conversion.convertkmToYard(corrosionratevalue);
		}
		if (dimensionIn.equals("m") && convertTo.equals("yd")) {
			convertVal = conversion.convertMtoYard(corrosionratevalue);
		}
		if (dimensionIn.equals("mmyear") && convertTo.equals("gsm2h")) {
			convertVal = conversion.convertKMToMile(corrosionratevalue);
		}
		if (dimensionIn.equals("m") && convertTo.equals("mi")) {
			convertVal = conversion.convertMToMile(corrosionratevalue);
		}
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		out.print("The converted value is " + convertVal);
		out.flush();
		out.close();
	}
}
