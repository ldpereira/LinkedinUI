//
//  InvitationView.swift
//  LinkedinUI
//
//  Created by Lucas Pereira on 10/06/23.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Marry", position: "SDE at Paytm", mutualConnect: 34, image: "01")

struct InvitationView: View {
    var data: NetworkModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text(data.name)
                    .font(.body)
                Text(data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("♾️\(data.mutualConnect) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            HStack {
                Image(systemName: "multiply.circle")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 30))
                    .foregroundColor(.blue)
                    .opacity(0.8)
            }.padding(.horizontal)
        }
        .frame(width: .infinity, height: .infinity)
        .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(data: sampleData)
    }
}
