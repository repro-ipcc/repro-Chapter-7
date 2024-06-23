cd Chapter-7/notebooks/
jupyter nbconvert --to script 075_autodownload-CEDS.ipynb
python 075_autodownload-CEDS.py

jupyter nbconvert --to script 030_chapter7_derive_aerosol_coefficients.ipynb
python 030_chapter7_derive_aerosol_coefficients.py

jupyter nbconvert --to script 110_chapter4_SSP_ERF.ipynb
python 110_chapter4_SSP_ERF.py

mkdir ../data_input_large/fair-samples/
jupyter nbconvert --to script 140_WG3_draw_fair_samples.ipynb
python 140_WG3_draw_fair_samples.py

mkdir ../data_output_large/fair-samples/
jupyter nbconvert --to script 150_WG3_run_large_fair_ensemble.ipynb
python 150_WG3_run_large_fair_ensemble.py

jupyter nbconvert --to script 160_WG3_constrain_fair_samples.ipynb
python 160_WG3_constrain_fair_samples.py

jupyter nbconvert --to script 210_chapter7_projections_AR6-historical.ipynb
python 210_chapter7_projections_AR6-historical.py

