//
//  Double.swift
//  Crypto
//
//  Created by Uday Gajera on 24/01/24.
//
import Foundation

extension Double {
    
    /// converts a double into a currency with 2 decimal places
    /// ```
    /// convert 1234.56 to $1234.56
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current //default value
        formatter.currencyCode = "usd" // change currency
        //formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// converts a double into a currency as a string  with 2 decimal places
    /// ```
    /// convert 1234.56 to "$1234.56"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    
    /// converts a double into a currency with 2-6 decimal places
    /// ```
    /// convert 1234.56 to $1234.56
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current //default value
        formatter.currencyCode = "usd" // change currency
        //formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// converts a double into a currency as a string  with 2-6 decimal places
    /// ```
    /// convert 1234.56 to "$1234.56"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// converts a double into a string representation
    /// ```
    /// convert 1234.567 to "1.56"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// converts a double into a string representation
    /// ```
    /// convert 1234.567 to "1.56%"
    /// ```
    func asPrecentString() -> String {
        return asNumberString() + "%"
    }
}

