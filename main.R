library(text2map)

# load example word embeddings
data(ft_wv_sample)

space1 <- c("spacecraft", "rocket", "moon")
# centroid extractor
cen1 <- get_centroid(anchors = space1, wv = ft_wv_sample)

space2 <- c("spacecraft rocket moon")
cen2 <- get_centroid(anchors = space2, wv = ft_wv_sample)

# test two objects for being exactly equal
identical(cen1, cen2)
#######################################

#######################################
#######################################

gen <- data.frame( add = c("woman"),subtract = c("man"))
#  direction extractor
dir <- get_direction(anchors = gen, wv = ft_wv_sample)

# dir <- get_direction(anchors = gen, wv = ft_wv_sample,method = "PCA")
