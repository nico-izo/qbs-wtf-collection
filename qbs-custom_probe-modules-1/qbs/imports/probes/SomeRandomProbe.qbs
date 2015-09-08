import qbs.base 1.0

Probe {
    // Inputs
    property var probeName
    // Output
    property string wtf
    // (Un)comment next line to use workaround
    property bool found

    configure: {
        print("[SomeRandomProbe] found = true")
        print("[SomeRandomProbe] probeName =", probeName)
        wtf = [1,2,3];
        found = true;
    }
}

