package com.arslan.currencyConverter.module.currencyConverter.model;


import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Data
public class FixerResponse implements Serializable{
    String base;
    Date date;
    Map<String,Double> rates = new HashMap<String, Double>();
}
