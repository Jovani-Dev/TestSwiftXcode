//
//  ContentView.swift
//  2719357_EF_04
//
//  Created by Jovani on 2025-01-24.
//

import SwiftUI

struct ContentView: View {

    @State private var textEntre: String = ""
    @State private var textResultat: String = ""

    var body: some View {
        VStack {
            
            padding()
            padding()
            padding()
            
            Text("Palindrome?")
            
            TextField("Entrez un mot", text: $textEntre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        
    
            Button(action: Palindrome) {
            Text("Vérifier")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        
        Text(textResultat)
            .padding()
        Spacer()
        }
        .padding()
    }
    
    func Palindrome() {
        let textEfface = textEntre.lowercased().replacingOccurrences(of: " ", with: "")
        let textRenverse = String(textEfface.reversed())
        if textEfface == textRenverse {
            textResultat = "\(textEntre) est un palindrome."
        } else {
            textResultat = "\(textEntre) n'est pas un palindrome."
        }
    }
}

#Preview {
    ContentView()
}
