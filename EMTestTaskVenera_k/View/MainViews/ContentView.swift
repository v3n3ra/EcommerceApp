//
//  ContentView.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

struct ContentView: View {
    var vm = ProductViewModel()
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHStack(spacing: 15) {
                ForEach(vm.latestResponse, id: \.self) { lat in
                    UniversalGoodCell(latest: lat, imageW: 150, imageH: 230, catW: 50, catH: 20, nameW: 150)
                }.frame(width: 150, height: 200)
            }
        }
        .onAppear { vm.getLatest() }
    }
}
   /*ScrollView(.horizontal, showsIndicators: false) {
    LazyHStack(spacing: 17) {
        ForEach(vm.latestResponse, id: \.self) { latest in
            UniversalGoodCell(latest: latest)
                
        }
    }
    .frame(height: 180)*/
//    init() {
//        for fn in UIFont.familyNames {
//            print(fn)
//            for ftn in UIFont.fontNames(forFamilyName: fn) {
//                print("--\(ftn)")
//            }
//        }
//    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            ContentView()
        }
    }
}
