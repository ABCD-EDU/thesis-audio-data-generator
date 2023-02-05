call activate thesis-1


python ../utils/data_generator/create_librimix_from_metadata.py^
 --librispeech_dir ../data/raw/test-clean/LibriSpeech ^
 --wham_dir ../data/raw/wham_noise^
 --metadata_dir ../data/LibriMix2/metadata/test-clean^
 --librimix_outdir ../data/LibriMix2/test-clean^
 --n_src 2^
 --freqs 8k 16k^
 --modes max^
 --types mix_clean mix_both


pause