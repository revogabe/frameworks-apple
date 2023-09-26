//
//  ButtonUI.swift
//  FrameworksApp
//
//  Created by Daniel Gabriel on 26/09/23.
//

import SwiftUI

struct ButtonUI: View {
	var title: String

	var body: some View {
		Text(title)
			.font(.title2)
			.fontWeight(.semibold)
			.frame(width: 280, height: 50)
			.background(.blue)
			.foregroundColor(.white)
			.clipShape(RoundedRectangle(cornerRadius: 10))
	}
}

#Preview {
	ButtonUI(title: "Learn More")
}
