//
//  MyNetworkScreen.swift
//  LinkedinUI
//
//  Created by Lucas Pereira on 10/06/23.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Marry", position: "SDE at Paytm", mutualConnect: 34, image: "00"),
    .init(id: 1, name: "Peter", position: "Assistant Manager", mutualConnect: 45, image: "01"),
    .init(id: 2, name: "Jenny", position: "SDE at Ginger ", mutualConnect: 67, image: "02"),
    .init(id: 3, name: "Sara", position: "open to work", mutualConnect: 103, image: "03"),
    .init(id: 4, name: "Kia", position: "GET at HCL", mutualConnect: 12, image: "04"),
    .init(id: 5, name: "Shristi", position: "Student", mutualConnect: 78, image: "05"),
    .init(id: 6, name: "Rachel", position: "intern at iNeuron", mutualConnect: 90, image: "00"),
    .init(id: 7, name: "John", position: "HR at Intel", mutualConnect: 34, image: "01"),
    .init(id: 8, name: "Tiya", position: "purchase Engineer", mutualConnect: 50, image: "02"),
    .init(id: 9, name: "Pheobe", position: "Product Manager", mutualConnect: 86, image: "03"),
    .init(id: 10, name: "Monica", position: "Data Analyst", mutualConnect: 55, image: "04"),
    .init(id: 11, name: "Joe", position: "Software Development intern", mutualConnect: 42, image: "05"),
    .init(id: 12, name: "Charel", position: "SDE-II ", mutualConnect: 30, image: "00"),
    .init(id: 13, name: "Chandler", position: "Mobile Developer", mutualConnect: 71, image: "01"),
    .init(id: 14, name: "Max", position: "QA", mutualConnect: 95, image: "02"),
    .init(id: 15, name: "Nancy", position: "Frontend Developer", mutualConnect: 18, image: "03")
]

struct MyNetworkScreen: View {
    var body: some View {
        VStack {
            SearchBarView()
            HStack {
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue.opacity(0.8))
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Invitations")
                        .font(.body)
                        .foregroundColor(.blue.opacity(0.8))
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                
                Divider()
                
                ForEach(networkData, id: \.id) { data in
                    InvitationView(data: data)
                    Divider()
                }
            }
        }
    }
}

struct MyNetworkScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworkScreen()
    }
}
