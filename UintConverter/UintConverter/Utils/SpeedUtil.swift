//
//  SpeedUtil.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/18/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import Foundation

class SpeedUtil {
    
    //MARK: Convert Metres Per Second
    
    static func mpsToFpm(_ mps: Double) -> Double {
        return mps * 196.8503937008
    }
    
    static func mpsToKmph(_ mps: Double) -> Double {
        return mps * 3.6
    }
    
    static func mpsToMph(_ mps: Double) -> Double {
        return mps * 2.2369362921
    }
    
    //MARK: Convert Feets Per Minute
    
    static func fpmToMps(_ fpm: Double) -> Double {
        return fpm * 0.00508
    }
    
    static func fpmToKmph(_ fpm: Double) -> Double {
        return fpm * 0.018288
    }
    
    static func fpmToMph(_ fpm: Double) -> Double {
        return fpm * 0.0113636364
    }
    
    //MARK: Convert Feets Kilometres Per Hour
    
    static func kmphToMps(_ kmph: Double) -> Double {
        return kmph * 0.2777777778
    }
    
    static func kmphToFpm(_ kmph: Double) -> Double {
        return kmph * 54.6806649169
    }
    
    static func kmphToMph(_ kmph: Double) -> Double {
        return kmph * 0.6213711922
    }
    
    //MARK: Convert Feets Miles Per Hour
    
    static func mphToMps(_ mph: Double) -> Double {
        return mph * 0.44704
    }
    
    static func mphToFpm(_ mph: Double) -> Double {
        return mph * 88
    }
    
    static func mphToKmph(_ mph: Double) -> Double {
        return mph * 1.609344
    }
}
