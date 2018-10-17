package com.krasikov.corrosion_rate_calculator.util;

import com.krasikov.corrosion_rate_calculator.util.ConversionUtil;

import junit.framework.TestCase;

public class ConversionUtilTest extends TestCase {

	private ConversionUtil conversion;

	@Override
	protected void setUp() throws Exception {
		super.setUp();
		conversion = new ConversionUtil();
	}

	public void testConvertKmToMile() {
		double actual = conversion.convertKMToMile(4);
		assertEquals(2.48548, actual, 0.001);
	}

	public void testConvertkmToYard() {
		double actual = conversion.convertkmToYard(4);
		assertEquals(4374.45, actual, 0.10);
	}

	public void testConvertMToMile() {
		double actual = conversion.convertMToMile(4000);
		assertEquals(2.48548, actual, 0.001);
	}

	public void testConvertMtoYard() {
		double actual = conversion.convertMtoYard(4000);
		assertEquals(4374.45, actual, 0.10);
	}

	@Override
	protected void tearDown() throws Exception {
		super.tearDown();
		conversion = null;
	}

}
