//
//  HomeScreen.swift
//  LinkedinUI
//
//  Created by Lucas Pereira on 10/06/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            ProfileAndPostView()
                .frame(width: .infinity, height: 125)
            PostView()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
