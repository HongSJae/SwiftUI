//
//  MyGeometryReaderVStack.swift
//  SwiftUI_Layout_practice
//
//  Created by 홍승재 on 2022/08/03.
//

import SwiftUI

enum index {
    case one, two, three
}

struct MyGeometryReaderVStack: View {
    
    @State
    var index: index = .one
    let centerPosision: (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Button(action: {
                    print("버튼 1이 클릭되었습니다")
                    withAnimation {
                        index = .one
                    }
                }) {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height/3)
                        .padding(.horizontal, index == .one ? 50 : 0)
                        .foregroundColor(.white)
                        .background(.red)
                }
                Button {
                    print("버튼 2가 클릭되었습니다")
                    withAnimation {
                        index = .two
                    }
                } label: {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height/3)
                        .foregroundColor(.white)
                        .padding(.horizontal, index == .two ? 50 : 0)
                        .background(.blue)
                }
                
                Button {
                    print("버튼 3이 클릭되었습니다")
                    withAnimation {
                        index = .three
                    }
                } label: {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height/3)
                        .padding(.horizontal, index == .three ? 50 : 0)
                        .foregroundColor(.white)
                        .background(.green)
                }
            }
            .position(centerPosision(proxy))
        }
        .background(.yellow)
    }
}

struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
