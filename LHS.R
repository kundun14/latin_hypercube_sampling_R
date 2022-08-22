
#http://ncss-tech.github.io/soil-pit/sandbox/dave/clhs.html
library(rgdal)
library(raster)
library(clhs)
library(lattice)
library(rasterVis)

#dir.create("./clhs", recursive = TRUE)

download.file(url = "http://github.com/dave-white2/data/raw/master/clhs/clhs_data.zip", 
              destfile = "clhs.zip",
              method = "auto")

unzip(zipfile = "clhs.zip", overwrite = TRUE)

#cargar los rasters

r.claymin = raster("claymin.tif")
r.mrrtf = raster("mrrtf.tif")
r.mrvbf = raster("mrvbf.tif")
r.ndvi = raster("ndvi.tif")
r.sagawi = raster("sagawi.tif")
r.cost = raster("cost.tif")

r.stack = stack(r.claymin, r.mrrtf, r.mrvbf, r.ndvi, r.sagawi)
names(r.stack) = c('claymin', 'mrrtf', 'mrvbf', 'ndvi', 'sagawi')

# load raster stack into memory for faster sampling
r.stack = readAll(r.stack)

# muestreo cLHS
#Convert the raster stack to a SpatialPointsDataFrame

s = rasterToPoints(r.stack, spatial=TRUE) # spatial=TRUE genera un spatialpointsdatframe 


s.clhs = clhs(s, size = 10, progress = TRUE, iter = 1000, simple = FALSE)
plot(s.clhs, mode="dens")
subset.idx = s.clhs$index_samples
subset.pts = s[subset.idx, ]

plot(r.sagawi, axes=FALSE)
points(s[subset.idx, ], bg = 'red', pch=21)


writeOGR(s[subset.idx, ],
         dsn = 'clhs', 
         layer = 'clhs_points_rgrd',
         driver = 'ESRI Shapefile', 
         overwrite_layer = TRUE)