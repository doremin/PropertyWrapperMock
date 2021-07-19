# Property Wrapper Mock

## Usage
```swift
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
```

* Property Wrapper 공부할 겸 만들어 봤는데 쓸모가 없어보이네..
