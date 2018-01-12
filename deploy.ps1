$steampaths = ("C:\Program Files\Steam",
    "C:\Program Files (x86)\Steam",
    "G:\Program Files\Steam")

foreach ($steampath in $steampaths) {
    if ((Test-Path $steampath)) {
        $csgoprofiles = (gci "${steampath}\userdata\[0-9]*\730\local\cfg")
        foreach ($csgoprofile in $csgoprofiles) {
            echo "Deploying to '${csgoprofile}'"
            copy *.cfg $csgoprofile
        }
    }
}
