//
//  main.swift
//  Example
//
//  Created by Liu,Zhuangzhuang on 2021/2/23.
//

import Foundation
import TypeEasure

print("hello world")

let keywordView = KeywordView()
let tagsView = TagsView()
let listView = ListView()

let keywordsViewModel = KeywordViewModel()
let tagsViewModel = TagsViewModel()
let listViewModel = ListViewModel()

let models: [DetailElementViewModel] = [listViewModel, keywordsViewModel, tagsViewModel]
let views: [ShadowConfigurable] = [listView, keywordView, tagsView]

let config: (ShadowConfigurable, DetailElementViewModel) -> Void = { view, model in
    view.config(with: model)
    model.detailInfo()
}

zip(views, models).forEach(config)
