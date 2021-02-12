//
//  GetOtherProductUseCase.swift
//  Product
//
//  Created by Aji Saputra Raka Siwi on 11/02/21.
//

import Foundation
import Core
 
public struct GetOtherProductUseCase: UseCaseType {
  public typealias Request = String
  public typealias Response = String
 
  public init() {}
 
  public func execute(request: Request) -> Response {
    // Example of business logic, add request with request and uppercase
    return "\(request) \(request)".uppercased()
  }
}
