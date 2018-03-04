package com.arslan.currencyConverter.module.currencyConverter.service;

import com.arslan.currencyConverter.module.currencyConverter.model.ConversionDTO;
import com.arslan.currencyConverter.module.currencyConverter.model.FixerResponse;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ConversionServiceImpl
    implements ConversionService{


    @Override
    public Double getConvertedAmount(ConversionDTO conversionDTO) {

        RestTemplate restTemplate = new RestTemplate();
        FixerResponse fixerResponse =
                restTemplate
                    .getForObject(
                        getQueryUrl(conversionDTO),
                        FixerResponse.class
                    );

        Double conversionRate = fixerResponse.getRates().get(conversionDTO.getTo());
        Double converted = conversionDTO.getAmount() * conversionRate;

        return converted;
    }

    @Override
    public String getQueryUrl(ConversionDTO conversionDTO){

        StringBuilder sb = new StringBuilder("http://api.fixer.io/latest");
        sb
                .append("?base=")
                .append(conversionDTO.getFrom())
                .append("&symbols=")
                .append(conversionDTO.getTo());

        return sb.toString();
    }
}
