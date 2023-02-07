call activate thesis-1

@REM python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/test-clean/LibriSpeech 

@echo off
set folders=test-clean train-360 train-100 dev-clean

for %%f in (%folders%) do (
  echo Generating metadata for folder: ../data/raw/%%f/LibriSpeech
  python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/%%f/LibriSpeech
)
pause
