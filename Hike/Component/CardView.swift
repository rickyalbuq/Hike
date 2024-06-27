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
            
            VStack {
                // MARK: - Header
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button(action: {
                            // ACTION: Show a sheet
                            print("The button was pressed.")
                        }) {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(.colorGrayMedium)
                } //: Header
                .padding(.horizontal, 30)
                
                // MARK: - Main Content
                
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
                
                // MARK: - Footer
                
                
            } //: VStack
        } //: Card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
