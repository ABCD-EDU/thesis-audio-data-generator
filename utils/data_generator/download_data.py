import functools
import pathlib
import shutil
import requests
from tqdm.auto import tqdm
from pathlib import Path
from urllib.parse import urlparse, unquote
import tarfile
import os



def get_filename(url):
   urlparse(url).path
   url_parsed = urlparse(url)
   return unquote(Path(url_parsed.path).name)

def download_file(url, filename):
    r = requests.get(url, stream=True, allow_redirects=True)
    if r.status_code != 200:
        r.raise_for_status()  # Will only raise for 4xx codes, so...
        raise RuntimeError(f"Request to {url} returned status code {r.status_code}")
    file_size = int(r.headers.get('Content-Length', 0))

    path = pathlib.Path(filename).expanduser().resolve()
    path.parent.mkdir(parents=True, exist_ok=True)

    desc = "(Unknown total file size)" if file_size == 0 else ""
    r.raw.read = functools.partial(r.raw.read, decode_content=True)  # Decompress if needed
    with tqdm.wrapattr(r.raw, "read", total=file_size, desc=desc) as r_raw:
        with path.open("wb") as f:
            shutil.copyfileobj(r_raw, f)

    return path


librispeech_dev_url = "http://www.openslr.org/resources/12/dev-clean.tar.gz"

librispeech_test_url = "http://www.openslr.org/resources/12/test-clean.tar.gz"
librispeech_100_clean_url = "http://www.openslr.org/resources/12/train-clean-100.tar.gz"
librispeech_360_clean_url = "http://www.openslr.org/resources/12/train-clean-360.tar.gz"
wham_noise_url = "https://storage.googleapis.com/whisper-public/wham_noise.zip"

all_files_url = [librispeech_test_url, librispeech_360_clean_url, wham_noise_url]
data_root_dir = "../data/compressed"


for url in all_files_url:
   filename = f"{data_root_dir}/{get_filename(url)}"
   download_file(url, filename) 