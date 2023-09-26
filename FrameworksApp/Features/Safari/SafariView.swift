//
//  SafariView.swift
//  FrameworksApp
//
//  Created by Daniel Gabriel on 26/09/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

	let url: URL

	func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
		SFSafariViewController(url: url)
	}

	func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}


