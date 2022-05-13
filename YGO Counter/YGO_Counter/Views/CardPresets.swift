import SwiftUI

struct CardMonster: View {
    @State var Level = 1
    @State var Counter = 0
    var body: some View {
        VStack {
            //Level Tracker
            VStack(spacing: 0) {
                Image(systemName: "star.circle.fill")
                    .foregroundColor(.black)
                ZStack {
                    Text(String(Level))
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        
                    // Buttons for level tracker
                    HStack {
                        Button( action: {
                            if Level > 1 {
                                Level -= 1
                            }
                        }, label: {
                            Image(systemName: "minus.rectangle.portrait")
                                .modifier(CardModifierIcon())
                        })
                        Spacer() // auto spacer between buttons so they're edge of the card
                        Button( action: {
                            if Level < 99 {
                                Level += 1
                            }
                        }, label: {
                            Image(systemName: "plus.rectangle.portrait")
                                .modifier(CardModifierIcon())
                        })
                    }
                }
            }
            
            //Counter Tracker
            VStack(spacing: 0) {
                Image(systemName: "arrowtriangle.down.circle.fill")
                    .foregroundColor(.black)
                ZStack {
                    Text(String(Counter))
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    // Buttons for Counter tracker
                    HStack {
                        Button( action: {
                            if Counter > 0 {
                                Counter -= 1
                            }
                        }, label: {
                            Image(systemName: "minus.rectangle.portrait")
                                .modifier(CardModifierIcon())
                        })
                        Spacer() // auto spacer between buttons so they're edge of the card
                        Button( action: {
                            if Counter < 99 {
                                Counter += 1
                            }
                        }, label: {
                            Image(systemName: "plus.rectangle.portrait")
                                .modifier(CardModifierIcon())
                        })
                    }
                }
            }
        }
    }
}

struct CardBackrow: View {
    @State private var Counter = 0
    var body: some View {
        //Counter Tracker
        VStack(spacing: 0) {
            Image(systemName: "arrowtriangle.down.circle.fill")
                .foregroundColor(.black)
            ZStack {
                Text(String(Counter))
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                // Buttons for Counter tracker
                HStack {
                    Button( action: {
                        if Counter > 0 {
                            Counter -= 1
                        }
                    }, label: {
                        Image(systemName: "minus.rectangle.portrait")
                            .modifier(CardModifierIcon())
                    })
                    Spacer() // auto spacer between buttons so they're edge of the card
                    Button( action: {
                        if Counter < 99 {
                            Counter += 1
                        }
                    }, label: {
                        Image(systemName: "plus.rectangle.portrait")
                            .modifier(CardModifierIcon())
                            .foregroundColor(.black)
                    })
                }
            }
        }
    }
}

//struct CardMonster_Previews: PreviewProvider {
//    static var previews: some View {
//        CardMonster()
//.previewInterfaceOrientation(.landscapeRight)
//    }
//}
