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
    
    func celsiusToFehrenheit(_ celsius: Int) -> Double {
        return (Double(celsius) * 9.0/5.0) + 32
    }
    
    func celsiusToKelvin(_ celsius: Int) -> Double {
        return Double(celsius) + 273.15
    }
    
    //MARK: Convert Fehrenheit
    
    func fehrenheitToCelsius(_ fehrenheit: Int) -> Double {
        return Double(fehrenheit - 32) * 5.0/9.0
    }
    
    func fehrenheitToKelvin(_ fehrenheit: Int) -> Double {
        return (Double(fehrenheit) + 459.67) * 5.0/9.0
    }
    
    //MARK: Convert Kelvin
    
    func kelvinToCelsius(_ kelvin: Int) -> Double {
        return Double(kelvin) - 273.15
    }
    
    func kelvinToFehrenheit(_ kelvin: Int) -> Double {
        return (Double(kelvin) * 9.0/5.0) - 459.67
    }
    
    
}
