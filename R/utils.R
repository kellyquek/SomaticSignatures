dfConvertColumns <- function(x, from = "character", to = "factor") {
    idx = sapply(x, is, from)
    x[idx] = lapply(x[idx], as, to)
    return(x)
}


setAs("character", "factor", function(from) {
    return(as.factor(from))
})


cosineSimilarity <- function(x, y) {
}


showSome <- function(x, name, indent="") {
    res <- sprintf("%s%s (%d): %s\n",
                   indent,
                   name,
                   length(x),
                   paste(selectSome(x), collapse=", ")
                   )
    return(res)
}


dna_bases <- c("A", "C", "G", "T")
