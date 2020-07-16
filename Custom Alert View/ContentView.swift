//
//  ContentView.swift
//  Custom Alert View
//
//  Created by Prashant Gaikwad on 06/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            
            NavigationView {
                
                List(0..<100) { _ in
                    Image(systemName: "person")
                    Text("Prashant iOS Dev")
                }
                
                
                .navigationTitle("Welcome")
                .navigationBarItems(trailing:
                
                Button(
                    action: {
                        showAlert.toggle()
                    }, label: {
                        Text("Add")
                    }
                ))
            }
            .blur(radius: showAlert ? 30 : 0)
            
            if showAlert {
                CustomAlertView(showAlert: $showAlert)
            }
            
        }
        .animation(.spring())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
