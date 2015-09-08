import qbs.base 1.0
import "../imports/probes/SomeRandomProbe.qbs" as SomeRandomProbe

Module {
    property string probeName

    Depends { name: "cpp" }

    SomeRandomProbe {
        id: probe

        condition: {
            var simpleCondition = typeof probeName !== "undefined"
            print("[CommonModule.probe.condition]", simpleCondition)
            return simpleCondition
        }
        name: probeName
    }
    
    condition: {
        print("[CommonModule.condition] = ", probe.found)
        return probe.found
    }


    Properties {
        condition: {
            print("[CommonModule.Properties] Some useful stuff here")
            return probe.found
        }
        cpp.includePaths: {
            print("[CommonModule.Props...]", probe.wtf);
            return ["/usr/include/"];
        }
    }
}

