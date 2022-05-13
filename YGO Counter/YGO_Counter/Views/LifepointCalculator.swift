import SwiftUI

struct LifepointCalc: View {
    @State var lp = "8000"
    @State private var lpModifier = "-"
    @State private var lpVariable = ""
    @State private var lpWindow = false
    var body: some View {
        Button(action:{
            lpWindow = true
        }, label: {
            VStack(spacing: 0) {
                Text(lp)
                    .font(.system(size: 70))
                    .italic()
            }
            .padding(5)
            .background(Color(hue: 0.378, saturation: 0.537, brightness: 1.0))
            .clipShape(Rectangle())
            .cornerRadius(15)
            .shadow(radius: 10)

        })
        .modifier(ToolSection())
        .popover(isPresented: $lpWindow) {
            GeometryReader { screenGeo in
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Button(action: {
                            lpWindow = false
                        }, label: {
                            Image(systemName: "arrowshape.turn.up.backward.fill")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .modifier(CalcModButton())
                        })
                        ZStack {
                            Rectangle()
                                .frame(width: screenGeo.size.width * 0.80)
                                .modifier(CalcLifepointWindow())
                            HStack  {
                                Text(lp)
                                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 70))
                                    .foregroundColor(.white)
                                
                                Text(lpModifier)
                                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 70))
                                    .foregroundColor(.white)
                                
                                Text(String(lpVariable))
                                    .font(.system(size: 70))
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            }
                        }
                    }
                    .frame(height: screenGeo.size.height * 0.30)
                    HStack(spacing: 0) {
                        VStack(spacing: 0) {
                            Button(action: {
                                lpVariable = ""
                            }, label: {
                                Text("CLR")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcModButton())
                            })
                            Button(action: {
                                lpModifier = "+"
                            }, label: {
                                Text("+")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcModButton())
                            })
                            Button(action: {
                                lpModifier = "-"
                            }, label: {
                                Text("-")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcModButton())
                            })
                            Button(action: {
                                // gets the current life points and divides by 2
                                let dBy2_init = lp
                                let dBy2_num = Int(dBy2_init) ?? 0
                                let dBy2_val = dBy2_num / 2
                                lpModifier = "-"
                                
                                lpVariable = String(dBy2_val)
                            }, label: {
                                Text("÷2")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcModButton())
                            })
                        }
                        
                        VStack(spacing: 0) {
                            Button(action: {
                                lpVariable += "7"
                            }, label: {
                                Text("7")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "4"
                            }, label: {
                                Text("4")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "1"
                            }, label: {
                                Text("1")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "0"
                            }, label: {
                                Text("0")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })

                        }
                        
                        VStack(spacing: 0) {
                            Button(action: {
                                lpVariable += "8"
                            }, label: {
                                Text("8")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "5"
                            }, label: {
                                Text("5")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "2"
                            }, label: {
                                Text("2")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "00"
                            }, label: {
                                Text("00")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })

                        }
                        
                        VStack(spacing: 0) {
                            Button(action: {
                                lpVariable += "9"
                            }, label: {
                                Text("9")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "6"
                            }, label: {
                                Text("6")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "3"
                            }, label: {
                                Text("3")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })
                            Button(action: {
                                lpVariable += "000"
                            }, label: {
                                Text("000")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .modifier(CalcNumButton())
                            })

                        }
                        
                        Button(action: {
                            //sets up the values for maths
                            let currentLp_string = lp
                            let currentLP_int = Int(currentLp_string) ?? 0
                            
                            let changeLp_string = lpVariable
                            let changeLP_int = Int(changeLp_string) ?? 0
                            
                            // maths processing
                            if lpModifier == "-" {
                                let newLP_int = currentLP_int - changeLP_int
                                if newLP_int < 0 {
                                    lp = "0"
                                }
                                else {
                                    lp = String(newLP_int)
                                }
                            }
                            if lpModifier == "+" {
                                let newLP_int = currentLP_int + changeLP_int
                                lp = String(newLP_int)
                            }
                            
                            // resets life point change variable and closes popup
                            lpVariable = ""
                            lpWindow = false
                        }, label: {
                            Text("=")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .modifier(CalcModButton())
                        })
                    }
                }
            }
        }
    }
}

struct lpCalculator_Previews: PreviewProvider {
    static var previews: some View {
        LifepointCalc()
.previewInterfaceOrientation(.landscapeRight)
    }
}
