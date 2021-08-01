//
//  LilJoeDiceGameApp.swift
//  LilJoeDiceGame
//
//  Created by Tim Randall on 1/8/21.
//

import SwiftUI

@main
struct LilJoeDiceGameApp: App {
    @State var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter)
        }
    }
}
