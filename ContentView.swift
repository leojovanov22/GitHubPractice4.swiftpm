import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = [Task(nameOfTask:"Mow the Lawn"), Task(nameOfTask:"Feed the Pets"), Task(nameOfTask:"Do the Dishes")]
    var body: some View {
        List(tasks, id: \.self) { task in
            Text(task.nameOfTask)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
