//
//  Storage.swift
//  LanguageManager-iOS
//
//  Created by Nitish Pratap Yadav on 10/11/2020.
//

import Foundation

class Storage {

  // MARK: - Private properties

  private var defaults: UserDefaults {
    UserDefaults.standard
  }

  // MARK: - Methods

  func string(forKey key: DefaultsKeys) -> String? {
    defaults.string(forKey: key.rawValue)
  }

  func set(_ value: String, forKey: DefaultsKeys) {
    defaults.set(value, forKey: forKey.rawValue)
  }
}
