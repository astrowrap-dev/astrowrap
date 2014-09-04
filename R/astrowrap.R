astrowrap <- function(test_name, ...) {
  load(func_pack)
  req_pack <- as.character(func_pack[func_pack[,1]==test_name, 2])
  garb <- sapply(req_pack, FUN=function(x) suppressMessages(require(x, character.only=TRUE, quietly=TRUE, warn.conflicts=FALSE)))
  args_list <- as.list(substitute(list(...)))[-1L]
  do.call(test_name, args_list)
}