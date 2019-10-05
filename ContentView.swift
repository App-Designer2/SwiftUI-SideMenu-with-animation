//
//  ContentView.swift
//  SideMenu
//
//  Created by App-Designer2 . on 05.10.19.
//  Copyright © 2019 App-Designer2 . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var menu: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
            List {
                Text("KLK")
                }
                
                Group {
                    if self.menu {
                    MenuView()
                        .position(x: 170, y: 280)
                        .animation(.some(.linear(duration: 0.30)))
                        
                        //.blendMode(.hardLight)
                        //.rotation3DEffect(Angle(degrees: 60), axis: (x: 0, y: 10, z: 10))
                    .padding()
                    }
                }
            }.navigationBarTitle(Text(self.menu ? "" : "Side Menu"))
                .navigationBarItems(trailing: Button(action: {self.menu.toggle()}) {
                    Image(systemName: "line.horizontal.3.decrease")
                }).foregroundColor(.black)
        }
    }
}


struct MenuView : View {
    @State private var schemeMode: Bool = false
    @State private var changeMode: Bool = false
    var body: some View {
        ZStack(alignment: .topLeading) {
        Rectangle()
            .fill(Color.white)
            .frame(width: 300, height: 700)
        .cornerRadius(20)
            .shadow(color: .gray, radius: 8)
            .position(x: 150, y: 255)
            
            VStack(alignment: .leading, spacing: 20) {
                Button(action: {}) {
            HStack {
                Image(systemName: "person.circle").font(.system(size: 25))
                    .foregroundColor(.black)
                Text("Profile").foregroundColor(.black)
                    }
            }
                Button(action: {}) {
                HStack {
                    Image(systemName: "creditcard").font(.system(size: 25))
                        .foregroundColor(.black)
                    Text("Payment methods").foregroundColor(.black)
                    }
                }
                
                Button(action: {}) {
                HStack {
                    Image(systemName: "folder").font(.system(size: 25))
                    .foregroundColor(.black)
                    Text("Documents").foregroundColor(.black)
                    }
                }
                
                Button(action: {
                    self.schemeMode.toggle()
                    self.changeMode.toggle()
                }) {
                HStack {
                    Image(systemName: self.schemeMode ? "moon.stars.fill": "sun.min.fill").font(.system(size: 25))
                        .foregroundColor((self.schemeMode == true) ?
                            Color.black :
                            Color.orange)
                    Text(self.changeMode ? "DarkMode" : "LightMode").foregroundColor(.black)
                    }//.rotation3DEffect(Angle(degrees: 60), axis: (x: 0, y: 10, z: 0))
                }
                
                Button(action: {}) {
                HStack {
                    Image(systemName: "gear").font(.system(size: 25))
                    .foregroundColor(.black)
                    Text("Setting").foregroundColor(.black)
                    }
                }
                
                Button(action: {}) {
                HStack {
                    Image(systemName: "power").font(.system(size: 25))
                    .foregroundColor(.black)
                    Text("Logout").foregroundColor(.black)
                    }
                }
//                if
//                self.schemeMode &&
//                    self.changeMode {
//                    //ContentView()
//                        MenuView()
//                    .environment(\.colorScheme, .dark)
//                } else {
//                    .environment(\.colorScheme, .light)
//                }
            }.padding()
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
