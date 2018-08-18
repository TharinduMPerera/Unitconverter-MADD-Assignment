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
    
    func metreToFoot(_ metre: Double) -> Double {
        return metre * 3.280839895
    }
    
    func metreToYard(_ metre: Double) -> Double {
        return metre * 1.0936132983
    }
    
    func metreToKilometre(_ metre: Double) -> Double {
        return metre * 0.001
    }
    
    func metreToMile(_ metre: Double) -> Double {
        return metre * 0.0006213712
    }
    
    //MARK: Convert Foot
    
    func footToMetre(_ foot: Double) -> Double {
        return foot * 0.3048
    }
    
    func footToYard(_ foot: Double) -> Double {
        return foot * 0.3333333333
    }
    
    func footToKilometre(_ foot: Double) -> Double {
        return foot * 0.0003048
    }
    
    func footToMile(_ foot: Double) -> Double {
        return foot * 0.0001893939
    }
    
    //MARK: Convert Yard
    
    func yardToMetre(_ yard: Double) -> Double {
        return yard * 0.9144
    }
    
    func yardToFoot(_ yard: Double) -> Double {
        return yard * 3
    }
    
    func yardToKilometre(_ yard: Double) -> Double {
        return yard * 0.0009144
    }
    
    func yardToMile(_ yard: Double) -> Double {
        return yard * 0.0005681818
    }
    
    //MARK: Convert Kilometre
    
    func kilometreToMetre(_ kilometre: Double) -> Double {
        return kilometre * 1000
    }
    
    func kilometreToFoot(_ kilometre: Double) -> Double {
        return kilometre * 0.0003048
    }
    
    func kilometreToYard(_ kilometre: Double) -> Double {
        return kilometre * 1093.6132983377
    }
    
    func kilometreToMile(_ kilometre: Double) -> Double {
        return kilometre * 0.6213711922
    }
    
    //MARK: Convert Mile
    
    func mileToMetre(_ mile: Double) -> Double {
        return mile * 1609.344
    }
    
    func mileToFoot(_ mile: Double) -> Double {
        return mile * 5280
    }
    
    func mileToYard(_ mile: Double) -> Double {
        return mile * 1760
    }
    
    func mileToKilometre(_ mile: Double) -> Double {
        return mile * 1.609344
    }
}
