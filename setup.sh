sudo apt update
sudo apt -y upgrade
sudo apt -y install build-essential libssl-dev libffi-dev python3-dev
wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
tar -xf Python-3.8.12.tgz
cd Python-3.8.12
./configure --enable-optimizations
make -j 4
sudo make altinstall
python3.8 --version
cd ../
rm Python-3.8.12.tgz
rm -rf Python-3.8.12
mkdir UAV
cd UAV
mkdir ObjDetector
mkdir AutoFlight
python3.8 -m venv UAVenv
source UAVenv/bin/activate
pip install mavsdk