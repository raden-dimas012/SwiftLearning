//
//  ProductView.swift
//  Product
//
//  Created by Raden Dimas on 08/01/23.
//

import SwiftUI
 
public struct ProductView<Destination: View> : View {
  let action: (() -> Destination)
    
  public init(action: @escaping (() -> Destination)) {
    self.action = action
  }
    
  public var body: some View {
    VStack {
      NavigationLink(destination: self.action()) {
        Text("Open Cart")
      }
    }.navigationBarTitle("Product")
  }
}
