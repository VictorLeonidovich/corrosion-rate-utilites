package com.krasikov.corrosionrateconverter;

public class CorrosionRateConverter implements CapableToConvert {
	private final String regex = "[0-9]+.[0-9]+"; // alternative "\\d+.\\d+"

	@Override
	public String convert(IConversionDTO conversionDTO) {
		double convertedValue;
		String conversionValue = conversionDTO.getConversionValue();
		double conversionRate = new ConversionRate().checkConversionRate(conversionDTO.getInputConversionType(),
				conversionDTO.getOutputConversionType());
		if (containNumbersOnly(conversionValue)) {
			convertedValue = conversionRate * Double.parseDouble(conversionValue);
		} else {
			throw new NumberFormatException("Number to convert contains not only a digits!!!");
		}

		return String.valueOf(convertedValue);
	}

	private boolean containNumbersOnly(String conversionValue) {
		return conversionValue.matches(regex);
	}

}
