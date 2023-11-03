import SwiftUI
import shared

struct ContentView: View {
    let greet = Greeting().greet() + "\nResult is \(compareAll(a: 1, b: 2))\n\(fibAll(num: 42))"

	var body: some View {
		Text(greet)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
