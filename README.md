Inkwell
===========

[![Inkwell CI](https://github.com/InkwellMC/Inkwell/actions/workflows/inkwell.yml/badge.svg)](https://github.com/InkwellMC/Inkwell/actions/workflows/inkwell.yml)
[![Inkwell Download](https://img.shields.io/github/downloads/InkwellMC/Inkwell/total?color=0&logo=github)](https://github.com/InkwellMC/Inkwell/releases/latest)
[![Discord](https://badgen.net/discord/online-members/VH8fJgWEBc?icon=discord&label=Discord&list=what)](https://discord.gg/VH8fJgWEBc)

> Fork of [Paper](https://github.com/PaperMC/Paper) aims at optimization.

## How To (Server Admins)
Inkwell use the same paperclip jar system that Paper uses.

You can download the latest build of Inkwell by going [here](https://github.com/InkwellMC/Inkwell/releases/latest)

You can also [build it yourself](https://github.com/InkwellMC/Inkwell#building).

## How To (Plugin developers)
Inkwell-API:
```kotlin
dependencies {
    compileOnly("io.inkwellmc.inkwell:inkwell-api:1.20.4-R0.1-SNAPSHOT")
}
 ```

In order to use Inkwell as a dependency you must [build it yourself](https://github.com/InkwellMC/Inkwell#building).
Each time you want to update your dependency, you must re-build Inkwell.

Inkwell-Server:
```kotlin
dependencies {
    compileOnly("io.inkwellmc.inkwell:inkwell:1.20.4-R0.1-SNAPSHOT")
}
 ```

## Building

You need JDK 17 and good Internet conditions

Clone this repo, run `./gradlew applyPatches`, then run `./gradlew createReobfBundlerJar` in your terminal.

You can find the jars in the `build/libs` directory.

## Pull Requests

See [Contributing](https://github.com/InkwellMC/Inkwell/blob/master/docs/CONTRIBUTING.md)

## Special Thanks To:

[<img src="https://user-images.githubusercontent.com/21148213/121807008-8ffc6700-cc52-11eb-96a7-2f6f260f8fda.png" alt="" width="150">](https://www.jetbrains.com)

[JetBrains](https://www.jetbrains.com/), creators of the IntelliJ IDEA, supports We with one of their [Open Source Licenses](https://www.jetbrains.com/opensource/). We recommend using IntelliJ IDEA as your IDE.