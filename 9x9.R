for (i in 1:9) {
  for (j in 1:9) {
    k = i * j
    cat(i,"x",j,"=",k,"\t",sep="")
  }
  cat("\n")
}
