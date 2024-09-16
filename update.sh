#!/bin/env bash

# https://www.soumu.go.jp/main_sosiki/joho_tsusin/top/tel_number/number_shitei.html
curl https://www.soumu.go.jp/main_content/000697573.xlsx --output 050.xlsx
curl https://www.soumu.go.jp/main_content/000697577.xlsx --output 0120.xlsx
curl https://www.soumu.go.jp/main_content/000697579.xlsx --output 0800.xlsx

# sudo apt install xlsx2csv
xlsx2csv 050.xlsx  > 050.csv
xlsx2csv 0120.xlsx > 0120.csv
xlsx2csv 0800.xlsx > 0800.csv
