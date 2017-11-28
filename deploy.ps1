$steamprofiles = (gci "G:\Program Files\Steam\userdata\[0-9]*\730\local\cfg")

foreach ($dir in $steamprofiles) {
    copy *.cfg $dir
}
