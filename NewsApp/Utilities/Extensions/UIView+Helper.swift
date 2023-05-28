//
//  UIView+Helper.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav on 7/20/19.

//

import UIKit

extension UIView {

  func makeCircular() {
    layer.cornerRadius = bounds.size.width / 2
    layer.masksToBounds = true
  }

  func roundedCorner(radius: CGFloat) {
    layer.cornerRadius = radius
    layer.masksToBounds = true
  }

  func addBorder(color: UIColor = .white, width: CGFloat = 2) {
    layer.borderColor = color.cgColor
    layer.borderWidth = width
  }

}
