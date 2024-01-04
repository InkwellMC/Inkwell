current_dir=$(pwd)
end_word="Inkwell"

if [ "${current_dir##*/}" != "$end_word" ]; then
    echo "Run it in Inkwell root dir"
    exit
fi

echo "Attempt delete old build-data dir"
rm -rf build-data
echo "Create new build-data dir"
mkdir build-data
echo "Create new dev-imports.txt"
printf "#You can use this file to import files from minecraft libraries into the project\n#format: <artifactId> <fileName>\n#example: minecraft net/minecraft/server/MinecraftServer.java" > ./build-data/dev-imports.txt
echo "All successful!"