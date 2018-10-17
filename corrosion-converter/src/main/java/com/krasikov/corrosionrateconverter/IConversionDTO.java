package com.krasikov.corrosionrateconverter;

public interface IConversionDTO {
	// public void setInputConversionType(ConversionType inputConversionType);
	public String getConversionValue();

	public ConversionType getInputConversionType();

	// public void setOutsputConversionType(ConversionType outputConversionType);

	public ConversionType getOutputConversionType();
}
