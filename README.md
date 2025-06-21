# App Flashcard

## Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- [Flutter](https://flutter.dev/docs/get-started/install) (versão mínima recomendada: 3.0.0)
- [Android Studio](https://developer.android.com/studio) ou outro ambiente de desenvolvimento compatível
- [Firebase CLI](https://firebase.google.com/docs/cli) (para configurar o Firebase)

---

## Passos para Executar o Projeto

### 1. Instalar o Flutter

Se você ainda não tem o Flutter instalado, siga as instruções no [site oficial](https://flutter.dev/docs/get-started/install). Após a instalação, verifique se o Flutter está funcionando corretamente:

```bash
$ flutter doctor
```

Certifique-se de que todas as dependências estão instaladas e configuradas.


### 2. Fazer Login no Flutter

Antes de usar o Firebase CLI, você precisa estar logado no Flutter. Execute o comando:

```bash
$ flutter login
```

Siga as instruções no terminal para fazer login com sua conta Google.


### 3. Instalar o Firebase CLI

Baixe e instale o Firebase CLI seguindo as instruções no [site oficial](https://firebase.google.com/docs/cli). Após a instalação, verifique se está funcionando corretamente:

```bash
$ firebase --version
```


### 4. Clonar o Repositório

No terminal, execute o seguinte comando para clonar o repositório:

```bash
$ git clone https://github.com/Brunno-Bocardo/app-flashcard.git
```


### 5. Navegar para o Diretório do Projeto

```bash
$ cd app-flashcard
$ code .
$ cd app_flashcard
```


### 6. Limpar o Cache e Baixar as Dependências

Execute os comandos abaixo para garantir que o ambiente esteja limpo e as dependências sejam instaladas corretamente:

```bash
$ flutter clean
$ flutter pub cache repair
$ flutter pub get
```


### 7. Configurar o Firebase
- Tutorial seguido: https://www.youtube.com/watch?v=2VQEossWnxY

#### 7.1 Criar um Projeto no Firebase
- Acesse o [Firebase Console](https://console.firebase.google.com/).
- Crie um novo projeto ou selecione um existente.

#### 7.2 Habilitar Autenticação
- No Firebase Console, vá para a seção **Authentication**.
- Habilite o método de autenticação por **E-mail e Senha**.

#### 7.3 Configurar o Firebase no Projeto
Execute o comando abaixo para configurar o Firebase no projeto:

```bash
$ flutterfire configure
```

Siga as instruções no terminal para selecionar o projeto Firebase e as plataformas (Android, iOS, etc.). Isso irá gerar o arquivo `firebase_options.dart` na pasta `lib`.



