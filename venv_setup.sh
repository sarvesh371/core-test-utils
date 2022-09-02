export PYTHONHTTPSVERIFY=0
export PYTHON_VENV=venv
rm -rf $PYTHON_VENV
python3.8 -m pip install virtualenv --user
python3.8 -m virtualenv $PYTHON_VENV
source $PYTHON_VENV/bin/activate
python3.8 -m pip install -U pip
python3.8 -m pip install -U virtualenv
python3.8 -m pip install --progress-bar on --requirement requirements.txt
