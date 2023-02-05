call activate thesis-1

python ../utils/data_generator/create_librimix_metadata.py ^
 --librispeech_dir ../data/raw/test-clean/LibriSpeech ^
 --librispeech_md_dir ../data/raw/test-clean/LibriSpeech/metadata ^
 --wham_dir ../data/raw/wham_noise ^
 --wham_md_dir ../data/raw/wham_noise/metadata ^
 --metadata_outdir ../data/LibriMix2/metadata/test-clean ^
 --n_src 2


pause