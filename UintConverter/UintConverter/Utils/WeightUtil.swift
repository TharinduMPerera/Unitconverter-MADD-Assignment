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
    
    func gramToKilogram(_ gram: Int) -> Double {
        return Double(gram) * 0.001
    }
    
    func gramToPound(_ gram: Int) -> Double {
        return Double(gram) * 0.0022046226
    }
    
    func gramToOunce(_ gram: Int) -> Double {
        return Double(gram) * 0.0352739619
    }
    
    //MARK: Convert Kilogram
    
    func kilogramToGram(_ kilogram: Int) -> Int {
        return kilogram * 1000
    }
    
    func kilogramToPound(_ kilogram: Int) -> Double {
        return Double(kilogram) * 2.2046226218
    }
    
    func kilogramToOunce(_ kilogram: Int) -> Double {
        return Double(kilogram) * 35.2739619496
    }
    
    //MARK: Convert Pound
    
    func poundToGram(_ pound: Int) -> Double {
        return Double(pound) * 453.59237
    }
    
    func poundToKilogram(_ pound: Int) -> Double {
        return Double(pound) * 0.45359237
    }
    
    func poundToOunce(_ pound: Int) -> Int {
        return pound * 16
    }
}
