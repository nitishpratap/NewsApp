//
//  LocalData.swift
//  SharedTests
//
//  Created by Nitish Pratap Yadav on 6/16/19.

//

class LocalData: Networking {

  func request(endpoint: EndPoint, completion: @escaping (Error?, Data?) -> Void) {
    let path = Bundle(for: type(of: self)).path(forResource: "\(endpoint)", ofType: "json")
    guard let path = path else {
      completion(Errors.badURL, nil)
      return
    }
    let url = URL(fileURLWithPath: path)
    let data = try? Data(contentsOf: url)
    completion(nil, data)
  }

}
