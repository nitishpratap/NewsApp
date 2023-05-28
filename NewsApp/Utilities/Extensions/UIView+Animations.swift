//
//  UIView+Animations.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav on 7/20/19.

//

import UIKit

extension UIView {

  func showAllViews() {
    UIView.animate(withDuration: 0.5) {
      self.subviews.forEach({ guard $0.tag != -1 else { return }; $0.alpha = 1 })
    }
  }

  func hideAllViews() {
    subviews.forEach({ guard $0.tag != -1 else { return }; $0.alpha = 0 })
  }

}
