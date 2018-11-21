import strscans

proc main() =
  if paramCount() < 1:
    quit QuitFailure
  let reqVer = paramStr(paramCount())

  var reqMajor, reqMinor, reqPatch: int
  if scanf(reqVer, "$i.$i.$i", reqMajor, reqMinor, reqPatch):
    if NimMajor >= reqMajor  and NimMinor >= reqMinor and NimPatch >= reqPatch :
      quit QuitSuccess

  quit QuitFailure

main()
