//
//  File.swift
//  TypeEasureDemo
//
//  Created by Liu,Zhuangzhuang on 2021/2/23.
//

import Foundation
import TypeEasure

protocol DetailElementViewModel {
    func detailInfo()
}

extension DetailElementViewModel {
    func detailInfo() {
        print("\(self) detailInfo")
    }
}

extension TagsViewModel: DetailElementViewModel { }
extension KeywordViewModel: DetailElementViewModel { }
extension ListViewModel: DetailElementViewModel { }

extension Configurable where ViewModel: DetailElementViewModel {
    func config(with viewModel: DetailElementViewModel) {
        guard let viewModel = viewModel as? ViewModel else { return }
        config(with: viewModel)
    }
}
