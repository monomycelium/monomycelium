mkdir -p /media/rosetta
mount -t virtiofs rosetta /media/rosetta
/usr/sbin/update-binfmts --install rosetta /media/rosetta/rosetta \
     --magic "\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x3e\x00" \
     --mask "\xff\xff\xff\xff\xff\xfe\xfe\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff" \
     --credentials yes --preserve no --fix-binary yes

