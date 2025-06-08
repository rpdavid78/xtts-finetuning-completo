# 🚀 INSTRUÇÕES RÁPIDAS - XTTS v2 Fine-tuning

## 📁 **ARQUIVOS PRINCIPAIS**

### **1. 🎤 GRAVAÇÃO DOS ÁUDIOS**
- **Arquivo:** `recording_guide.md` (primeiro artifact acima)
- **O que faz:** Instruções completas para gravar os 75 áudios
- **Transcrições:** Já estão prontas no arquivo que você tem

### **2. 🎵 USO DO MODELO TREINADO**
- **Arquivo:** `inference.py` (segundo artifact acima)
- **O que faz:** Script para usar o modelo após treinamento
- **Como usar:** `python inference.py --interactive`

---

## ⚡ **PROCESSO RÁPIDO**

### **ETAPA 1: Gravar Áudios**
```bash
# 1. Criar pasta
mkdir raw_recordings

# 2. Seguir o guia de gravação (primeiro artifact)
# 3. Gravar 75 áudios: audio_001.wav até audio_075.wav
```

### **ETAPA 2: Treinar Modelo**
```bash
# Usar seus scripts existentes
python real_xtts_finetuning.py \
    --audio_folder raw_recordings \
    --transcriptions voice_training_transcriptions_complete.txt
```

### **ETAPA 3: Usar Modelo**
```bash
# Usar o script de inferência (segundo artifact)
python inference.py --interactive

# Ou interface web
python advanced_inference.py --web
```

---

## 📂 **COMO SALVAR OS ARQUIVOS**

### **Copiar os códigos dos artifacts acima:**

1. **`recording_guide.md`** ← Primeiro artifact (guia de gravação)
2. **`inference.py`** ← Segundo artifact (script de uso)
3. **`advanced_inference.py`** ← Terceiro artifact (interface web)

### **Estrutura final:**
```
seu_projeto/
├── recording_guide.md          # 🎤 Guia de gravação
├── inference.py               # 🎵 Script básico
├── advanced_inference.py      # 🌐 Interface web
├── real_xtts_finetuning.py   # 🔥 Já existe
├── voice_training_transcriptions_complete.txt  # 📝 Já existe
└── raw_recordings/           # 📁 Seus áudios aqui
    ├── audio_001.wav
    ├── audio_002.wav
    └── ... (75 áudios total)
```

---

## 🎯 **RESUMO DO QUE VOCÊ PRECISA**

1. **✅ JÁ TEM:** Scripts de fine-tuning e transcrições
2. **📋 PRECISA:** Copiar os códigos dos artifacts acima
3. **🎤 PRECISA:** Gravar os 75 áudios seguindo o guia
4. **🚀 DEPOIS:** Executar treinamento e usar modelo

**Os arquivos estão nos artifacts acima! Copie o código de cada um.**