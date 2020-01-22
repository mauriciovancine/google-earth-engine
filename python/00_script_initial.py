# google earth engine in python - linux

# install pip
sudo apt install pip

# install libraries
pip install earthengine-api ee

# authorize access to your Earth Engine account
earthengine authenticate

# initiate python
import ee
ee.Initialize()
image = ee.Image('CGIAR/SRTM90_V4')
image.bandNames().getInfo()
