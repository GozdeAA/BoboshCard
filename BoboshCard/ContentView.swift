//
//  ContentView.swift
//  BoboshCard
//
//  Created by Gözde Aydin on 1.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("CustomBlue").ignoresSafeArea()
            VStack {
                Image("birb").resizable().aspectRatio(contentMode: .fit).frame(width: 400, height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(.yellow, lineWidth: 2))
                Text("Cici kus").font(Font.custom("Sevillana-Regular", size: 36)).foregroundStyle(.yellow)
                InfoView(title: "+11 333 223 33", iconName: "phone")
                InfoView(title: "camdanatlarim@kus.com", iconName: "mail")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    var title: String
    var iconName: String
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ )
            .fill(.white)
            .frame(height: 50).overlay(
                HStack(alignment: .center) {
                    Image(systemName: iconName)
                        .foregroundColor(.black)
                        .padding(24)
                    Text(title)
                },alignment: .leading).padding(24)
    }
}
