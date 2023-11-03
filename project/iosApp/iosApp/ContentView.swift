import SwiftUI
import shared

struct ContentView: View {
    let greet = Greeting().greet() + "\nResult is \(compareAll(a: 88888888, b: 999999999))\n\(fibAll(num: 42))\n\(loopAll(num: 888888))"

	var body: some View {
		Text(greet)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
