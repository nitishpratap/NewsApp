//
//  ImageView.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav on 6/16/19.

//

import SDWebImage
import UIKit

extension UIImageView {

  func setImage(with url: String?, placeholderImage: UIImage) {
    if let imageLink = url, let url = URL(string: imageLink) {
      self.sd_setImage(with: url, placeholderImage: placeholderImage)
    } else {
      image = placeholderImage
    }
  }

}
