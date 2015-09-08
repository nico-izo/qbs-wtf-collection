Product {

    name: "qbs-test"
    type: "application"
    files: ["main.cpp"]

    Depends { name: "cpp" }

    qbsSearchPaths: "./qbs/"

    Depends {
        name: "some_great_lib"
        required: false
    }

    cpp.defines: ['SOMETHING="NO"']

    Properties {
        condition: some_great_lib.present
        cpp.defines: ['SOMETHING="YES"']
    }
}
