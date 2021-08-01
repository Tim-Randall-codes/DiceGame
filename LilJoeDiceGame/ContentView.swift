//
//  ContentView.swift
//  LilJoeDiceGame
//
//  Created by Tim Randall on 1/8/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var guessedNumberString: String = ""
    @State var money: Int = 30
    @State var result: String = ""
    var body: some View {
        VStack {
            Text("Lil Joe's dice game").fontWeight(.heavy)
                .padding()
                .foregroundColor(Color.white)
            Text("It's Friday dawg, so open a brew and roll the die with Lil Joe. Guess what number the die will be, for $5 a guess. If you are correct you will get 29$.")
                .padding()
                .foregroundColor(Color.white)
            Spacer()
            Text("Money: $\(String(money))")
                .foregroundColor(Color.white)
            Text(result)
                .foregroundColor(Color.white)
            Spacer()
            HStack{
                TextField("Enter your guess", text: $guessedNumberString)
                    .keyboardType(.numberPad)
                    .foregroundColor(Color.white)
                Button("Guess!", action:{
                    game()
                    })
                .foregroundColor(Color.white)
                }
            Spacer()
            }.background(Color.black.edgesIgnoringSafeArea(.all))
    }
    func game(){
        let guessedNumber: Int = Int(guessedNumberString) ?? 0
        let randomNumber: Int = Int.random(in: 1..<7)
        if guessedNumber == 0 || guessedNumber > 6 || guessedNumber < 0 {
            result = "Only numbers 1 - 6 pls"
        }
        else {
            if randomNumber == guessedNumber {
                money += 29
                result = "Win!, die was \(String(randomNumber)), you chose \(String(guessedNumber))."
            }
            else {
                money -= 5
                result = "Sorry, die was \(String(randomNumber)), you chose \(String(guessedNumber))."
            }
        }
        if money <= 0 {
            viewRouter.currentPage = .page2
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
