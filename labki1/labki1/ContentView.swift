//
//  ContentView.swift
//  labki1
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("KALKULATOR")
                    .font(.largeTitle)
                TextField(
                    "WYNIK",
                    text: $text
                )
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke( lineWidth: 5)
                )
                HStack {
                    Button(action: {
                        text += "1"
                    }) {
                        Text("1")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += "2"
                    }) {
                        Text("2")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += "3"
                    }) {
                        Text("3")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                }
                HStack {
                    Button(action: {
                        text += "4"
                    }) {
                        Text("4")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += "5"
                    }) {
                        Text("5")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += "6"
                    }) {
                        Text("6")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                }
                HStack {
                    Button(action: {
                        text += "7"
                    }) {
                        Text("7")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += "8"
                    }) {
                        Text("8")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += "9"
                    }) {
                        Text("9")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                }
                HStack {
                    Button(action: {
                        text += "0"
                    }) {
                        Text("0")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += " + "
                    }) {
                        Text("+")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += " - "
                    }) {
                        Text("-")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                }
                HStack {
                    Button(action: {
                        text += " * "
                    }) {
                        Text("*")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text += " / "
                    }) {
                        Text("/")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button(action: {
                        text = " sin "
                    }) {
                        Text("sin")
                            .frame(width: 76, height: 20)
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                }
                Button(action: oblicz) {
                    Text("Oblicz")
                        .frame(width: 323, height: 20)
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
            }
            .padding()
        }
    }
    
    
    
    func oblicz(){
        var res: Int = 0
        var op: String = ""
        for val in text{
            if let intVal = val.wholeNumberValue {
                //let sin = Float(intVal)
                if op != "" {
                    switch(op) {
                    case "+": res = Operations().Addition(v1: res, v2: intVal); break
                    case "-": res = Operations().Substraction(v1: res, v2: intVal); break
                    case "*": res = Operations().Multiplication(v1: res, v2: intVal); break
                    
                    //case "sin": res = Operations().Sinus(v1: Float(sin)); break
                    default: res = Operations().Division(v1: res, v2: intVal); break
                    }
                    op = ""
                }
                else {
                    res = intVal
                }
                
            }
            else if val == "+" {
                op = "+"
            }
            else if val == "-" {
                op = "-"
            }
            else if val == "*" {
                op = "*"
            }
            else if val == "/" {
                op = "/"
            }
        }
        text = String(res)
    }
}

#Preview {
    ContentView()
}
