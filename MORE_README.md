## Creating and starting a virtual environment for Python 3

Create a directory for a virtual environment:

```
/llama.cpp$ python3 -m venv ./venv/
```

Activate it:
```
/llama.cpp$ source ./venv/bin/activate
```
You should see the prompt have a prefix `(venv)`.

Deactivate it:
```
deactivate
```

https://youtu.be/CUqZCRKhRQI?si=dFI19BpP6g7sCsXo
Jeffrey Hui. Research Engineer for Google.

GGUF format.

https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.2-GGUF

```
pip3 install huggingface-hub
```
It also immediately suggested for faster transter
```
pip3 install hf_transfer
```
and to use it, do `HF_HUB_ENABLE_HF_TRANSFER=1`, e.g.

```
HF_HUB_ENABLE_HF_TRANSFER=1 huggingface-cli download TheBloke/Mistral-7B-Instruct-v0.2-GGUF mistral-7b-instruct-v0.2.Q4_K_M.gguf --local-dir . --local-dir-use-symlinks False

```


Donwload multiple files at once.

```
huggingface-cli download TheBloke/Mistral-7B-Instruct-v0.2-GGUF --local-dir . --local-dir-use-symlinks False --include='*Q4_K*gguf'
```

This worked: 

```
./main -ngl 16 -m /media/ernest/Samsung980ProPCI/Data/Models/Inference/TheBloke/Mistral-7B-Instruct-v0.2-GGUF/mistral-7b-instruct-v0.2.Q4_K_S.gguf --color -c 32768 --temp 0.7 --repeat_penalty 1.1 -n -1 -p "<s>[INST] Tell me the latest year you were trained on. [/INST]"
```