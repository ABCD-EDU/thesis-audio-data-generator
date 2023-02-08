call activate thesis-1

@echo off
set "librispeech_dir=../data/raw/%1/LibriSpeech"
set "librispeech_md_dir=../data/raw/%1/LibriSpeech/metadata"
set "wham_dir=../data/raw/wham_noise"
set "wham_md_dir=../data/raw/wham_noise/metadata"
set "metadata_outdir=../data/LibriMix2/metadata/%1"
set "n_src=2"

for %%d in (test-clean train-clean-360 train-clean-100 dev-clean) do (
  python ../utils/data_generator/create_librimix_metadata.py ^
   --librispeech_dir "../data/raw/%%d/LibriSpeech" ^
   --librispeech_md_dir "../data/raw/%%d/LibriSpeech/metadata" ^
   --wham_dir "../data/raw/wham_noise" ^
   --wham_md_dir "../data/raw/wham_noise/metadata" ^
   --metadata_outdir "../data/LibriMix2/metadata/%%d" ^
   --n_src %n_src%
)
