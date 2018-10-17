package com.krasikov.corrosionrateconverter;

public class ConversionDTO implements IConversionDTO {
	private final String conversionValue;
	private final ConversionType inputConversionType;
	private final ConversionType outputConversionType;

	public ConversionDTO(String conversionValue, ConversionType inputConversionType,
			ConversionType outputConversionType) {
		this.conversionValue = conversionValue.trim();
		this.inputConversionType = inputConversionType;
		this.outputConversionType = outputConversionType;
	}

	public String getConversionValue() {
		return conversionValue;
	}

	@Override
	public ConversionType getInputConversionType() {
		return this.inputConversionType;
	}

	@Override
	public ConversionType getOutputConversionType() {
		return this.outputConversionType;
	}

}
