//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by 장기화 on 2022/04/14.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var wifi = true
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Toggle(isOn: $wifi) {
                Text("enable")
            }
            
            TextField("여기에 입력", text: $userName)
                .padding()
            if userName.isEmpty {
            Text("입력해주세요")
            } else {
                Text(userName)
            }
            
            Image(systemName: wifi ? "wifi" : "wifi.slash")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
