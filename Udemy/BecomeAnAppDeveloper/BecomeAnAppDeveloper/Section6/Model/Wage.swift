//
//  Wage.swift
//  BecomeAnAppDeveloper
//
//  Created by Raden Dimas on 19/02/23.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(round(price/wage))
//        return Int(ceil(price / wage))
    }
}

