//
//  ProgressBar.swift
//  ProgressBar-SwiftUI
//
//  Created by phatnt on 6/17/20.
//  Copyright © 2020 phatnt. All rights reserved.
//

import Foundation
import SwiftUI

struct ProgressBar: View {
    @Binding var progress: Double
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.3)
                    .frame(width: geo.size.width, height: geo.size.height)
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: geo.size.width * CGFloat(self.progress), height: geo.size.height)
                    .animation(.linear(duration: 0.5))
            }
        }
    }
    
}
