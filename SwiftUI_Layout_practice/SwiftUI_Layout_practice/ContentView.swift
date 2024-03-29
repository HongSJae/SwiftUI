//
//  ContentView.swift
//  SwiftUI_Layout_practice
//
//  Created by 홍승재 on 2022/08/02.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing: 0) {
                    ScrollView {
                        VStack {
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill",
                                   title: "방 청소",
                                   Start: "10 AM",
                                   End: "11 AM",
                                   bgColor: .gray)
                            MyCard(icon: "tv.fill",
                                   title: "유튜브 보기",
                                   Start: "3 PM",
                                   End: "5 PM",
                                   bgColor: .red)
                            MyCard(icon: "gamecontroller.fill",
                                   title: "롤 한 판하기",
                                   Start: "12 AM",
                                   End: "2 AM",
                                   bgColor: .orange)
                            MyCard(icon: "phone.fill",
                                   title: "전화 하기",
                                   Start: "미정",
                                   End: "미정",
                                   bgColor: .blue)
                        }
                        .padding()
                    } //ScrollView
                } //VStack
                
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white))
                    .padding(.trailing, 10)
                    .shadow(radius: 20)
            }
            .navigationBarTitle("Reswo._.의 할일목록", displayMode: .automatic)
            .navigationBarItems(
                
                leading: NavigationLink(destination: MyList()) {
                Image(systemName: "line.horizontal.3")
                    .font(.largeTitle)
                    .foregroundColor(.black)},
                                
                trailing: NavigationLink(destination: MyProfileView()) {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.black)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
