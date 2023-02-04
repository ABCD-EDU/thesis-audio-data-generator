import tarfile
import os
from tqdm import tqdm
from pathlib import Path 


raw_data_path = "../../data/compressed"
all_files = os.listdir(raw_data_path)
extracted_data_path = "../../data/raw"


def get_members(tar_file):
   for member in tqdm(iterable=tar_file.getmembers(), total=len(tar_file.getmembers())):
      yield member
      
      
for file in all_files:
   output_directory_name = file.replace('.tar.gz','')
   if os.path.exists(f"{extracted_data_path}/{output_directory_name}"):
      print(f'Directory already exists for {output_directory_name}')
      continue
   
   tar_file = tarfile.open(f"{raw_data_path}/{file}")
   output_file_name = file.replace('.tar.gz','')
   
   tar_file.extractall(f'{extracted_data_path}/{output_file_name}', get_members(tar_file))

