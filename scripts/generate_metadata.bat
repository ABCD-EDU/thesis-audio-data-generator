call activate thesis-1

python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/test-clean/LibriSpeech
python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/train-clean-100/LibriSpeech
python ../utils/data_generator/create_librispeech_metadata.py --librispeech_dir ../data/raw/train-clean-360/LibriSpeech

python ../utils/data_generator/create_wham_metadata.py --librispeech_dir ../data/raw/wham_noise

pause