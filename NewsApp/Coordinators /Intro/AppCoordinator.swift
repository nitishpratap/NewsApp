//
//  AppCoordinator.swift
//  NewsApp
//
//  Created by Nitish Pratap Yadav  
//   
//

import UIKit

class AppCoordinator: Coordinator {

  // MARK: - Private Properties

  private let window: UIWindow?

  private lazy var rootViewController: SplashViewController? = {
    return StoryboardUtil.viewController(storyboard: .intro)
  }()

  // MARK: - init

  init(window: UIWindow) {
    self.window = window
  }

  // MARK: - Coordinator

  override func start() {
    guard let window = window else {
      return
    }
    rootViewController?.delegate = self
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
  }

  override func finish() {
    rootViewController = nil
  }
}

// MARK: - SplashViewControllerDelegate

extension AppCoordinator: SplashViewControllerDelegate {
  func nextViewController() {
    let introCoordinator = IntroCoordinator(window: window)
    addChild(introCoordinator)
    introCoordinator.start()
    finish()
  }
}
