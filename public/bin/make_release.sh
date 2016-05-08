#/usr/bin/env bash

VERSION=$(cat VERSION)
TAG="client-${VERSION}"

git tag ${TAG}
if [ $? -ne 0 ]
then
    exit 1
fi

tar cvf shellshare-${VERSION}.tar.gz shellshare
echo "Don't forget to run:"
echo "	git push origin ${TAG}"

