import qbs.base 1.0

Project {
    property bool pkgInPlace: false
    name: "test_probe_3"

    qbsSearchPaths: "./qbs/"

	references: [
        "probemodule.qbs"
    ]
}
