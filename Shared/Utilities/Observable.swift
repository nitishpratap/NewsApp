//
//  Observable.swift
//  Shared
//
//  Created by Nitish Pratap Yadav on 3/13/19.

//

import UIKit

public class Observable<T> {

  public typealias Observer = (T?) -> Void

  private var observers: [Observer]

  /// The value of the observer, when you change it all the observers will get notified.
  var value: T? {
    didSet {
      notifyObservers(value)
    }
  }

  init(_ value: T? = nil) {
    self.value = value
    observers = []
  }

  /// Add new observer to get notified when new change happen
  public func bind(observer: @escaping Observer) {
    self.observers.append(observer)
  }

  private func notifyObservers(_ value: T?) {
    self.observers.forEach { $0(value) }
  }
}
