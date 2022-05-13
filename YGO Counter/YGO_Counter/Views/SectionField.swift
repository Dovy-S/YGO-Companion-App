import SwiftUI

struct TabField: View {
    var body: some View {
        VStack{
            HStack {
                Rectangle()
                    .modifier(CardBlankFormat())
                Rectangle()
                    .modifier(CardBlankFormat())
                ZStack {
                    Rectangle()
                        .modifier(CardMonsterFormat())
                    CardMonster()
                }
                Rectangle()
                    .modifier(CardBlankFormat())
                ZStack {
                    Rectangle()
                        .modifier(CardMonsterFormat())
                    CardMonster()
                }
                Rectangle()
                    .modifier(CardBlankFormat())
            }
            
            HStack {
                ZStack {
                    Rectangle()
                        .modifier(CardFieldFormat())
                    CardBackrow()
                }
                ForEach(1...5, id:\.self) {_ in
                    ZStack {
                        Rectangle()
                            .modifier(CardMonsterFormat())
                            
                        CardMonster()
                    }
                }
            }
            
            HStack {
                Rectangle()
                    .modifier(CardBlankFormat())
                ForEach(1...5, id:\.self) {_ in
                    ZStack {
                        Rectangle()
                            .modifier(CardBackrowFormat())
                        CardBackrow()
                    }
                }
            }
        }
    }
}

struct TabField_Previews: PreviewProvider {
    static var previews: some View {
        TabField()
.previewInterfaceOrientation(.landscapeRight)
    }
}
