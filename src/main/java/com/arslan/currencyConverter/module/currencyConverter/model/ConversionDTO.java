package com.arslan.currencyConverter.module.currencyConverter.model;


import lombok.Data;

@Data
public class ConversionDTO {
    String from;
    Double amount;
    String to;
}
