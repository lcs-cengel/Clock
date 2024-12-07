//
//  AlarmsView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-06.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 28){
Text("\(Image(systemName: "bed.double.fill"))Sleep | Wake up")
                    .font(.system(size: 25.0))
                   

            }
            
            
            ExtractedView()
        }
    }
}
    
    #Preview {
        LandingView()
    }

struct ExtractedView: View {
    let Alarmtime: String
    let AlarmamOrPm: String
    
    var body: some View {
        
        
        
        VStack{
            HStack{
                //Left Side
                Text(
                    Alarmtime
                )
                .font(
                    .system(
                        size: 64.0,
                        weight: .thin,
                        design: .default
                    )
                )
                Text(
                    AlarmamOrPm
                )
                .font(
                    .system(
                        .largeTitle,
                        design: .default,
                        weight: .thin
                    )
                )
                
                Spacer()
                //Right side
                Toggle(
                    "",
                    isOn: Binding.constant(
                        true
                    )
                )
                .tint(
                    .green
                )
            }
            .padding()
        }
        .navigationTitle(
            "Alarms"
        )
        
        
        
        
        .toolbar {
            
            ToolbarItem(placement: .topBarLeading) {
                
                Button("Edit") {
                    //Does nothing right now
                }
                
            }
            
            ToolbarItem(placement: .primaryAction) {
                
                Button {
                    //Does nothing right now
                } label: {
                    Image(systemName: "plus")
                }
                
            }
            
        }
    }
}
