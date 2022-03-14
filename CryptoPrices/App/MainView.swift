//
//  ContentView.swift
//  CryptoPrices
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct MainView: View {
    //MARK: PROPERTIES
    @ObservedObject var viewModel = CryptoViewModel()
    
    //MARK: BODY
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 15) {
            if let coins = viewModel.coins {
                ForEach(coins) {
                    coin in
                    
                    HStack(spacing:15) {
                        Image(coin.symbol ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                        
                        Text(coin.symbol ?? "Nothing Found!")
                        Text(coin.slug ?? "Not Found!")
                        
                    }//:HStack
                }//:ForEach
            }//:IfLet
        }//:LazyVStack
    }//:Body
}

//MARK: PREVIEWS
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
