package com.arslan.currencyConverter.configuration;

import com.arslan.currencyConverter.module.currencyConverter.model.FixerResponse;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;

@Configuration
public class BeanDefinitions {

    /**
     *
     * Would create list of valid currencies which can be used with fixer.io
     */

    @Bean("currencies")
    @Scope("singleton")
    public String[] currencies(){
        RestTemplate restTemplate = new RestTemplate();
        FixerResponse fixerResponse = restTemplate.getForObject("http://api.fixer.io/latest",FixerResponse.class);

        return fixerResponse
                .getRates()
                .keySet()
                .toArray(new String[fixerResponse.getRates().keySet().size()]);
    }
}
