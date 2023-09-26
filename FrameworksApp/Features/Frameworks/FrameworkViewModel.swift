//
//  FrameworkViewModel.swift
//  FrameworksApp
//
//  Created by Daniel Gabriel on 26/09/23.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
	
	var selectedFramework: Framework? {
		didSet {
			isShowingDetailView = true
		}
	}
	
	@Published var isShowingDetailView = false
	
	let columns: [GridItem] = [GridItem(.flexible()),
							   GridItem(.flexible()),
							   GridItem(.flexible())]
}
