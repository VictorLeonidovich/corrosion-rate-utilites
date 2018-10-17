package com.krasikov.corrosionrateconverter;

public enum ConversionType {
	MPY("mpy", 0.0254), IPY("ipy", 25.4), IPM("ipm", 304.8), MMPY("mmpy", 1.0);
	private String type;
	private double rate;

	private ConversionType(String type, double rate) {
		this.type = type;
		this.rate = rate;
	}

	public String getType() {
		return type;
	}

	public double getRate() {
		return rate;
	}
		
}
