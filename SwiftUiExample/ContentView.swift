//
//  ContentView.swift
//  SwiftUiExample
//
//  Created by Luke Belton on 30/09/2022.
//
// https://webhook.site/964d2eb2-89e1-4624-bc14-a259d9f4b69b

import SwiftUI
import Bugsnag

struct ContentView: View {
    var body: some View {
        
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
        }
        .padding()
        
        Button("Report to Bugsnag") {
            do {
                try FileManager.default.removeItem(atPath:"//invalid/file")
            } catch {
                Bugsnag.notifyError(error);
            }
        }
        
        Button("NSException") {
            let exception = NSException(name:NSExceptionName(rawValue: "NamedException"),
                                        reason:"Something happened",
                                        userInfo:nil)
            Bugsnag.notify(exception)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


