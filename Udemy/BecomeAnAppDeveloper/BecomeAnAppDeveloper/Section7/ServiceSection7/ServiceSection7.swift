//
//  ServiceSection7.swift
//  BecomeAnAppDeveloper
//
//  Created by Raden Dimas on 19/02/23.
//

import Foundation

final class ServiceSection7 {
    static let instance = ServiceSection7()
    
    private let categories: [CategorySection7] = [
        CategorySection7(title: "Shirts"),
        CategorySection7(title: "Hoodies"),
        CategorySection7(title: "Hats")
    ]
    
    func getCategories() ->  [CategorySection7] {
        return categories
    }
}
