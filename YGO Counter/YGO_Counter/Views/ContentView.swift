import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { screenGeo in
            HStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: screenGeo.size.width * 0.30)
                    VStack {
                        //Calls the life point calculator
                        LifepointCalc()
                        
                        //Calls the tool section of the left side
                        TabTools()
                            .modifier(ToolSection())
                    }
                }
                
                ZStack {
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: screenGeo.size.width * 0.70)
                        //.border(.black)
                    TabField()
                        .padding(.vertical, 7)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
