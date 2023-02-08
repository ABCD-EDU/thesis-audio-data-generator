call activate thesis-1

@REM @echo off

@REM set folders[0]=test-clean
@REM set folders[1]=train-clean-360
@REM set folders[2]=train-clean-100
@REM set folders[3]=dev-clean

for %%d in (test-clean train-clean-360 train-clean-100 dev-clean) do (
  echo ../data/LibriMix2/%%d
  python ../utils/data_generator/create_librimix_from_metadata.py ^
   --librispeech_dir ../data/raw/%%d/LibriSpeech ^
   --wham_dir ../data/raw/wham_noise^ 
   --metadata_dir ../data/LibriMix2/metadata/%%d^
   --librimix_outdir ../data/LibriMix2/%%d^
   --n_src 2^
   --freqs 8k^
   --modes min^
   --types mix_clean
)



pause