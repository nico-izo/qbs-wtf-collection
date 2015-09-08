import qbs.base 1.0
import "../imports/probes/SomeRandomProbe.qbs" as SomeRandomProbe

Module {
    property string moduleName

    Depends { name: "cpp" }

    SomeRandomProbe {
        id: probe

        condition: {
            var simpleCondition = typeof moduleName !== "undefined"
            print("[CommonModule.probe.condition]", simpleCondition)
            return simpleCondition
        }
        probeName: moduleName
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

