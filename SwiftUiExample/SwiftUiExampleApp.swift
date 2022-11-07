//
//  SwiftUiExampleApp.swift
//  SwiftUiExample
//
//  Created by Luke Belton on 30/09/2022.
//

import SwiftUI
import Bugsnag

@main
struct SwiftUiExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init(){
        let config = BugsnagConfiguration.loadConfig()
        //config.endpoints = BugsnagEndpointConfiguration(notify: "https://webhook.site/964d2eb2-89e1-4624-bc14-a259d9f4b69b", sessions: "https://sessions.bugsnag.com")
        Bugsnag.start()
        
        Bugsnag.markLaunchCompleted()
    }
}
