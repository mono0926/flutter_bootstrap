#!/usr/bin/env bash
name=$1
mkdir generated
cd generated

source=../app
rm -rf ${name}

flutter create \
  --org com.mono0926 \
  ${name}

rm -rf ${name}/lib
rm -rf ${name}/test

cp -r ${source}/lib ${name}
cp -r ${source}/test ${name}
cp -r ${source}/assets ${name}
cp ../analysis_options.yaml ${name}
cp ../LICENSE ${name}
sed -e "s/flutter_bootstrap/${name}/g" ${source}/pubspec.yaml > ${name}/pubspec.yaml

open ${name}
