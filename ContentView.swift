import SwiftUI

struct ContentView: View {
    @State var tasks: [String] = ["Mow the Lawn", "Feed the Pets", "Do the Dishes"]
    var body: some View {
        List(tasks, id: \.self) { task in
            Text(task)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
