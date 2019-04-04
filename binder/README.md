# Binder files
This folder contains all the files used by [Binder](https://mybinder.org).

### requirements.txt 
A list of Python packages to be installed with `pip install`. See the [Binder documentation for requirements.txt](https://mybinder.readthedocs.io/en/latest/config_files.html#requirements-txt-install-a-python-environment).

### apt.txt (optional)
A list of Debian packages to be installed with `apt-get install`. See the [Binder documentation for apt.txt](https://mybinder.readthedocs.io/en/latest/config_files.html#apt-txt-install-packages-with-apt-get).
 
### postBuild (optional)
Commands to be run after the build is finished. For example, nltk data packages have to be downloaded using `python -c "import nltk; nltk.download('all')"`. See the [Binder documentation for postBuild](https://mybinder.readthedocs.io/en/latest/config_files.html#postbuild-run-code-after-installing-the-environment).
