//
//  CarView.swift
//  Cart
//
//  Created by Aji Saputra Raka Siwi on 11/02/21.
//

import SwiftUI
 
public struct CartView<Destination: View> : View {
  let action: (() -> Destination)
 
  public init(action: @escaping (() -> Destination)) {
    self.action = action
  }
 
  public var body: some View {
    VStack {
      NavigationLink(destination: self.action()) {
        Text("Open Product Detail")
      }
    }.navigationBarTitle("Cart")
  }
}
