//
//  ProductView.swift
//  Product
//
//  Created by Aji Saputra Raka Siwi on 11/02/21.
//
import SwiftUI
import Common
import Core

public struct ProductView<
  Destination: View,
  UseCase: UseCaseType
>: View where UseCase.Request == String, UseCase.Response == String {
  
  let action: (() -> Destination)
  
  let presenter: GetProductPresenter<String, String, UseCase>
  
  public init(
    presenter: GetProductPresenter<String, String, UseCase>,
    action: @escaping (() -> Destination)
  ) {
    self.action = action
    self.presenter = presenter
  }
  
  public var body: some View {
    VStack(spacing: 20) {
      Text("hi, im changing my name from Fandy to \(self.presenter.execute(request: "Fandy"))")
      NavigationLink(destination: self.action()) {
        Text("Open Cart")
      }
    }.navigationBarTitle("product_title")
  }
}


extension ProductView {
  var getProductPresenter1: GetProductPresenter<String, String, GetProductUseCase> {
    GetProductPresenter(useCase: GetProductUseCase())
  }
  
  var getProductPresenter2: GetProductPresenter<String, String, GetOtherProductUseCase> {
    GetProductPresenter(useCase: GetOtherProductUseCase())
  }
  
}
