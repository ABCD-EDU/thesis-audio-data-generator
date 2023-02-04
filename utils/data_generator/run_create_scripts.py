import os
# import path
import subprocess

librispeech_dir= '../data/raw/LibriSpeech'
wham_noise_dir ='../data/raw/wham_noise'


for i in range(2,4):
   metadata_dir = f"../metadata/Libri{i}Mix"
   subprocess.run([f"python ../scripts/create_librimix_from_metadata.py --librispeech_dir {librispeech_dir} --"])
 