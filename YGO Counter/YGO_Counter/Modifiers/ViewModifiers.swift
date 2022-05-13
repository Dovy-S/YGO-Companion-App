import SwiftUI

struct ToolLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .foregroundColor(.black)
    }
}
struct IconCoin: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 50))
            .foregroundColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0))
    }
}
struct IconDice: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 50))
            .foregroundColor(.red)
    }
}
struct IconReset: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 50))
            .foregroundColor(.blue)
    }
}
struct ToolSection: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(10)
            .foregroundColor(.black)
            //.shadow(radius: 5)
    }
}

struct CardMonsterFormat: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(hue: 0.114, saturation: 0.429, brightness: 0.858))
            .border(.black)
            .cornerRadius(5)
            .shadow(radius: 5)
        
    }
}
struct CardBackrowFormat: ViewModifier {
    func body(content: Content) -> some View {
        content
            //.foregroundColor(Color(red: 0.4627, green: 0.8392, blue: 1.0))
            .foregroundStyle(
                LinearGradient(gradient: Gradient(colors: [.purple, .white, .green]), startPoint: .top, endPoint: .bottom)
            )
            .border(.black)
            .cornerRadius(5)
            .shadow(radius: 5)
    }
}
struct CardFieldFormat: ViewModifier {
    func body(content: Content) -> some View {
        content
            //.foregroundColor(Color(red: 0.4627, green: 0.8392, blue: 1.0))
            .foregroundColor(Color(red: 0.392, green: 0.825, blue: 0.517))
            .border(.black)
            .cornerRadius(5)
            .shadow(radius: 5)
    }
}
struct CardBlankFormat: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .border(.white)
    }
}
struct CardModifierIcon: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 20))
    }
}

struct CalcNumButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .background(.cyan)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .clipShape(Rectangle())
            .border(.white)
            //.fontWeight(.bold)
            //.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CalcModButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .background(Color(hue: 0.618, saturation: 1.0, brightness: 0.826))
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .clipShape(Rectangle())
            .border(.white)
    }
}

struct CalcLifepointWindow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(hue: 0.618, saturation: 1.0, brightness: 0.826))
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .clipShape(Rectangle())
            .border(.white)
    }
}
