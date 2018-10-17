package com.krasikov.corrosionrateconverter;

public class ConversionRate implements IConversionRate {

	@Override
	public double checkConversionRate(ConversionType inputConversionType, ConversionType outputConversionType) {
		if (isTheSameType(inputConversionType, outputConversionType)) {
			return 1d;
		}
		return defineCorrosionRate(inputConversionType, outputConversionType);
	}

	private double defineCorrosionRate(ConversionType inputConversionType, ConversionType outputConversionType) {
		return inputConversionType.getRate() / outputConversionType.getRate();
	}

	private boolean isTheSameType(ConversionType inputConversionType, ConversionType outputConversionType) {
		return inputConversionType.equals(outputConversionType);
	}

}
