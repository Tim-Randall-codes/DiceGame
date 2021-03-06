//
//  Variables.swift
//  LilJoeDiceGame
//
//  Created by Tim Randall on 1/8/21.
//

import Foundation
enum Page {
    case page1
    case page2
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page1
}
