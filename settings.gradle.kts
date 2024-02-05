pluginManagement {
    repositories {
        gradlePluginPortal()
        maven("https://papermc.io/repo/repository/maven-public/")
    }
}

rootProject.name = "inkwell"
include("folinkwell-api", "folinkwell-server", "paper-api-generator")