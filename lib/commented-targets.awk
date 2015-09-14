BEGIN {
  FS = "\n"
  ORS = ""
  RS = ""
}

/^#[^\n]+?\n[^\.]+?:/ {
  sub(/^# */, "", $1)
  sub(/:.+*/, "", $2)

  print length($2), $2, $1 "\n"
}
