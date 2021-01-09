//
//  Calculator.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw

import SwiftUI

struct Calculator: View {
    @State var num = "0"
    @State var iNum=0
    @State var fNum=0
    @State var eq = ""
    @State var isDouble = false
    @State var e = false
    @State var isEq = false
    
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing:10){
                Spacer()
                HStack{
                    Spacer()
                    Text("\(num)")
                        .modifier(TitleModifier())
                        .animation(.easeIn(duration: 0.1))
                }
                HStack{
                    Text("C").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            num="0"
                            fNum = 0
                            iNum = 0
                            e = false
                        }
                    Text("±").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            iNum = Int(num)!
                            iNum *= -1
                            num = "\(iNum)"
                            e = false
                        }
                    Text("%").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            iNum = Int(num)!
                            iNum/=100
                            num = "\(iNum)"
                            e = false
                        }
                    Text("÷").modifier(ButtonModifier(type: .orange))
                        .onTapGesture {
                            iNum=Int(num)!
                            fNum = iNum
                            eq = "Div"
                            e = false
                            isEq = true
                        }
                }
                HStack{
                    Text("7").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num == "0"{
                                    num=""
                                    num+="7"
                                }else{
                                    num+="7"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="7"
                                }else{
                                    num+="7"
                                }
                            }
                        }
                    Text("8").modifier(ButtonModifier(type: .gray)).onTapGesture {
                        e = false
                        if !isEq{
                            if num == "0"{
                                num=""
                                num+="8"
                            }else{
                                num+="8"
                            }
                        }else{
                            if num == String(fNum){
                                num=""
                                num="8"
                            }else{
                                num+="8"
                            }
                        }
                    }
                    Text("9").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num == "0"{
                                    num=""
                                    num+="9"
                                }else{
                                    num+="9"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="9"
                                }else{
                                    num+="9"
                                }
                            }
                        }
                    Text("×").modifier(ButtonModifier(type: .orange))
                        .onTapGesture {
                            e = false
                            
                            iNum=Int(num)!
                            fNum = iNum
                            eq = "Mul"
                            isEq = true
                        }
                }
                HStack{
                    Text("4").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num == "0"{
                                    num=""
                                    num+="4"
                                }else{
                                    num+="4"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="4"
                                }else{
                                    num+="4"
                                }
                            }
                        }
                    Text("5").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num=="0"{
                                    num=""
                                    num+="5"
                                }else{
                                    num+="5"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="5"
                                }else{
                                    num+="5"
                                }
                            }
                        }
                    Text("6").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num == "0"{
                                    num=""
                                    num+="6"
                                }else{
                                    num+="6"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="6"
                                }else{
                                    num+="6"
                                }
                            }
                        }
                    Text("-").modifier(ButtonModifier(type: .orange))
                        .onTapGesture {
                            e = false
                            iNum=Int(num)!
                            fNum = iNum
                            eq = "Sup"
                            isEq = true
                        }
                }
                HStack{
                    Text("1").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num == "0"{
                                    num=""
                                    num+="1"
                                }else{
                                    num+="1"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="1"
                                }else{
                                    num+="1"
                                }
                            }
                        }
                    Text("2").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num == "0"{
                                    num=""
                                    num+="2"
                                }else{
                                    num+="2"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="2"
                                }else{
                                    num+="2"
                                }
                            }
                        }
                    Text("3").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num == "0"{
                                    num=""
                                    num+="3"
                                }else{
                                    num+="3"
                                }
                            }else{
                                if num == String(fNum){
                                    num=""
                                    num="3"
                                }else{
                                    num+="3"
                                }
                            }
                        }
                    Text("+").modifier(ButtonModifier(type: .orange))
                        .onTapGesture {
                            e = false
                            iNum=Int(num)!
                            fNum = iNum
                            eq="Add"
                            isEq = true
                        }
                }
                HStack{
                    Text("0").modifier(Zero())
                        .onTapGesture {
                            e = false
                            if !isEq{
                                if num != "0"{
                                    num+="0"
                                }
                            }else{
                                num+="0"
                            }
                        }
                    Text(".").modifier(ButtonModifier(type: .gray))
                        .onTapGesture {
                            e = false
                            if !num.contains("."){
                                isDouble = true
                                num+="."
                            }
                        }
                    Text("=").modifier(ButtonModifier(type: .orange))
                        .onTapGesture {
                            e=true
                            iNum=Int(num)!
                            if eq == "Div"{
                                iNum = fNum / iNum
                                fNum=iNum
                                num="\(iNum)"
                            }else if eq == "Mul"{
                                iNum *= fNum
                                fNum=iNum
                                num="\(iNum)"
                            }else if eq == "Sup"{
                                iNum = fNum - iNum
                                fNum=iNum
                                num="\(iNum)"
                            }else if eq == "Add"{
                                iNum = fNum + iNum
                                fNum=iNum
                                num="\(iNum)"
                            }
                        }
                }
            }
            .padding()
        }
    }
}

/** # Don't touch this code at all
 This code is to minimize the code you write for each button.
 You create modifiers and add them to each button, and they will all share same modifiers
 */

// 1. Title Modifier: To present the result
struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 120, weight: .thin, design: .default))
            .foregroundColor(.white)
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
}

// 2. Button Modifier:
struct ButtonModifier: ViewModifier{
    enum `Type`{case gray, orange, zero}
    var type: Type
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .frame(width: type == .zero ? 190 : 80, height: 80)
            .background(self.type == .gray ? Color.gray : Color.orange)
            .clipShape(Circle())
            .foregroundColor(Color.white)
            .padding(2)
    }
}

// 3. Zero Modifier, this view modifier for 0 specifically, where it width is
struct Zero: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .multilineTextAlignment(.leading)
            .frame(width:  190 , height: 80)
            .background(Color.gray)
            .clipShape(Capsule())
            .foregroundColor(Color.white)
        
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()//.environment(\.colorScheme, .dark)
    }
}
