//
//  User.swift
//  Mock
//
//  Created by doremin on 2021/07/19.
//

import Foundation

struct User {
  let name: String
  let age: Int
}

extension User: Mockable {
  static var mockModel: User {
    User(
      name: "홍길동전보다는 파전",
      age: 15
    )
  }
}
