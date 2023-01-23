//
//  ContentView.swift
//  App
//
//  Created by Raden Dimas on 05/01/23.
//

import SwiftUI
import Common
import Cart
import Product

struct ContentView: View {
  var body: some View {
    NavigationStack {
      VStack {
        NavigationLink(
          destination: ProductView(action: {
            CartView(action: { ProductDetailView() })
          })
        ) {
          Text("Open Product")
        }
      }.navigationBarTitle("Modular")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
