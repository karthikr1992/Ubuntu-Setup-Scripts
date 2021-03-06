#!/usr/bin/zsh

#REMEMBER TO MAKE THE sudo cp cudnn... to sudo cp -r cudn...
#NOTE: For symbolic links, that dipshit has reversed the order...put it as below
# sudo ln -s /usr/local/cudnn/lib64/libcudnn.so /usr/local/cuda/lib64/libcudnn.so
# sudo ln -s /usr/local/cudnn/lib64/libcudnn.so.5 /usr/local/cuda/lib64/libcudnn.so.5
# sudo ln -s /usr/local/cudnn/lib64/libcudnn.so.5.1.3 /usr/local/cuda/lib64/libcudnn.so.5.1.3
# sudo ln -s /usr/local/cudnn/lib64/libcudnn_static.a /usr/local/cuda/lib64/libcudnn_static.a
#ALSO NOTE: CUDNN VERSION MIGHT DEFER...HE USES CUDNN 4, that's why the 4 everywhere
# https://devtalk.nvidia.com/default/topic/936429/-solved-tensorflow-with-gpu-in-anaconda-env-ubuntu-16-04-cuda-7-5-cudnn-/

echo "NOTE: This File is to be run *************ONLY AFTER YOU HAVE INSTALLED CUDA*******************. Hit [Enter] if you have, [Ctrl+C] if you have not!"
read temp

echo "export PATH=/usr/local/cuda-8.0/bin:\$PATH" >> ~/.zshrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64:\$LD_LIBRARY_PATH" >> ~/.zshrc
echo "export CUDA_HOME=/usr/local/cuda" >> ~/.zshrc
source ~/.zshrc

source activate py35
pip install tensorflow-gpu keras


# If above doesn't work, then do this
# export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp35-cp35m-linux_x86_64.whl

#If installing on non anaconda
# pip3 install --upgrade $TF_BINARY_URL

#If installing on anaconda
# pip install --ignore-installed --upgrade $TF_BINARY_URL
