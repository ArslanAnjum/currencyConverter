package com.arslan.currencyConverter.module.currencyConverter.service;


import com.arslan.currencyConverter.module.currencyConverter.model.ConversionDTO;
import org.springframework.stereotype.Service;

@Service
public interface ConversionService {
    Double getConvertedAmount(ConversionDTO conversionDTO);
    String getQueryUrl(ConversionDTO conversionDTO);
}
