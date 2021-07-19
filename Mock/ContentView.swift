//
//  ContentView.swift
//  Mock
//
//  Created by doremin on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
  
  @Mock(User.self) var user
  @Mock(Menu.self) var menu
  @Mock([User].self, repeat: 3) var users
  
  var body: some View {
    VStack {
      Button("\(user.name)") {
        print(user)
      }
      Button("\(menu.name)") {
        print(menu)
      }
      Button("users") {
        print(users[0].name)
        print(users[0].age)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
