//
//  CardView.swift
//  Hike
//
//  Created by Henrique Albuquerque on 27/06/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - Card
        
        ZStack {
            CustomBackgroundView()
            
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.colorIndigoMedium, .colorSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 256, height: 256)
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        } //: Card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
