call activate thesis-1

@REM python ../utils/data_generator/create_librimix_metadata.py ^
@REM  --librispeech_dir ../data/raw/test-clean/LibriSpeech ^
@REM  --librispeech_md_dir ../data/raw/test-clean/LibriSpeech/metadata ^
@REM  --wham_dir ../data/raw/wham_noise ^
@REM  --wham_md_dir ../data/raw/wham_noise/metadata ^
@REM  --metadata_outdir ../data/LibriMix2/metadata/test-clean ^
@REM  --n_src 2

@echo off
set "librispeech_dir=../data/raw/%1/LibriSpeech"
set "librispeech_md_dir=../data/raw/%1/LibriSpeech/metadata"
set "wham_dir=../data/raw/wham_noise"
set "wham_md_dir=../data/raw/wham_noise/metadata"
set "metadata_outdir=../data/LibriMix2/metadata/%1"
set "n_src=2"

for %%d in (test-clean train-360 train-100 dev-clean) do (
  python ../utils/data_generator/create_librimix_metadata.py ^
   --librispeech_dir "../data/raw/%%d/LibriSpeech" ^
   --librispeech_md_dir "../data/raw/%%d/LibriSpeech/metadata" ^
   --wham_dir "../data/raw/wham_noise" ^
   --wham_md_dir "../data/raw/wham_noise/metadata" ^
   --metadata_outdir "../data/LibriMix2/metadata/%%d" ^
   --n_src %n_src%
)


pause