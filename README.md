# mobile-qa-test-case

Application demo avec socle de tests pour Appium.
Les tests utilisent:
- Appium
- [appium-flutter-driver](https://github.com/appium-userland/appium-flutter-driver)

## Mise en place de l'environnement

- Installer Android Studio + Android SDK + Emulateur android
- Installer [ASDF](https://asdf-vm.com/guide/getting-started.html)
- A la racine du projet:
  - lancer la commande:
    ```bash
    asdf install
    ```
  - Installer melos via la commande:
    ```bash
    dart pub global activate melos
    ```

## Architecture du projet

- app: contient le code de l'application flutter à tester
- appium: contient l'ensemble des fichiers pour lancer les tests

### Executer les tests

Pour executer les tests, il faut:
- Un emulateur Android lancé ou un téléphone android connecté en usb avec le debug actif
- Utiliser des commandes Melos
#### Avec compilation
```bash
melos run appium:build:run
```

#### Sans compilation
```bash
melos run appium:run
```