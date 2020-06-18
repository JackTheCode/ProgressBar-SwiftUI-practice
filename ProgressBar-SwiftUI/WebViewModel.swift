//
//  WebViewModel.swift
//  ProgressBar-SwiftUI
//
//  Created by phatnt on 6/18/20.
//  Copyright © 2020 phatnt. All rights reserved.
//

import Foundation

class WebviewModel: ObservableObject {
    
    @Published var progress: Double = 0.0
    @Published var link: String
    @Published var didFinishLoading = false
    
    init(progress: Double, link: String) {
        self.progress = progress
        self.link = link
        self.didFinishLoading = false
    }
    
}
