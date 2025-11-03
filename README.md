# Robot Framework Mobile Testing Project 📱

Este projeto contém testes automatizados para aplicações móveis utilizando Robot Framework.

## Pré-requisitos 📋

### Python Setup 🐍
1. Instale o Python (versão recomendada: 3.8+)
2. Adicione o Python ao PATH:
   - Windows:
     - Durante a instalação, marque a opção "Add Python to PATH"
     - Ou adicione manualmente em Variáveis de Ambiente > Path
   - macOS/Linux:
     ```bash
     export PATH="$PATH:/usr/local/bin/python3"
     ```

### Android Studio Setup 🤖
1. Instale o Android Studio
2. Habilite as SDK Tools:
   - Abra o Android Studio
   - Settings/Preferences > Appearance & Behavior > System Settings > Android SDK
   - Na aba "SDK Tools", selecione:
     - Android SDK Build-Tools
     - Android SDK Platform-Tools
     - Android Emulator
     - Intel x86 Emulator Accelerator (HAXM)

3. Configure um Emulador:
   - Tools > Device Manager
   - Create Virtual Device
   - Selecione um dispositivo e uma imagem do sistema Android
   - Finalize a configuração e inicie o emulador

### Instalação das Dependências 🛠️

```bash
pip install -r requirements.txt
```

## Estrutura do Projeto 📁

```
├── resources/
│   ├── configs/
│   ├── keywords/
│   └── pages/
├── tests/
│   ├── android/
│   └── ios/
└── reports/
    ├── android/
    └── e2e/
```

## Como Executar os Testes ▶️

Para executar os testes Android:
```bash
robot -d ./reports/android -i e2e_android
```

Para executar os testes iOS:
```bash
robot -d ./reports/ios tests/ios -i e2e_ios
```

## Relatórios 📊
Os relatórios de teste podem ser encontrados em:
- Android: `./reports/android/report.html`
- iOS: `./reports/ios/report.html`

## Colaboradores 👥

- Gabriel Volponi 👨‍💻

## Suporte 💬

Em caso de dúvidas ou problemas, abra uma issue no repositório.
