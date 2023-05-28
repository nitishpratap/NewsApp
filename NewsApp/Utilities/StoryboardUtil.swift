//
//  StoryboardUtil.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav  
//   
//

import UIKit

class StoryboardUtil {

  private init() {}

  static func viewController<T: UIViewController>(storyboard: Storyboards) -> T {
    let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
    // swiftlint:disable force_cast
    return storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as! T
  }

}

enum Storyboards: String {
  case intro = "Intro"
  case main = "Main"
}
