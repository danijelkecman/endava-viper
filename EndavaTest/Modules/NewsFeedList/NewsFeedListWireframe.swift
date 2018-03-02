//
//  NewsFeedListWireframe.swift
//  EndavaTest
//
//  Created by Danijel Kecman on 8/3/17.
//  Copyright (c) 2017 Danijel Kecman. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class NewsFeedListWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

    // MARK: - Module setup -

    func configureModule(with viewController: NewsFeedListViewController, source: String) {
        let interactor = NewsFeedListInteractor()
        let presenter = NewsFeedListPresenter(wireframe: self, view: viewController, interactor: interactor, source: source)
        viewController.presenter = presenter
    }

    // MARK: - Transitions -

    func show(with transition: Transition, animated: Bool = true, source: String) {
        let moduleViewController = _storyboard.instantiateViewController(withIdentifier: "NewsFeedListViewController") as! NewsFeedListViewController
        configureModule(with: moduleViewController, source: source)

        show(moduleViewController, with: transition, animated: animated)
    }
}

// MARK: - Extensions -

extension NewsFeedListWireframe: NewsFeedListWireframeInterface {

    func navigate(to option: NewsFeedListNavigationOption) {
        switch option {
        case let .articleDetails(article):
            let wireframe = NewsDetailsWireframe(navigationController: navigationController)
            wireframe.show(with: .push, article: article)
        }
    }
}
