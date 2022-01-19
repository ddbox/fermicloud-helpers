#!/bin/bash
cd $HOME
rm -rf rpmbuild
for DIR in BUILD  BUILDROOT  RPMS  SOURCES  SPECS  SRPMS; do mkdir -p rpmbuild/$DIR; done
rm -rf enstore
git clone https://github.com/Enstore-org/enstore.git
cd enstore
tar cvzf ../enstore.tgz .
cd ..
cp enstore/spec/enstore_RH7_python_2.7.16_with_start_on_boot.spec rpmbuild/SPECS/enstore.spec
mv enstore.tgz rpmbuild/SOURCES
cd rpmbuild
rpmbuild -ba SPECS/enstore.spec 2>&1 | tee $HOME/rpmbuild.log
