//
//  Checkout.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/20/23.
//

import SwiftUI

struct Checkout: View {
    let t = Stocks()
    @State var index = 0
    var body: some View {
        VStack {
            HStack {
                Text("$ 872.27")
                    .font(.system(size: 21, weight: .semibold, design: .default))
                    .foregroundColor(.primary)
                Spacer()
                Text("Round 1 Complete")
                    .font(.system(size: 21, weight: .semibold, design: .default))
            }
            ZStack {
                RoundedRectangle(cornerRadius: 38, style: .continuous)
                    .stroke(.primary, lineWidth: 2)
                    .background(RoundedRectangle(cornerRadius: 38, style: .continuous).fill(.primary.opacity(0)))
                    .frame(width: 378, height: 621)
                    .clipped()
                VStack {
                    Text("Thank you for your purchase !")
                        .font(.system(size: 36, weight: .semibold, design: .default))
                    Rectangle()
                        .foregroundColor(.primary)
                        .frame(width: 319, height: 1)
                        .clipped()
                    ZStack {
                        
                                Image(t.logo[0])
                                    .logoFormat()
                            .clipped()
                            .padding(.top)
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.black
                                    , lineWidth: 2)
                            .frame(width: 210, height: 210)
                            .clipped()
                            .padding(.top)
                    }
                    Text(t.name[0])
                        .stockTitle()
                        .font(.system(size: 36, weight: .semibold, design: .default))
                    Rectangle()
                        .foregroundColor(.primary)
                        .frame(width: 319, height: 1)
                        .clipped()
                    Text(t.stockPrice[0])
                        .font(.system(size: 25, weight: .medium, design: .default))
                    Text(t.stockPrice[0])
                        .padding()
                        .font(.system(size: 25, weight: .regular, design: .default))
                }
            }
        }
        
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
    }
}
