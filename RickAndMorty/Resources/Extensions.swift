//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Shawn on 9/1/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
