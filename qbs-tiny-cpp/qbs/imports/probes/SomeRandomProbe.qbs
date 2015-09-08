import qbs.base 1.0

Probe {
    // Inputs
    property var probeName
    // Output
    property var cppDefines
    // (Un)comment next line to use/see workaround
    // property bool found

    configure: {
        // change this value
        found = true

        cppDefines = ["PLEASE_COMPILE"]
    }
}

