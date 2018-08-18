//
//  TemperatureUtil.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/18/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import Foundation

class TemperatureUtil {
    
    //MARK: Convert Celsius
    
    func celsiusToFehrenheit(_ celsius: Double) -> Double {
        return (celsius * 9.0/5.0) + 32
    }
    
    func celsiusToKelvin(_ celsius: Double) -> Double {
        return celsius + 273.15
    }
    
    //MARK: Convert Fehrenheit
    
    func fehrenheitToCelsius(_ fehrenheit: Double) -> Double {
        return (fehrenheit - Double(32)) * 5.0/9.0
    }
    
    func fehrenheitToKelvin(_ fehrenheit: Double) -> Double {
        return (fehrenheit + 459.67) * 5.0/9.0
    }
    
    //MARK: Convert Kelvin
    
    func kelvinToCelsius(_ kelvin: Double) -> Double {
        return kelvin - 273.15
    }
    
    func kelvinToFehrenheit(_ kelvin: Double) -> Double {
        return (kelvin * 9.0/5.0) - 459.67
    }
}
