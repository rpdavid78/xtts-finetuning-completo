#!/bin/bash
# Configurar ambiente para fine-tuning XTTS v2

echo "🚀 CONFIGURANDO AMBIENTE PARA FINE-TUNING..."

# Criar ambiente virtual
python -m venv xtts_env
echo "✅ Ambiente virtual criado"

# Ativar ambiente (Linux/Mac)
source xtts_env/bin/activate
# Para Windows: xtts_env\Scripts\activate

echo "✅ Ambiente ativado"

# Instalar PyTorch com CUDA
pip install torch==2.1.0+cu118 torchaudio==2.1.0+cu118 --extra-index-url https://download.pytorch.org/whl/cu118
echo "✅ PyTorch + CUDA instalado"

# Instalar TTS
pip install TTS==0.22.0
echo "✅ TTS instalado"

# Instalar dependências de processamento
pip install librosa==0.10.1 soundfile==0.12.1 pandas==2.1.3 numpy==1.24.3
echo "✅ Bibliotecas de áudio instaladas"

# Utilitários
pip install tqdm==4.66.1 psutil==5.9.6 matplotlib==3.8.1
echo "✅ Utilitários instalados"

# Opcional - debug
pip install tensorboard==2.15.1
echo "✅ TensorBoard instalado"

# Testar instalação
python -c "
import torch
import TTS
print(f'🎉 AMBIENTE CONFIGURADO!')
print(f'PyTorch: {torch.__version__}')
print(f'CUDA: {torch.cuda.is_available()}')
print(f'GPUs: {torch.cuda.device_count()}')
print(f'TTS: {TTS.__version__}')
"

echo "🎯 Ambiente pronto para fine-tuning!"