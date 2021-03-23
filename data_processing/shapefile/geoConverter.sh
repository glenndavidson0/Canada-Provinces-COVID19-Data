# Command Line Arguments:
# 1 - the input filename
# 2 - the output filename
# 3 - the output file type / geopandas driver
# 4 - target crs if any conversion is required
mkdir -p output
python geoConverter.py "../../raw_data/geography/lpr_000b16a_e.shp" "output/canada_provinces.geojson" "geojson" "EPSG:4326"
python geoConverter.py "../../raw_data/geography/lpr_000b16a_e.shp" "output/canada_provinces.gpkg" "gpkg" "EPSG:4326"