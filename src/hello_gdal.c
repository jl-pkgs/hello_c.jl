#include <stdio.h>

#include "cpl_conv.h"  // for CPLMalloc()
#include "gdal.h"

int main(int argv, char **args) {
  GDALDatasetH hDataset;
  GDALAllRegister();

  hDataset = GDALOpen("data/MOD13A2_Henan_2015_2020_10km.tif", GA_ReadOnly);
  if (hDataset == NULL) {
    printf("Failed to open file\n");
    exit(1);
  }

  printf("Driver: %s/%s\n",
         GDALGetDriverShortName(GDALGetDatasetDriver(hDataset)),
         GDALGetDriverLongName(GDALGetDatasetDriver(hDataset)));
  printf("Size is %dx%dx%d\n",
         GDALGetRasterXSize(hDataset),
         GDALGetRasterYSize(hDataset),
         GDALGetRasterCount(hDataset));

  GDALClose(hDataset);
  return 0;
}
