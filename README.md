# 🔰はじめに

## 💻ローカルセットアップ

以降の作業はOSに依存しない作業内容になります。
`make`コマンドを有効化している場合は、`make setup`コマンドを実行してください。

### ツールのインストール

- IDE をインストールしてください。
  - [Visual Studio Code]
    - `extension.json` に定義されている拡張機能をインストールしてください。
  - [Xcode]
- [fvm] コマンドを有効にしてください。
- [melos] コマンドを有効にしてください。
  - `pubspec.lock` ファイルを解析して melos コマンドのバージョンを取得するため、[yq] コマンドをインストールしてください。
  - 以下のコマンドを実行して melos コマンドをグローバルに有効にしてください。
- [cmder] を推奨

    ```shell
    MELOS_VERSION=$(cat pubspec.lock | yq ".packages.melos.version" -r)
    fvm dart pub global activate melos $MELOS_VERSION
    ```

- [mason_cli] コマンドを有効にしてください。
  - また、ローカルのbricksを有効にするため、以下のコマンドを実行してください。

    ```shell
    mason get
    ```

### Flutter SDKのセットアップ

```shell
fvm use --force
```

### FVM を使用するように IDE を設定

ウィンドウをリロードして SDK を再読み込みしてください。

### 依存関係のインストール

```shell
melos bs
```

## 📱動作確認

このアプリを実行するための実行構成が設定されています。

Please check:

- [Visual Studio Code] の場合、`.vscode/launch.json` を確認してください。
<!-- Links -->

[Visual Studio Code]: https://code.visualstudio.com/

[Xcode]: https://developer.apple.com/xcode/

[fvm]: https://fvm.app/

[melos]: https://melos.invertase.dev/

[mason_cli]: https://pub.dev/packages/mason_cli

[yq]: https://github.com/mikefarah/yq

[cmder]: https://github.com/cmderdev/cmder/wiki/Seamless-VS-Code-Integration

[Firebase CLI]: https://firebase.google.com/docs/cli?hl=ja

[FlutterFire CLI]: https://firebase.google.com/docs/flutter/setup?hl=ja
