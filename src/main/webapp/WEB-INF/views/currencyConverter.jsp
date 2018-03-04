<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div ng-controller="currencyConverterController"
    ng-init="init()">
	<div class="wrapper">
		<div class="container">

            <div class="section margin-top-40px">
                <form name="mform" ng-submit="convert()">
                    <div class="centered">
                        <div class="row margin-top-40px">
                            <div class="col s6 m6 l6">
                                <label
                                    for="from"
                                    ng-style="{color : (mform.from.$invalid && mform.from.$touched) ? 'red' : '#9e9e9e'}">From</label>
                                <select
                                    ng-required="true"
                                    id="from"
                                    name="from"
                                    ng-options="currency for currency in currencies"
                                    ng-model="conversionDTO.from">
                                    <option value='' disabled>Choose From</option></select>
                            </div>
                            <div class="col s6 m6 l6">
                                <label
                                        for="to"
                                        ng-style="{color : (mform.to.$invalid && mform.to.$touched) ? 'red' : '#9e9e9e'}">To</label>
                                    <select
                                        ng-required="true"
                                        id="to"
                                        name="to"
                                        ng-options="currency for currency in currencies"
                                        ng-model="conversionDTO.to">
                                        <option value='' disabled>Choose To</option></select>
                            </div>
                        </div>
                        <div class="row margin-top-40px">
                            <div class="col s6 m6 l6">
                                <label
                                    for"amount"
                                    ng-style="{color : (mform.amount.$invalid && mform.amount.$touched) ? 'red' : '#9e9e9e'}">Amount</label>
                                <input
                                    ng-required="true"
                                    type="number"
                                    min="0"
                                    step="0.01"
                                    id="amount"
                                    name="amount"
                                    ng-model="conversionDTO.amount"/>
                            </div>

                            <div class="col s6 m6 l6">
                                <label for="convertedAmount">Converted</label>
                                <input
                                    readonly
                                    ng-model="convertedAmount"/>
                            </div>
                        </div>
                        <div class="row margin-top-40px"
                             style="margin-bottom:40px;">
                            <div class="col s12 m12 l12">
                                <input
                                    type="submit"
                                    value="Convert"
                                    class="btn"
                                    ng-disabled="mform.$invalid">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
		</div>
	</div>
</div>