call activate thesis-1


@REM python ../utils/data_generator/create_librimix_from_metadata.py^
@REM  --librispeech_dir ../data/raw/test-clean/LibriSpeech ^
@REM  --wham_dir ../data/raw/wham_noise^
@REM  --metadata_dir ../data/LibriMix2/metadata/test-clean^
@REM  --librimix_outdir ../data/LibriMix2/test-clean^
@REM  --n_src 2^
@REM  --freqs 8k 16k^
@REM  --modes max^
@REM  --types mix_clean mix_both

@echo off

set folders[0]=test-clean
set folders[1]=train-360
set folders[2]=train-100
set folders[3]=dev-clean

for %%f in %folders% do (
  python ../utils/data_generator/create_librimix_from_metadata.py ^
   --librispeech_dir ../data/raw/%%f/LibriSpeech ^
   --wham_dir ../data/raw/wham_noise^
   --metadata_dir ../data/LibriMix2/metadata/%%f^
   --librimix_outdir ../data/LibriMix2/%%f^
   --n_src 2^
   --freqs 8k 16k^
   --modes max^
   --types mix_clean mix_both
)


pause