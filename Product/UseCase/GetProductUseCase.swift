//
//  GetProductUseCase.swift
//  Product
//
//  Created by Aji Saputra Raka Siwi on 11/02/21.
//

import Foundation
import Core
 
public struct GetProductUseCase: UseCaseType {
  public typealias Request = String
  public typealias Response = String
    
  public init() {}
    
  public func execute(request: Request) -> Response {
    // Example of business logic, reversing a string!
    return String(request.reversed())
  }
}
