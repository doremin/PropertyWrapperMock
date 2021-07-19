//
//  Menu.swift
//  Mock
//
//  Created by doremin on 2021/07/19.
//

struct Menu {
  let name: String
  let price: Int
}

extension Menu: Mockable {
  static var mockModel: Menu {
    Menu(
      name: "파전?",
      price: 3000
    )
  }
}
