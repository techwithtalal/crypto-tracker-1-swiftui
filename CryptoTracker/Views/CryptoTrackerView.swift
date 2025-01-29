//
//  CryptoTrackerView.swift
//  CryptoTracker
//
//  Created by Tech With Talal on 1/27/25.
//

import SwiftUI

struct CryptoTrackerView: View {

    @StateObject private var viewModel = CryptoViewModel()

    var body: some View {
        NavigationView {
            if viewModel.cryptoData.isEmpty {
                NoDataView()
            } else {
                List(viewModel.cryptoData) { crypto in
                    CryptoView(crypto: crypto)
                }
                .navigationBarTitle("Crypto Tracker", displayMode: .inline)
            }
        }
    }
}

#Preview {
    CryptoTrackerView()
}
