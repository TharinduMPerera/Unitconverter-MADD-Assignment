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
    
    func gramToKilogram(_ gram: Double) -> Double {
        return gram * 0.001
    }
    
    func gramToPound(_ gram: Double) -> Double {
        return gram * 0.0022046226
    }
    
    func gramToOunce(_ gram: Double) -> Double {
        return gram * 0.0352739619
    }
    
    //MARK: Convert Kilogram
    
    func kilogramToGram(_ kilogram: Double) -> Double {
        return kilogram * 1000
    }
    
    func kilogramToPound(_ kilogram: Double) -> Double {
        return kilogram * 2.2046226218
    }
    
    func kilogramToOunce(_ kilogram: Double) -> Double {
        return kilogram * 35.2739619496
    }
    
    //MARK: Convert Pound
    
    func poundToGram(_ pound: Double) -> Double {
        return pound * 453.59237
    }
    
    func poundToKilogram(_ pound: Double) -> Double {
        return pound * 0.45359237
    }
    
    func poundToOunce(_ pound: Double) -> Double {
        return pound * 16
    }
    
    //MARK: Convert Ounce
    
    func ounceToGram(_ ounce: Double) -> Double {
        return ounce * 28.349523125
    }
    
    func ounceToKilogram(_ ounce: Double) -> Double {
        return ounce * 0.0283495231
    }
    
    func ounceToPound(_ ounce: Double) -> Double {
        return ounce * 0.0625
    }
}
