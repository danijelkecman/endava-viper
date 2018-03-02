//
//  NewsDetailsPresenter.swift
//  EndavaTest
//
//  Created by Danijel Kecman on 8/4/17.
//  Copyright (c) 2017 Danijel Kecman. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class NewsDetailsPresenter {

    // MARK: - Private properties -

    fileprivate weak var _view: NewsDetailsViewInterface?
    fileprivate var _interactor: NewsDetailsInteractorInterface
    fileprivate var _wireframe: NewsDetailsWireframeInterface
    
    fileprivate var _article: Article

    // MARK: - Lifecycle -

    init(wireframe: NewsDetailsWireframeInterface,
         view: NewsDetailsViewInterface,
         interactor: NewsDetailsInteractorInterface, article: Article) {
        _wireframe = wireframe
        _view = view
        _interactor = interactor
        
        _article = article
    }
    
    func viewDidLoad() {
        _view?.showArticle(article: _article)
    }
}

// MARK: - Extensions -

extension NewsDetailsPresenter: NewsDetailsPresenterInterface {
}
