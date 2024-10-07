---

# FastLocation 📍

FastLocation é um aplicativo móvel desenvolvido em Flutter que permite realizar consultas de endereços a partir de um CEP, além de buscar CEPs com base em endereços completos ou parciais. O aplicativo foi projetado para a empresa **FastDelivery**, que busca otimizar suas entregas, facilitando a consulta rápida de endereços e reduzindo atrasos causados por informações incorretas.

## Funcionalidades

- 📦 **Consulta de Endereço por CEP:** Pesquise endereços completos inserindo um CEP. Por exemplo, ao digitar `01001-000`, você receberá "Praça da Sé, São Paulo, SP".
- 📬 **Busca de CEP por Endereço:** Encontre o CEP correspondente a um endereço parcial ou completo. Exemplo: ao inserir "Avenida Paulista, São Paulo", o aplicativo retornará o(s) CEP(s) associado(s).
- 🗺️ **Traçar Rotas:** Gere rotas entre sua localização atual e o último endereço consultado. Se você consultou um endereço em "Rua XV de Novembro", pode traçar uma rota até lá facilmente.
- 💾 **Armazenamento Local:** O aplicativo armazena o histórico de consultas de endereços para acessos futuros, permitindo que você veja suas buscas anteriores.
- ⚡ **Interface Reativa:** Utilizando **MobX** para gerenciamento de estado, o aplicativo oferece uma experiência fluida e responsiva.
- ⏳ **Loading e Feedback:** O aplicativo possui telas de carregamento e mensagens amigáveis que informam o usuário quando não há resultados disponíveis.

## Tecnologias Utilizadas

- 🚀 **Flutter**: Framework principal para o desenvolvimento do aplicativo.
- 🌐 **Dio**: Biblioteca utilizada para comunicação com APIs externas.
- 📦 **MobX**: Gerenciamento de estado reativo, proporcionando uma UI responsiva.
- 💾 **Hive**: Sistema de armazenamento local eficiente.
- 🗺️ **Map Launcher e Geocoding**: Utilizados para traçar rotas e geocodificação de endereços.
- 🔗 **API pública: [ViaCEP](https://viacep.com.br/ws/)**: Fonte confiável para consulta de endereços e CEPs.

## Estrutura do Projeto

- **/shared**: Cores, componentes e configurações compartilhadas entre módulos.
- **/modules**: Organização das telas e funcionalidades (Initial, Home, History).
- **/http**: Configuração da comunicação com API.
- **/routes**: Definição das rotas de navegação entre telas.

## Instalação e Execução

1. Clone o repositório:
   ```bash
   git clone https://github.com/usuario/fastlocation.git

## Instalação e Execução

1. Clone o repositório:
   ```bash
   git clone https://github.com/usuario/fastlocation.git
   ```
2. Navegue até o diretório do projeto e instale as dependências:
   ```bash
   flutter pub get
   ```
3. Execute o projeto:
   ```bash
   flutter run
   ```

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests para melhorias.

---
