//
//  NewsDetailsInterfaces.swift
//  EndavaTest
//
//  Created by Danijel Kecman on 8/4/17.
//  Copyright (c) 2017 Danijel Kecman. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum NewsDetailsNavigationOption {
}

protocol NewsDetailsWireframeInterface: WireframeInterface {
    func navigate(to option: NewsDetailsNavigationOption)
}

protocol NewsDetailsViewInterface: ViewInterface, Progressable, Alertable {
    func showArticle(article: Article)
}

protocol NewsDetailsPresenterInterface: PresenterInterface {
}

protocol NewsDetailsInteractorInterface: InteractorInterface {
}
