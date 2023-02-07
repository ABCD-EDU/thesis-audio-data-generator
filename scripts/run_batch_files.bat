@echo off

call download_n_extract_data.bat 

call generate_librispeech_metadata.bat

call generate_wham_metadata.bat

call generate_librimix_metadata.bat

call generate_librimix_from_metadata.bat

echo All bat files have completed.

pause
