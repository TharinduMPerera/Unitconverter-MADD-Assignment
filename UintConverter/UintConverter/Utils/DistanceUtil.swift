//
//  DistanceUtil.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/18/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import Foundation

class DistanceUtil {
    
    //MARK: Convert Metre
    
    static func metreToFoot(_ metre: Double) -> Double {
        return metre * 3.280839895
    }
    
    static func metreToYard(_ metre: Double) -> Double {
        return metre * 1.0936132983
    }
    
    static func metreToKilometre(_ metre: Double) -> Double {
        return metre * 0.001
    }
    
    static func metreToMile(_ metre: Double) -> Double {
        return metre * 0.0006213712
    }
    
    //MARK: Convert Foot
    
    static func footToMetre(_ foot: Double) -> Double {
        return foot * 0.3048
    }
    
    static func footToYard(_ foot: Double) -> Double {
        return foot * 0.3333333333
    }
    
    static func footToKilometre(_ foot: Double) -> Double {
        return foot * 0.0003048
    }
    
    static func footToMile(_ foot: Double) -> Double {
        return foot * 0.0001893939
    }
    
    //MARK: Convert Yard
    
    static func yardToMetre(_ yard: Double) -> Double {
        return yard * 0.9144
    }
    
    static func yardToFoot(_ yard: Double) -> Double {
        return yard * 3
    }
    
    static func yardToKilometre(_ yard: Double) -> Double {
        return yard * 0.0009144
    }
    
    static func yardToMile(_ yard: Double) -> Double {
        return yard * 0.0005681818
    }
    
    //MARK: Convert Kilometre
    
    static func kilometreToMetre(_ kilometre: Double) -> Double {
        return kilometre * 1000
    }
    
    static func kilometreToFoot(_ kilometre: Double) -> Double {
        return kilometre * 0.0003048
    }
    
    static func kilometreToYard(_ kilometre: Double) -> Double {
        return kilometre * 1093.6132983377
    }
    
    static func kilometreToMile(_ kilometre: Double) -> Double {
        return kilometre * 0.6213711922
    }
    
    //MARK: Convert Mile
    
    static func mileToMetre(_ mile: Double) -> Double {
        return mile * 1609.344
    }
    
    static func mileToFoot(_ mile: Double) -> Double {
        return mile * 5280
    }
    
    static func mileToYard(_ mile: Double) -> Double {
        return mile * 1760
    }
    
    static func mileToKilometre(_ mile: Double) -> Double {
        return mile * 1.609344
    }
}
