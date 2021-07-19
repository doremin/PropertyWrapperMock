//
//  Mock.swift
//  Mock
//
//  Created by doremin on 2021/07/19.
//
import Foundation


protocol Mockable {
  static var mockModel: Self { get }
}

@propertyWrapper
struct Mock<MockType> where MockType: Mockable {
  
  private let _type: Mockable.Type
  private let `repeat`: Int

  var wrappedValue: MockType {
    get {
      let mock = self._type.mockModel

      if mock is Array<Mockable> {
        let arrayMock = mock as! Array<Mockable>
        return Array(repeating: arrayMock[0], count: self.repeat) as! MockType
      }
      
      return mock as! MockType
    }
  }
  
  init(_ typeOf: MockType.Type, repeat: Int = 1) {
    self._type = typeOf
    self.repeat = `repeat`
  }
}

extension Array: Mockable where Element: Mockable {
  static var mockModel: Array<Element> {
    [Element.mockModel]
  }
}
