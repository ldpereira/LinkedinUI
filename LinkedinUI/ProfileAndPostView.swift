//
//  ProfileAndPostView.swift
//  LinkedinUI
//
//  Created by Lucas Pereira on 10/06/23.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack {
            SearchBarView()
            VStack(alignment: .leading) {
                
                Divider()
                HStack {
                    Image(systemName: "square.and.pencil")
                    Text("Share a post")
                }.padding(.horizontal)
                Divider()
                
                HStack {
                    Image(systemName: "photo")
                        .foregroundColor(.blue.opacity(0.8))
                    Text("Photo")
                    Spacer()
                    
                    Image(systemName: "video.fill")
                        .foregroundColor(.green.opacity(0.8))
                    Text("Video")
                    
                    Spacer()
                    Image(systemName: "calendar")
                        .foregroundColor(.orange.opacity(0.8))
                    Text("Event")
                }.padding(.horizontal)
                .frame(width: .infinity, height: 25)
            }
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
