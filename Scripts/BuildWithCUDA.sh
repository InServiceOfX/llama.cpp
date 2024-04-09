mkdir -p Build
cd Build
# LLAMA_CUBLAS will be deprecated, but use -DLLAMA_CUBLAS=on so it's not off.
cmake -DLLAMA_CUDA=on -DLLAMA_CUBLAS=on ..
make
