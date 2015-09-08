import qbs.base 1.0

Probe {
    // Inputs
    property var probeName
    // Output
    property string wtf
    // (Un)comment next line to use/see workaround
    property bool found

    configure: {
        // change this value
        found = false
        print("[SomeRandomProbe] found = ", found)
        print("[SomeRandomProbe] probeName =", probeName)

        wtf = [1,2,3]; // just to test parameters
    }
}

