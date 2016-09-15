for f in $(ls) ; do pushd $f; make ; popd; done
