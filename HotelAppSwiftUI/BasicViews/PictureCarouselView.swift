//
//  BackBlockView.swift
//  HotelAppSwiftUI
//
//  Created by Nikita Kuznetsov on 01.09.2023.
//

import SwiftUI

struct PictureCarouselView: View {
    let imageUrls: [URL?] 

    var body: some View {
        TabView {
            ForEach(imageUrls, id: \.self) { imageUrl in
                AsyncImage(url: imageUrl) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                    case .failure:
                        Text("Ошибка загрузки изображения")
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(height: 200)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 200)
        .padding()
    }
}

struct PictureCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        PictureCarouselView(imageUrls: [/*URL*/])
    }
}

