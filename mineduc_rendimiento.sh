#!/usr/bin/ bash
curl -k -o rendimiento2021.rar https://datosabiertos.mineduc.cl/wp-content/uploads/2022/04/Rendimiento-2021.rar && 
curl -k -o rendimiento2020.rar https://datosabiertos.mineduc.cl/wp-content/uploads/2021/12/Rendimiento-2020.rar && 
curl -k -o rendimiento2019.rar https://datosabiertos.mineduc.cl/wp-content/uploads/2021/12/Rendimiento-2019.rar && 
curl -k -o rendimiento2018.rar https://datosabiertos.mineduc.cl/wp-content/uploads/2021/12/Rendimiento-2018.rar && 
curl -k -o rendimiento2017.rar https://datosabiertos.mineduc.cl/wp-content/uploads/2021/12/Rendimiento-2017.rar && 
curl -k -o rendimiento2016.rar https://datosabiertos.mineduc.cl/wp-content/uploads/2021/12/Rendimiento-2016.rar && 
unrar e rendimiento2021.rar && 
unrar e rendimiento2020.rar && 
unrar e rendimiento2019.rar && 
unrar e rendimiento2018.rar && 
unrar e rendimiento2017.rar && 
unrar e rendimiento2016.rar && 
bq load --autodetect --source_format=CSV --field_delimiter=";" educacion.rendimiento_2021 ./20220302_Rendimiento_2021_20220131_WEB.csv && 
bq load --autodetect --source_format=CSV --field_delimiter=";" educacion.rendimiento_2020 ./20210223_Rendimiento_2020_20210131_WEB.csv && 
bq load --autodetect --source_format=CSV --field_delimiter=";" educacion.rendimiento_2019 ./20200220_Rendimiento_2019_20200131_PUBL.csv && 
bq load --autodetect --source_format=CSV --field_delimiter=";" educacion.rendimiento_2018 ./20190220_Rendimiento_2018_20190131_PUBL.csv && 
bq load --autodetect --source_format=CSV --field_delimiter=";" educacion.rendimiento_2017 ./20180213_Rendimiento_2017_20180131_PUBL.csv && 
bq load --autodetect --source_format=CSV --field_delimiter=";" educacion.rendimiento_2016 ./20170216_Rendimiento_2016_20170131_PUBL.csv