sha1() {
  sha1sum $1 | awk '{print $1}'
}

md5() {
  md5sum $1 | awk '{print $1}'
}

prop() {
  grep "${1}" gradle.properties | cut -d'=' -f2 | sed 's/\r//'
}

commitid=$(git log --pretty='%h' -1)
mcversion=$(prop mcVersion)
gradleVersion=$(prop version)
tagid="$mcversion-$commitid"
jarName="inkwell-$mcversion.jar"
inkwellid="Inkwell-$commitid"
releaseinfo="releaseinfo.md"
make_latest="true"

rm -f $releaseinfo

mv build/libs/inkwell-paperclip-$gradleVersion-reobf.jar $jarName
echo "name=$inkwellid" >> $GITHUB_ENV
echo "tag=$tagid" >> $GITHUB_ENV
echo "jar=$jarName" >> $GITHUB_ENV
echo "info=$releaseinfo" >> $GITHUB_ENV
echo "make_latest=$make_latest" >> $GITHUB_ENV

echo "[![download](https://img.shields.io/github/downloads/InkwellMC/Inkwell/$tagid/total?color=0)](https://github.com/InkwellMC/Inkwell/releases/download/$tagid/$jarName)" >> $releaseinfo
echo "=====" >> $releaseinfo
echo "" >> $releaseinfo
echo "### Commit Message" >> $releaseinfo

number=$(git log --oneline master ^`git describe --tags --abbrev=0` | wc -l)
echo "$(git log --pretty='> [%h] %s' -$number)" >> $releaseinfo

echo "" >> $releaseinfo
echo "### Checksum" >> $releaseinfo
echo "| File | $jarName |" >> $releaseinfo
echo "| ---- | ---- |" >> $releaseinfo
echo "| MD5 | `md5 $jarName` |" >> $releaseinfo
echo "| SHA1 | `sha1 $jarName` |" >> $releaseinfo