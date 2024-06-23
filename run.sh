#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate ipcc_ch7

DIR=Chapter-7

# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Box_7_2_Figure_1.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_3.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_4.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_5.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_6.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_7.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_8.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_16.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_18.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_21.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_7_22.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_FAQ_7_3_Figure_1.png

# Apply changes to produce figure of $DIR

echo Patching $DIR
cd $DIR
pip install -e .

patch < ../${DIR}.patch

cd notebooks/

# Box_7_2_Figure_1
jupyter nbconvert --to script ./350_chapter7_box7.2_fig1.ipynb
python ./350_chapter7_box7.2_fig1.py
mv ../figures/box7.2_fig1.pdf ../../IPCC_AR6_WGI_Box_7_2_Figure_1_repro.pdf
mv ../figures/box7.2_fig1.png ../../IPCC_AR6_WGI_Box_7_2_Figure_1_repro.png

# Figure 7.3
jupyter nbconvert --to script ./300_chapter7_fig7.3.ipynb
python ./300_chapter7_fig7.3.py
mv ../figures/fig7.3.pdf ../../IPCC_AR6_WGI_Figure_7_3_repro.pdf
mv ../figures/fig7.3.png ../../IPCC_AR6_WGI_Figure_7_3_repro.png

# Figure 7.4
jupyter nbconvert --to script ./270_chapter7_fig7.4.ipynb
python ./270_chapter7_fig7.4.py
mv ../figures/fig7.4.pdf ../../IPCC_AR6_WGI_Figure_7_4_repro.pdf
mv ../figures/fig7.4.png ../../IPCC_AR6_WGI_Figure_7_4_repro.png

# Figure 7.5
jupyter nbconvert --to script ./060_chapter7_fig7.5_SPM_fig15.ipynb
python ./060_chapter7_fig7.5_SPM_fig15.py
mv ../figures/fig7.5.pdf ../../IPCC_AR6_WGI_Figure_7_5_repro.pdf
mv ../figures/fig7.5.png ../../IPCC_AR6_WGI_Figure_7_5_repro.png

# Figure 7.6
jupyter nbconvert --to script ./100_chapter7_fig7.6.ipynb
python ./100_chapter7_fig7.6.py
mv ../figures/fig7.6.pdf ../../IPCC_AR6_WGI_Figure_7_6_repro.pdf
mv ../figures/fig7.6.png ../../IPCC_AR6_WGI_Figure_7_6_repro.png

# Figure 7.7
jupyter nbconvert --to script ./220_chapter7_fig7.7.ipynb
python ./220_chapter7_fig7.7.py
mv ../figures/fig7.7.pdf ../../IPCC_AR6_WGI_Figure_7_7_repro.pdf
mv ../figures/fig7.7.png ../../IPCC_AR6_WGI_Figure_7_7_repro.png

# Figure 7.8
jupyter nbconvert --to script ./230_chapter7_fig7.8.ipynb
python ./230_chapter7_fig7.8.py
mv ../figures/fig7.8.pdf ../../IPCC_AR6_WGI_Figure_7_8_repro.pdf
mv ../figures/fig7.8.png ../../IPCC_AR6_WGI_Figure_7_8_repro.png

# Figure 7.16
jupyter nbconvert --to script ./020_chapter7_fig7.16.ipynb
python ./020_chapter7_fig7.16.py
mv ../figures/fig7.16.pdf ../../IPCC_AR6_WGI_Figure_7_16_repro.pdf
mv ../figures/fig7.16.png ../../IPCC_AR6_WGI_Figure_7_16_repro.png

# Figure 7.18
jupyter nbconvert --to script ./330_chapter7_fig7.18.ipynb
python ./330_chapter7_fig7.18.py
mv ../figures/fig7.18.pdf ../../IPCC_AR6_WGI_Figure_7_18_repro.pdf
mv ../figures/fig7.18.png ../../IPCC_AR6_WGI_Figure_7_18_repro.png

# Figure 7.21
jupyter nbconvert --to script ./320_chapter7_fig7.21.ipynb
python ./320_chapter7_fig7.21.py
mv ../figures/fig7.21.pdf ../../IPCC_AR6_WGI_Figure_7_21_repro.pdf
mv ../figures/fig7.21.png ../../IPCC_AR6_WGI_Figure_7_21_repro.png

# Figure 7.22
jupyter nbconvert --to script ./310_chapter7_fig7.22.ipynb
python ./310_chapter7_fig7.22.py
mv ../figures/fig7.22.pdf ../../IPCC_AR6_WGI_Figure_7_22_repro.pdf
mv ../figures/fig7.22.png ../../IPCC_AR6_WGI_Figure_7_22_repro.png

# SM1
jupyter nbconvert --to script ./115_chapter7_fig7.SM.1.ipynb
python ./115_chapter7_fig7.SM.1.py
mv ../figures/fig7.SM.1.pdf ../../IPCC_AR6_WGI_Figure_7_SM_1_repro.pdf
mv ../figures/fig7.SM.1.png ../../IPCC_AR6_WGI_Figure_7_SM_1_repro.png

# Figure 2.10
jupyter nbconvert --to script ./050_chapter2_solar_ERF.ipynb
python ./050_chapter2_solar_ERF.py
mv ../figures/fig7.SM.1.pdf ../../IPCC_AR6_WGI_Figure_7_SM_1_repro.pdf
mv ../figures/fig7.SM.1.png ../../IPCC_AR6_WGI_Figure_7_SM_1_repro.png

# Figure1 FAQ7.3 not same
cd ../contributed/faq7.3_fig1
python Redo_Grose_figure.py

# Remove the changes
git checkout ../../../Chapter-7