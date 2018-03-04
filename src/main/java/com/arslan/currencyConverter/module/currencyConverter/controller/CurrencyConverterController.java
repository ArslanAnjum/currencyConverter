package com.arslan.currencyConverter.module.currencyConverter.controller;


import com.arslan.currencyConverter.module.currencyConverter.model.ConversionDTO;
import com.arslan.currencyConverter.module.currencyConverter.model.FixerResponse;
import com.arslan.currencyConverter.module.currencyConverter.service.ConversionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping(value="/currencyConverter")
public class CurrencyConverterController {

    /*List of currencies which are valid for api.fixer.io.
    * Cached in a singleton bean*/
    @Autowired
    @Qualifier("currencies")
    String[] currencies;


    /*Conversion Service*/
    @Autowired
    ConversionService conversionService;


    /*Would return the conversion page*/
    @GetMapping
    public String getCurrencyConverterPage(){
        return "currencyConverter";
    }


    /*Would return list of valid currencies from the cached list*/
    @GetMapping(value="/validCurrencies")
    public ResponseEntity<String[]> getValidCurrencies(){
        return new ResponseEntity<>(currencies,HttpStatus.OK);
    }


    /*Would return the converted amount*/
    @PostMapping(value="/convert")
    public ResponseEntity<?> convert(
            @RequestBody ConversionDTO conversionDTO
            ){
        return new ResponseEntity<>(conversionService.getConvertedAmount(conversionDTO),HttpStatus.OK);
    }

}
