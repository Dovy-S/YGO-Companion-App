import SwiftUI

struct TabTools: View {
    @State private var diceOut = "die.face.1.fill"
    @State private var coinOut = "h.circle.fill"
    //@State var LifepointCalc().life
    
    var body: some View {
        HStack(spacing:0) {
            VStack {
//                ZStack {
//                    Rectangle()
//                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.0))
//                    Text("Reset")
//                        .modifier(ToolLabel())
//                }
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.0))
                    Text("Coin Flip")
                        .modifier(ToolLabel())
                        //.foreground(.pink)
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.0))
                    Text("Dice Roll")
                        .modifier(ToolLabel())
                }
            }
            
            VStack {
//                ZStack {
//                    Rectangle()
//                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.0))
//                    Button(action: {
//                        // Couldn't get the button to reset the @State variables
//                        CardMonster().Level = 1
//                    }, label: {
//                        Image(systemName: "arrow.counterclockwise.circle.fill")
//                            .modifier(IconReset())
//                            
//                    })
//                }
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.0))
                    Button(action: {
                        let coinRng = Int.random(in: 1...2)
                        if coinRng == 1 {
                            coinOut = "h.circle.fill" } // Heads
                        else {
                            coinOut = "t.circle.fill"} // Tails
                    }, label: {
                        Image(systemName: coinOut)
                            .modifier(IconCoin())
                    })
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.0))
                    Button(action: {
                        let diceRng = Int.random(in: 1...6)
                        diceOut = "die.face." + String(diceRng) + ".fill"
                    }, label: {
                        Image(systemName: diceOut)
                            .modifier(IconDice())
                            
                    })
                }
            }
        }
    }
}

struct TabTools_Previews: PreviewProvider {
    static var previews: some View {
        TabTools()
.previewInterfaceOrientation(.landscapeRight)
    }
}
