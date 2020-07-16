//
//  CustomAlertView.swift
//  Custom Alert View
//
//  Created by Prashant Gaikwad on 06/07/20.
//

import SwiftUI

struct CustomAlertView: View {
    
    @Binding var showAlert: Bool
    
    var body : some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    Spacer()
                    Button(action: {
                        showAlert.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
                Spacer()
            }
            
        }
        .frame(width: 200, height: 200)
        .background(Color.black)
        .cornerRadius(20)
        
    }
    
}
