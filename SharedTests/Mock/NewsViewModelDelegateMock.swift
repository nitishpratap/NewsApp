//
//  NewsViewModelDelegateMock.swift
//  SharedTests
//
//  Created by Nitish Pratap Yadav on 08/09/2022.
//  Copyright © 2022 . All rights reserved.
//

@testable import Shared

class NewsViewModelDelegateMock: NewsViewModelDelegate {
  var openGotCalled = false
  var languageDidChangedGotCalled = false
  func open(news: NewsViewModel) {
    openGotCalled = true
  }

  func languageDidChanged() {
    languageDidChangedGotCalled = true
  }
}
