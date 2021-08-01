//
//  ContentViewB.swift
//  LilJoeDiceGame
//
//  Created by Tim Randall on 1/8/21.
//

import SwiftUI

struct ContentViewB: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            Spacer()
            Text("Sorry dude, u ran out of bux. Click below to see if you can do any better.")
                .padding()
                .foregroundColor(Color.white)
            Button("Play Again", action:{
                viewRouter.currentPage = .page1
            })
            Spacer()
            HStack{
                Spacer()
            }
        }.background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB(viewRouter: ViewRouter())
    }
}
