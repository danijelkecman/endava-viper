//
//  NewsSourcesWireframe.swift
//  EndavaTest
//
//  Created by Danijel Kecman on 8/4/17.
//  Copyright (c) 2017 Danijel Kecman. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class NewsSourcesWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

    // MARK: - Module setup -

    func configureModule(with viewController: NewsSourcesViewController) {
        let interactor = NewsSourcesInteractor()
        let presenter = NewsSourcesPresenter(wireframe: self, view: viewController, interactor: interactor)
        viewController.presenter = presenter
    }

    // MARK: - Transitions -

    func show(with transition: Transition, animated: Bool = true) {
        let moduleViewController = _storyboard.instantiateViewController(withIdentifier: "NewsSourcesViewController") as! NewsSourcesViewController
        configureModule(with: moduleViewController)

        show(moduleViewController, with: transition, animated: animated)
    }
}

// MARK: - Extensions -

extension NewsSourcesWireframe: NewsSourcesWireframeInterface {

    func navigate(to option: NewsSourcesNavigationOption) {
        switch option {
        case let .newsFeed(source):
            let wireframe = NewsFeedListWireframe(navigationController: self.navigationController)
            wireframe.show(with: .push, source: source)
        }
    }
}
