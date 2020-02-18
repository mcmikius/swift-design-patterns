//
//  Safe.swift
//  Singleton
//
//  Created by Mykhailo Bondarenko on 18.02.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

class Safe {
    var money = 0
    static let shared = Safe()
    private init() {}
}
