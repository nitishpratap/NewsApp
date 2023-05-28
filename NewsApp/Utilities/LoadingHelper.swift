//
//  LoadingHelper.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav on 6/16/19.

//

import AMProgressHUD
import UIKit

class LoadingHelper {

  private init() {}

  static func show() {
    AMProgressHUD.show()
  }

  static func dismiss() {
    AMProgressHUD.dismiss()
  }

  static func setup() {
    AMProgressHUD.options.imageName = "loading"
  }

}
