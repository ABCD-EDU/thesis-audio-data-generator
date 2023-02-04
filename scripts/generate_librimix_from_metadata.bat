call activate thesis-1
@REM python ../utils/data_generator/augment_train_noise.py --wham_dir ../data/raw/wham_noise

@REM python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/test-clean/LibriSpeech
@REM python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/train-clean-100/LibriSpeech
@REM python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/train-clean-360/LibriSpeech
@REM python ../utils/data_generator/create_wham_metadata.py --librispeech_dir ../data/raw/wham_noise



@REM python ../utils/data/create_librimix_metadata.py --librispeech_dir ../data/

@REM python ../utils/data_generator/create_librimix_from_metadata.py --librispeech_dir ../data/raw/train-clean-360 

@REM python ../utils/data_generator/create_librimix_from_metadata.py --librispeech_dir ../data/raw/test-clean/LibriSpeech --wham_dir ../data/raw/wham_noise --metadata_dir ../data/metadata/test-clean --librimix_outdir ../data/LibriMix3/test-clean --n_src 3 --freqs 8k 16k --modes max --types mix_clean mix_both



python ../utils/data_generator/create_librimix_from_metadata.py^
 --librispeech_dir ../data/raw/train-clean-100/LibriSpeech ^
 --wham_dir ../data/raw/wham_noise^
 --metadata_dir ../data/metadata/train-clean-100^
 --librimix_outdir ../data/LibriMix3/train-clean-100^
 --n_src 3^
 --freqs 8k 16k^
 --modes max^
 --types mix_clean mix_both^

pause