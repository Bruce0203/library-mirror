ARR=(
1.11.2
1.12.2
1.13.2
1.14.4
1.15.2
1.16.1
1.16.2
1.16.3
1.16.4
1.16.5
1.17
1.17.1
1.18
1.18.1
1.18.2
1.19
1.19.1
1.19.2
1.19.3
)
mkdir libraries
cd libraries

LIB=dmulloy2::default::https://repo.dmulloy2.net/repository/public/,spigotsnapshots::default::https://hub.spigotmc.org/nexus/content/repositories/snapshots/,spigotpublic::default::https://hub.spigotmc.org/nexus/content/repositories/public/,minecraftlibaries::default::https://jitpack.io,https://libraries.minecraft.net/

for letter in "${ARR[@]}"; do
  sed "s/VERSION/$letter/g" <<< "org.spigotmc:spigot-api:VERSION-R0.1-SNAPSHOT
$LIB" > "spigot-api-$letter"
done

for letter in "${ARR[@]}"; do
  sed "s/VERSION/$letter/g" <<< "org.spigotmc:spigot:VERSION-R0.1-SNAPSHOT
$LIB" > "spigot-$letter"
done

"com.mojang:authlib:1.5.21" > authlib