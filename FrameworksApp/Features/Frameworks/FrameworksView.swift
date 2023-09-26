//
//  FrameworkView.swift
//  FrameworksApp
//
//  Created by Daniel Gabriel on 26/09/23.
//

import SwiftUI

struct FrameworkView: View {

	@StateObject var viewModel = FrameworkViewModel()

	var body: some View {
		NavigationStack {
			ScrollView {
				LazyVGrid(columns: viewModel.columns, spacing: 8) {
					ForEach(MockData.frameworks) { framework in
						NavigationLink(value: framework) {
							FrameworkTitleView(framework: framework)
								.onTapGesture {
								viewModel.selectedFramework = framework
							}
						}
					}
				}
			}
				.navigationTitle("🍎 Frameworks")
				.sheet(isPresented: $viewModel.isShowingDetailView) {
					FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
			}
		}
	}
}

struct FrameworkTitleView: View {
	let framework: Framework

	var body: some View {
		VStack(spacing: 8) {
			Image(framework.imageName)
				.resizable()
				.frame(width: 80, height: 80)

			Text(framework.name)
				.font(.title3)
				.fontWeight(.semibold)
				.foregroundStyle(Color(.label))
				.scaledToFit()
				.minimumScaleFactor(0.6)
		}
			.padding()
	}
}

#Preview {
	FrameworkView()
		.preferredColorScheme(.dark)
}
