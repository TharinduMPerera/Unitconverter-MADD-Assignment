//
//  WeightUtil.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/18/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import Foundation

class WeightUtil {
    
    //MARK: Convert Gram
    
    static func gramToKilogram(_ gram: Double) -> Double {
        return gram * 0.001
    }
    
    static func gramToPound(_ gram: Double) -> Double {
        return gram * 0.0022046226
    }
    
    static func gramToOunce(_ gram: Double) -> Double {
        return gram * 0.0352739619
    }
    
    //MARK: Convert Kilogram
    
    static func kilogramToGram(_ kilogram: Double) -> Double {
        return kilogram * 1000
    }
    
    static func kilogramToPound(_ kilogram: Double) -> Double {
        return kilogram * 2.2046226218
    }
    
    static func kilogramToOunce(_ kilogram: Double) -> Double {
        return kilogram * 35.2739619496
    }
    
    //MARK: Convert Pound
    
    static func poundToGram(_ pound: Double) -> Double {
        return pound * 453.59237
    }
    
    static func poundToKilogram(_ pound: Double) -> Double {
        return pound * 0.45359237
    }
    
    static func poundToOunce(_ pound: Double) -> Double {
        return pound * 16
    }
    
    //MARK: Convert Ounce
    
    static func ounceToGram(_ ounce: Double) -> Double {
        return ounce * 28.349523125
    }
    
    static func ounceToKilogram(_ ounce: Double) -> Double {
        return ounce * 0.0283495231
    }
    
    static func ounceToPound(_ ounce: Double) -> Double {
        return ounce * 0.0625
    }
}
