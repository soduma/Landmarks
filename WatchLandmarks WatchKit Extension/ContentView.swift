//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by 장기화 on 2022/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
