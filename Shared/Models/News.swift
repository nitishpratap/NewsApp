//
//  News.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav  
//   
//

import UIKit

public struct News: Decodable {

  public var title: String?
  public var description: String?
  public var url: String?
  public var urlToImage: String?
  public var publishedAt: String?
  public var content: String?
  public var author: String?
  public var source: Source?
}
