#!/usr/bin/env bash
name=$1

rm -rf ${name}

flutter create \
  --org com.mono0926 \
  ${name}

rm -rf ${name}/lib
rm -rf ${name}/test

cp -r lib ${name}
cp -r test ${name}
cp -r assets ${name}
sed -e "s/flutter_bootstrap/${name}/g" pubspec.yaml > ${name}/pubspec.yaml

cd ${name}
flutter packages get
open .
