//
//  Coordinator.swift
//  ProgressBar-SwiftUI
//
//  Created by phatnt on 6/17/20.
//  Copyright © 2020 phatnt. All rights reserved.
//

import Foundation
import SwiftUI

class Coordinator: NSObject {

    private var webViewModel: WebviewModel
    var parent: Webview
    private var estProgressObserver: NSKeyValueObservation?
    
    init(_ parent: Webview, webViewModel: WebviewModel) {
        self.parent = parent
        self.webViewModel = webViewModel
        super.init()
        
        estProgressObserver = parent.webView.observe(\.estimatedProgress, options: [.new], changeHandler: { [weak self] webView, _ in
            guard let strongSelf = self else { return }
            print(Float(webView.estimatedProgress))
            strongSelf.webViewModel.progress = webView.estimatedProgress
            strongSelf.webViewModel.didFinishLoading = webView.estimatedProgress == 1.0 ? true : false
        })
    }
    
    deinit {
        estProgressObserver = nil
    }
    
}
