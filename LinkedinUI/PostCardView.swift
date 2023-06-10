//
//  PostCardView.swift
//  LinkedinUI
//
//  Created by Lucas Pereira on 10/06/23.
//

import SwiftUI

struct SocialView {
    var id: Int
    var image: String
    var title: String
}

var socialViewItens: [SocialView] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane.fill", title: "Send")
]

let postData = PostModel(id: 1, image: "02", title: "Lucas Pereira", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data: PostModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 5)
                .ignoresSafeArea(.all)
            
            HStack(alignment: .center) {
                Image(data.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8 min")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            
            Text("Looking for a new course on iOS with swift UI, you are already at great place.")
                .padding(.horizontal)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: postData)
    }
}
