//
//  Errors.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav on 6/16/19.

//

import UIKit

enum Errors {

  public static var unknownError = NSError(domain: "error.unknown", code: -20, userInfo: ["": ""])
  public static var badURL = NSError(domain: "error.badurl", code: -10, userInfo: ["": ""])
}
