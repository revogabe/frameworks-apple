//
//  FrameworkDetailView.swift
//  FrameworksApp
//
//  Created by Daniel Gabriel on 26/09/23.
//

import SwiftUI

struct FrameworkDetailView: View {
	var framework: Framework
	@Binding var isShowingDetailView: Bool
	@State private var isShowingSafariView = false
	
	var body: some View {
		VStack {
			HStack {
				Spacer()
				
				Button {
					isShowingDetailView = false
				} label: {
					Image(systemName: "xmark")
						.foregroundColor(Color(.label))
						.imageScale(.large)
						.frame(width: 44, height: 44)
				}
			}
			
			Spacer()
			
			FrameworkTitleView(framework: framework)
			ScrollView {
				Text(framework.description)
					.font(.body)
					.padding()
			}
			
			Spacer()
			
			Button {
				isShowingSafariView = true
			} label: {
//				ButtonUI(title: "Learn More")
				Label("Learn More", systemImage: "book.fill")
					.padding(.horizontal)
			}
			.buttonStyle(.borderedProminent)
			.controlSize(.large)
			.tint(.blue)
			.padding(.vertical, 28)
		}
		.sheet(isPresented: $isShowingSafariView) {
			SafariView(url: URL(string: framework.urlString)!)
		}
	}
}

#Preview {
	FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}

