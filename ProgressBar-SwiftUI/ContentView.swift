//
//  ContentView.swift
//  ProgressBar-SwiftUI
//
//  Created by phatnt on 6/17/20.
//  Copyright © 2020 phatnt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var webViewModel = WebviewModel(progress: 0.0, link: "https://medium.com")
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
                VStack {
                    Webview(webViewModel: webViewModel)
                }
                if !webViewModel.didFinishLoading {
                    ProgressBar(progress: .constant(webViewModel.progress))
                    .frame(height: 2.0)
                    .foregroundColor(.accentColor)
                }
            }
            .navigationBarTitle("ProgressBar", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
