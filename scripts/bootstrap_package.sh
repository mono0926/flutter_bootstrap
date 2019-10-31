#!/usr/bin/env bash
name=$1
cd generated

source=../package
rm -rf ${name}

flutter create \
  --org com.mono0926 \
  --template package \
  ${name}

rm -rf ${name}/test

mkdir ${name}/lib/src
touch ${name}/lib/src/${name}.dart
echo "export 'src/${name}.dart';" > ${name}/lib/${name}.dart

cp -r ${source}/test ${name}
cp ${source}/CHANGELOG.md ${name}
cp ../analysis_options.yaml ${name}
cp ../LICENSE ${name}
sed -e "s/flutter_bootstrap/${name}/g" ${source}/pubspec.yaml > ${name}/pubspec.yaml

../scripts/bootstrap.sh example
rm example/analysis_options.yaml
mv -f example ${name}

open ${name}
