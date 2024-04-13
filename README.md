# Inkwell

[![Inkwell CI](https://github.com/InkwellMC/Inkwell/actions/workflows/inkwell.yml/badge.svg)](https://github.com/InkwellMC/Inkwell/actions/workflows/inkwell.yml)
[![Inkwell Download](https://img.shields.io/github/downloads/InkwellMC/Inkwell/total?color=0&logo=github)](https://github.com/InkwellMC/Inkwell/releases/latest)
[![Discord](https://badgen.net/discord/online-members/eRvwvmEXWz?icon=discord&label=Discord&list=what)](https://discord.gg/eRvwvmEXWz)
> Fork of [Folia](https://github.com/PaperMC/Folia) aims at game customization.
## How to download
Inkwell use the same paperclip jar system that Paper uses.

You can download the latest build of Inkwell by going [here](https://github.com/InkwellMC/Inkwell/releases/latest)

You can also [build it yourself](https://github.com/InkwellMC/Inkwell#building).
## How to link plugin api
### gradle
```kotlin
repositories {
  maven("https://repo.bambooland.fun/maven-public/")
}

dependencies {
  compileOnly("io.inkwellmc.inkwell:inkwell-api:1.20.4-R0.1-SNAPSHOT")
}

java {
  toolchain.languageVersion.set(JavaLanguageVersion.of(17))
}
```
### maven
```xml
<repository>
  <id>inkwellmc</id>
  <url>https://repo.bambooland.fun/maven-public/</url>
</repository>
```
```xml
<dependency>
  <groupId>io.inkwellmc.inkwell</groupId>
  <artifactId>inkwell-api</artifactId>
  <version>LATEST</version>
  <scope>provided</scope>
</dependency>
 ```
## Building
You need JDK 17 and good Internet conditions.

Clone this repo, run `./gradlew applyPatches`, then run `./gradlew createReobfPaperclipJar` in your terminal.

You can find the jars in the `./build/libs/` directory.
## Pull Requests
See [Contributing](https://github.com/InkwellMC/Inkwell/blob/master/docs/CONTRIBUTING.md)