# library-mirror (archive your library forever)

## Gradle

```gradle
repositories {
    maven { url = 'https://raw.githubusercontent.com/Bruce0203/library-mirror/spigot-api-<Your Version Here>/' }
}
dependencies {
    compileOnly 'org.spigotmc:spigot-api:<Your Version Here>-R0.1-SNAPSHOT'
}

```

## Gradle Kotlin DSL

```gradle
repositories {
    maven { url = uri("https://raw.githubusercontent.com/Bruce0203/library-mirror/spigot-api-<Your Version Here>/") }
}
dependencies {
    compileOnly("org.spigotmc:spigot-api:<Your Version Here>-R0.1-SNAPSHOT")
}

```

## Maven

```xml
<repositories>
    <repository>
        <url>https://raw.githubusercontent.com/Bruce0203/library-mirror/spigot-api-<Your Version Here>/</url>
    </repository>
</repositories>
```
```xml
<dependencies>
    <dependency>
        <groupId>org.spigotmc</groupId>
        <artifactId>spigot-api</artifactId>
        <version><Your Version Here>-R0.1-SNAPSHOT</version>
        <scope>provided</scope>
    </dependency>
</dependencies>

```

## Features 
- `$_ACTOR` and  `_TOKEN` support for GitHub Packages (https://$_ACTOR:$_TOKEN@maven.pkg.github.com/...)

# Setup

add file in to `libraries` directory

**file syntax**
```
groupId:artifactId:version
https://nexus...
https://jitpack...
httis://...
```
