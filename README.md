---

# FastLocation 

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

Para instalar e executar o FastLocation, siga os passos abaixo:

1. **Clone o repositório**: Faça uma cópia local do projeto utilizando o comando:
   ```bash
   git clone https://github.com/usuario/fastlocation.git
   ```
2. Acesse o diretório do projeto: Navegue até a pasta onde o projeto foi clonado:
   ```bash
   cd fastlocation
   ```
3. Instale as dependências: Certifique-se de que todas as bibliotecas necessárias estão instaladas executando
   ```bash
   flutter pub get
   ```
4. Instale as dependências: Certifique-se de que todas as bibliotecas necessárias estão instaladas executando
   ```bash
   flutter run
   ```

## Contribuições

Agradecemos por seu interesse em contribuir! Sinta-se à vontade para abrir issues para relatar problemas ou sugerir melhorias, além de enviar pull requests com suas alterações. Sua colaboração é muito apreciada!

---
