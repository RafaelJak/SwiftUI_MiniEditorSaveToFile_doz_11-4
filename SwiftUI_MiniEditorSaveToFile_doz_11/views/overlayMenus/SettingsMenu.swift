//
//  SettingsMenu.swift
//  SwiftUI_MiniEditorSaveToFile_doz_11
//
//  Created by Alexander Hoch on 19.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import Foundation
import SwiftUI

struct SettingsMenu: View {
    @Binding var objColor:Color
    @Binding var sliderValue:Double


   // @State var sliderValue:CGFloat = 0
    var body: some View {
       
        HStack {
        HStack {
            VStack {
            Slider(value: $sliderValue).frame(width:200,height:100)
                
                HStack {
                    
                    Button(action: {self.objColor = Color.green}) {Text("Green").modifier(ColorBtn())}
                    Button(action: {self.objColor = Color.blue}) {Text("Blue").modifier(ColorBtn())}
                    Button(action: {self.objColor = Color.red}) {Text("Red").modifier(ColorBtn())}
                    Text("current color").frame(width:100,height:20, alignment:.center).background(objColor)
                }
            }
            
        }.onAppear{
            self.sliderValue = 0.5
        }.frame(width:400,height:150,alignment:.center).background(Color.green).cornerRadius(10).foregroundColor(Color.white)
            Text("\(sliderValue * 100,specifier: "%.2f") %") .frame(width:100,height:50).background(Color.green).cornerRadius(10).foregroundColor(Color.white)
            
            
        }
            
        }
    }
    





struct Test3:View {
    @State var sliderValue:Double = 0
    @State var objColor:Color = Color.green
    var body: some View {
    VStack{
        SettingsMenu(objColor: $objColor, sliderValue:$sliderValue)
            Text("sliderValue:\(sliderValue) + Hallo")
            
                }
            }
            
        }

struct SettingsMenu_Previews: PreviewProvider {

    static var previews: some View {
        Test3()
    }
}

