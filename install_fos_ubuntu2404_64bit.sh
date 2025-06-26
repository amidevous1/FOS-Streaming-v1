#!/bin/bash

# FUNCTION: Ubuntu 24.04 Check
distro(){
if [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
        if [ $DISTRIB_ID == Ubuntu ]; then
            if [ $DISTRIB_RELEASE != "24.04" ]; then
                error
            fi
        else
            error
        fi
fi
}

# FUNCTION: ERROR
error(){
    sleep 2
    echo -ne '\n'"--PROBLEM!--"
    echo -ne '\n'"Support: https://github.com/amidevous1/FOS-Streaming-v1/" '\n'
exit
}


# FUNCTION: FOS-Streaming Exist
fosstreamingexist() {
    if [ -d "/home/fos-streaming" ]; then
      echo -ne '\n'"You have already installed fos streaming before?"
      echo "If you want remove fos-streaming"
      echo "killall -9 nginx php-fpm"
      echo  "userdel fosstreaming"
      echo "rm -r /home/fos-streaming"
      exit
    fi
}

# FUNCTION: Packages Install
packages_install(){
    echo "update"
    apt-get -qq update >/dev/null 2>&1
    sudo add-apt-repository ppa:maxmind/ppa -y >/dev/null 2>&1
    sudo apt-get -qq update >/dev/null 2>&1
    sudo rm -rf /tmp/* >/dev/null 2>&1
    echo "upgrade"
    sudo apt-get -yqq dist-upgrade >/dev/null 2>&1
    echo "install libgd-dev"
    sudo apt-get install -yqq libgd-dev >/dev/null 2>&1
    echo "install libxslt-dev"
    sudo apt-get install -yqq libxslt-dev >/dev/null 2>&1
    echo "install libgeoip-dev"
    sudo apt-get install -yqq libgeoip-dev >/dev/null 2>&1
    echo "install tar"
    sudo apt-get install -yqq tar >/dev/null 2>&1
    echo "install wget"
    sudo apt-get install -yqq wget >/dev/null 2>&1
    echo "install libmaxminddb-dev"
    sudo apt-get install -yqq libmaxminddb-dev >/dev/null 2>&1
    echo "install git"
    sudo apt-get install -yqq git >/dev/null 2>&1
    echo "install curl"
    sudo apt-get install -yqq curl >/dev/null 2>&1
    echo "install libxml2-dev"
    sudo apt-get install -yqq libxml2-dev >/dev/null 2>&1
    echo "install libbz2-dev"
    sudo apt-get install -yqq libbz2-dev >/dev/null 2>&1
    sudo apt-get install -yqq libcurl4-openssl-dev >/dev/null 2>&1
    sudo apt-get install -yqq libmcrypt-dev >/dev/null 2>&1
    sudo apt-get install -yqq libmhash2 >/dev/null 2>&1
    sudo apt-get install -yqq libmhash-dev >/dev/null 2>&1
    sudo apt-get install -yqq libpcre3 >/dev/null 2>&1
    sudo apt-get install -yqq libpcre3-dev >/dev/null 2>&1
    sudo apt-get install -yqq make >/dev/null 2>&1
    sudo apt-get install -yqq build-essential >/dev/null 2>&1
    sudo apt-get install -yqq libxslt1-dev >/dev/null 2>&1
    sudo apt-get install -yqq unzip >/dev/null 2>&1
    sudo apt-get install -yqq python-software-properties >/dev/null 2>&1
    sudo apt-get install -yqq software-properties-common >/dev/null 2>&1
    sudo apt-get install -yqq libpopt0 >/dev/null 2>&1
    sudo apt-get install -yqq libpq-dev >/dev/null 2>&1
    sudo apt-get install -yqq libpq5 >/dev/null 2>&1
    sudo apt-get install -yqq libpspell-dev >/dev/null 2>&1
    sudo apt-get install -yqq libpthread-stubs0-dev >/dev/null 2>&1
    sudo apt-get install -yqq libpython-stdlib >/dev/null 2>&1
    sudo apt-get install -yqq libqdbm-dev >/dev/null 2>&1
    sudo apt-get install -yqq libqdbm14 >/dev/null 2>&1
    sudo apt-get install -yqq libquadmath0 >/dev/null 2>&1
    sudo apt-get install -yqq librecode-dev >/dev/null 2>&1
    sudo apt-get install -yqq librecode0 >/dev/null 2>&1
    sudo apt-get install -yqq librtmp-dev >/dev/null 2>&1
    sudo apt-get install -yqq librtmp0 >/dev/null 2>&1
    sudo apt-get install -yqq libsasl2-dev >/dev/null 2>&1
    sudo apt-get install -yqq libsasl2-modules
    sudo apt-get install -yqq libsctp-dev >/dev/null 2>&1
    sudo apt-get install -yqq libsctp1 >/dev/null 2>&1
    sudo apt-get install -yqq libsensors4 >/dev/null 2>&1
    sudo apt-get install -yqq libsensors4-dev >/dev/null 2>&1
    sudo apt-get install -yqq libsm-dev >/dev/null 2>&1
    sudo apt-get install -yqq libsm6 >/dev/null 2>&1
    sudo apt-get install -yqq libsnmp-base >/dev/null 2>&1
    sudo apt-get install -yqq libsnmp-dev >/dev/null 2>&1
    sudo apt-get install -y libsnmp-perl >/dev/null 2>&1
    sudo apt-get install -y libsnmp30 >/dev/null 2>&1
    sudo apt-get install -y libsqlite3-dev >/dev/null 2>&1
    sudo apt-get install -y libssh2-1 >/dev/null 2>&1
    sudo apt-get install -y libssh2-1-dev >/dev/null 2>&1
    sudo apt-get install -y libssl-dev >/dev/null 2>&1
    sudo apt-get install -y libstdc++-4.8-dev >/dev/null 2>&1
    sudo apt-get install -y libstdc++6-4.7-dev >/dev/null 2>&1
    sudo apt-get install -y libsybdb5 >/dev/null 2>&1
    sudo apt-get install -y libtasn1-3-dev >/dev/null 2>&1
    sudo apt-get install -y libtasn1-6-dev >/dev/null 2>&1
    sudo apt-get install -y libterm-readkey-perl >/dev/null 2>&1
    sudo apt-get install -y libtidy-0.99-0 >/dev/null 2>&1
    sudo apt-get install -y libtidy-dev >/dev/null 2>&1
    sudo apt-get install -y libtiff5 >/dev/null 2>&1
    sudo apt-get install -y libtiff5-dev >/dev/null 2>&1
    sudo apt-get install -y libtiffxx5 >/dev/null 2>&1
    sudo apt-get install -y libtimedate-perl >/dev/null 2>&1
    sudo apt-get install -y libtinfo-dev >/dev/null 2>&1
    sudo apt-get install -y libtool >/dev/null 2>&1
    sudo apt-get install -y libtsan0 >/dev/null 2>&1
    sudo apt-get install -y libunistring0 >/dev/null 2>&1
    sudo apt-get install -y libvpx-dev >/dev/null 2>&1
    sudo apt-get install -y libvpx1 >/dev/null 2>&1
    sudo apt-get install -y libwrap0-dev >/dev/null 2>&1
    sudo apt-get install -y libx11-6 >/dev/null 2>&1
    sudo apt-get install -y libx11-data >/dev/null 2>&1
    sudo apt-get install -y libx11-dev >/dev/null 2>&1
    sudo apt-get install -y libxau-dev >/dev/null 2>&1
    sudo apt-get install -y libxau6 >/dev/null 2>&1
    sudo apt-get install -y libxcb1 >/dev/null 2>&1
    sudo apt-get install -y libxcb1-dev >/dev/null 2>&1
    sudo apt-get install -y libxdmcp-dev >/dev/null 2>&1
    sudo apt-get install -y libxdmcp6 >/dev/null 2>&1
    sudo apt-get install -y libxml2 >/dev/null 2>&1
    sudo apt-get install -y libxmltok1 >/dev/null 2>&1
    sudo apt-get install -y libxmltok1-dev >/dev/null 2>&1
    sudo apt-get install -y libxpm-dev >/dev/null 2>&1
    sudo apt-get install -y libxpm4 >/dev/null 2>&1
    sudo apt-get install -y libxslt1-dev >/dev/null 2>&1
    sudo apt-get install -y libxslt1.1 >/dev/null 2>&1
    sudo apt-get install -y libxt-dev >/dev/null 2>&1
    sudo apt-get install -y libxt6 >/dev/null 2>&1
    sudo apt-get install -y linux-libc-dev >/dev/null 2>&1
    sudo apt-get install -y m4 >/dev/null 2>&1
    sudo apt-get install -y make >/dev/null 2>&1
    sudo apt-get install -y man-db
    sudo apt-get install -y netcat-openbsd >/dev/null 2>&1
    sudo apt-get install -y odbcinst1debian2 >/dev/null 2>&1
    sudo apt-get install -y openssl >/dev/null 2>&1
    sudo apt-get install -y patch >/dev/null 2>&1
    sudo apt-get install -y pkg-config >/dev/null 2>&1
    sudo apt-get install -y po-debconf >/dev/null 2>&1
    sudo apt-get install -y re2c >/dev/null 2>&1
    sudo apt-get install -y unixodbc >/dev/null 2>&1
    sudo apt-get install -y unixodbc-dev >/dev/null 2>&1
    sudo apt-get install -y uuid-dev >/dev/null 2>&1
    sudo apt-get install -y x11-common >/dev/null 2>&1
    sudo apt-get install -y x11proto-core-dev >/dev/null 2>&1
    sudo apt-get install -y x11proto-input-dev >/dev/null 2>&1
    sudo apt-get install -y x11proto-kb-dev >/dev/null 2>&1
    sudo apt-get install -y xorg-sgml-doctools >/dev/null 2>&1
    sudo apt-get install -y libjpeg8 >/dev/null 2>&1
    sudo apt-get install -y xtrans-dev >/dev/null 2>&1
    sudo apt-get install -y zlib1g-dev >/dev/null 2>&1
    sudo apt-get install -y libgtk2.0-0 >/dev/null 2>&1
    sudo apt-get install -y libgdk-pixbuf2.0-0 >/dev/null 2>&1
    sudo apt-get install -y libfontconfig1 >/dev/null 2>&1
    sudo apt-get install -y libxrender1 >/dev/null 2>&1
    sudo apt-get install -y libx11-6 >/dev/null 2>&1
    sudo apt-get install -y libglib2.0-0 >/dev/null 2>&1
    sudo apt-get install -y libxft2 >/dev/null 2>&1
    sudo apt-get install -y libfreetype6 >/dev/null 2>&1
    sudo apt-get install -y libc6 zlib1g >/dev/null 2>&1
    sudo apt-get install -y libpng12-0 >/dev/null 2>&1
    sudo apt-get install -y libstdc++6-4.8-dbg-arm64-cross >/dev/null 2>&1
    sudo apt-get install -y libstdc++6-10-dbg-arm64-cross >/dev/null 2>&1
    sudo apt-get install -y libgcc1 >/dev/null 2>&1
    sudo apt-get install -y apache2-dev >/dev/null 2>&1
    sudo apt-get install -y autoconf >/dev/null 2>&1
    sudo apt-get install -y automake >/dev/null 2>&1
    sudo apt-get install -y bison >/dev/null 2>&1
    sudo apt-get install -y chrpath >/dev/null 2>&1
    sudo apt-get install -y debhelper >/dev/null 2>&1
    sudo apt-get install -y default-libmysqlclient-dev >/dev/null 2>&1
    sudo apt-get install -y libmysqlclient-dev >/dev/null 2>&1
    sudo apt-get install -y dh-apache2 >/dev/null 2>&1
    sudo apt-get install -y dpkg-dev >/dev/null 2>&1
    sudo apt-get install -y firebird-dev >/dev/null 2>&1
    sudo apt-get install -y firebird2.5-dev >/dev/null 2>&1
    sudo apt-get install -y firebird2.1-dev >/dev/null 2>&1
    sudo apt-get install -y flex >/dev/null 2>&1
    sudo apt-get install -y freetds-dev >/dev/null 2>&1
    sudo apt-get install -y libacl1-dev >/dev/null 2>&1
    sudo apt-get install -y libapparmor-dev >/dev/null 2>&1
    sudo apt-get install -y libapr1-dev >/dev/null 2>&1
    sudo apt-get install -y libbz2-dev >/dev/null 2>&1
    sudo apt-get install -y libc-client-dev >/dev/null 2>&1
    sudo apt-get install -y libcurl4-openssl-dev >/dev/null 2>&1
    sudo apt-get install -y libcurl-dev >/dev/null 2>&1
    sudo apt-get install -y libdb-dev >/dev/null 2>&1
    sudo apt-get install -y libedit-dev >/dev/null 2>&1
    sudo apt-get install -y libenchant-2-dev >/dev/null 2>&1
    sudo apt-get install -y libenchant-dev >/dev/null 2>&1
    sudo apt-get install -y libevent-dev >/dev/null 2>&1
    sudo apt-get install -y libexpat1-dev >/dev/null 2>&1
    sudo apt-get install -y libfreetype6-dev >/dev/null 2>&1
    sudo apt-get install -y libgcrypt20-dev >/dev/null 2>&1
    sudo apt-get install -y libgcrypt11-dev >/dev/null 2>&1
    sudo apt-get install -y libgd2-dev >/dev/null 2>&1
    sudo apt-get install -y libglib2.0-dev >/dev/null 2>&1
    sudo apt-get install -y libgmp3-dev >/dev/null 2>&1
    sudo apt-get install -y libicu-dev >/dev/null 2>&1
    sudo apt-get install -y libjpeg-dev >/dev/null 2>&1
    sudo apt-get install -y libjpeg62-dev >/dev/null 2>&1
    sudo apt-get install -y libkrb5-dev >/dev/null 2>&1
    sudo apt-get install -y libldap2-dev >/dev/null 2>&1
    sudo apt-get install -y libmagic-dev >/dev/null 2>&1
    sudo apt-get install -y libmcrypt-dev >/dev/null 2>&1
    sudo apt-get install -y libmhash-dev >/dev/null 2>&1
    sudo apt-get install -y libnss-myhostname >/dev/null 2>&1
    sudo apt-get install -y libonig-dev >/dev/null 2>&1
    sudo apt-get install -y libpam0g-dev >/dev/null 2>&1
    sudo apt-get install -y libpcre3-dev >/dev/null 2>&1
    sudo apt-get install -y libpng-dev >/dev/null 2>&1
    sudo apt-get install -y libpq-dev >/dev/null 2>&1
    sudo apt-get install -y libpspell-dev >/dev/null 2>&1
    sudo apt-get install -y libqdbm-dev >/dev/null 2>&1
    sudo apt-get install -y librecode-dev >/dev/null 2>&1
    sudo apt-get install -y libsasl2-dev >/dev/null 2>&1
    sudo apt-get install -y libsnmp-dev >/dev/null 2>&1
    sudo apt-get install -y libsqlite3-dev >/dev/null 2>&1
    sudo apt-get install -y libssl-dev >/dev/null 2>&1
    sudo apt-get install -y libsystemd-dev >/dev/null 2>&1
    sudo apt-get install -y libtidy-dev >/dev/null 2>&1
    sudo apt-get install -y libtool >/dev/null 2>&1
    sudo apt-get install -y libwebp-dev >/dev/null 2>&1
    sudo apt-get install -y libwrap0-dev >/dev/null 2>&1
    sudo apt-get install -y libxmlrpc-epi-dev >/dev/null 2>&1
    sudo apt-get install -y libxmltok1-dev >/dev/null 2>&1
    sudo apt-get install -y libxslt1-dev >/dev/null 2>&1
    sudo apt-get install -y libzip-dev >/dev/null 2>&1
    sudo apt-get install -y locales-all >/dev/null 2>&1
    sudo apt-get install -y netbase >/dev/null 2>&1
    sudo apt-get install -y netcat-openbsd >/dev/null 2>&1
    sudo apt-get install -y re2c >/dev/null 2>&1
    sudo apt-get install -y systemtap-sdt-dev >/dev/null 2>&1
    sudo apt-get install -y tzdata >/dev/null 2>&1
    sudo apt-get install -y unixodbc-dev >/dev/null 2>&1
    sudo apt-get install -y zlib1g-dev >/dev/null 2>&1
    sudo apt-get install -y libcurl4 >/dev/null 2>&1
    sudo apt-get install -y libxslt1-dev >/dev/null 2>&1
    sudo apt-get install -y libonig-dev >/dev/null 2>&1
    sudo apt-get install -y e2fsprogs >/dev/null 2>&1
    sudo apt-get install -y mcrypt >/dev/null 2>&1
    sudo apt-get install -y nscd >/dev/null 2>&1
    sudo apt-get install -y htop >/dev/null 2>&1
    sudo apt-get install -y zip >/dev/null 2>&1
    sudo apt-get install -y unzip >/dev/null 2>&1
    sudo apt-get install -y mc >/dev/null 2>&1
    sudo apt-get install -y libpng16-16 >/dev/null 2>&1
    sudo apt-get install -y python3-paramiko >/dev/null 2>&1
    sudo apt-get install -y python-is-python3 >/dev/null 2>&1
    sudo apt-get install -y build-essential >/dev/null 2>&1
    sudo apt-get install -y checkinstall >/dev/null 2>&1
    sudo apt-get install -y libncursesw5-dev >/dev/null 2>&1
    sudo apt-get install -y libssl-dev >/dev/null 2>&1
    sudo apt-get install -y libsqlite3-dev >/dev/null 2>&1
    sudo apt-get install -y tk-dev >/dev/null 2>&1
    sudo apt-get install -y libgdbm-dev >/dev/null 2>&1
    sudo apt-get install -y libc6-dev >/dev/null 2>&1
    sudo apt-get install -y libbz2-dev >/dev/null 2>&1
    sudo apt-get install -y libffi-dev >/dev/null 2>&1
    cd /tmp
	sudo wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz > /dev/null 2>&1
	sudo tar xzf Python-2.7.18.tgz > /dev/null 2>&1
	cd Python-2.7.18
	sudo ./configure --enable-optimizations > /dev/null 2>&1
	sudo make altinstall > /dev/null 2>&1
	curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py > /dev/null 2>&1
	sudo python2.7 get-pip.py > /dev/null 2>&1
	pip2.7 install paramiko > /dev/null 2>&1
    }
#    ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so.6.11.1 /usr/lib/libfreetype.so.6
    fos_install(){
    sudo /usr/sbin/useradd -s /sbin/nologin -U -d /home/fos-streaming -m fosstreaming > /dev/null
    sudo rm -rf /home/fos-streaming
    sudo mkdir -p /home/fos-streaming
    cd /home/fos-streaming > /dev/null
	sudo mkdir fos/logs
	sudo mkdir fos/www
    cd /tmp/
    wget https://github.com/openssl/openssl/archive/OpenSSL_1_1_1h.tar.gz
    tar -xzvf OpenSSL_1_1_1h.tar.gz
    wget https://nginx.org/download/nginx-1.26.3.tar.gz
    tar -xvf nginx-1.26.3.tar.gz
    git clone https://github.com/leev/ngx_http_geoip2_module.git
    cd nginx-1.26.3
    ./configure --prefix=/home/fos-streaming/fos/nginx/ \
    --sbin-path=/home/fos-streaming/fos/nginx/sbin/nginx_fos \
    --http-client-body-temp-path=/home/fos-streaming/fos/tmp/client_temp \
    --http-proxy-temp-path=/home/fos-streaming/fos/tmp/proxy_temp \
    --http-fastcgi-temp-path=/home/fos-streaming/fos/tmp/fastcgi_temp \
    --lock-path=/home/fos-streaming/fos/nginx.lock \
    --http-uwsgi-temp-path=/home/fos-streaming/fos/tmp/uwsgi_temp \
    --http-scgi-temp-path=/home/fos-streaming/fos/tmp/scgi_temp \
    --conf-path=/home/fos-streaming/fos/nginx/conf/nginx.conf \
    --error-log-path=/home/fos-streaming/fos/logs/error.log \
    --http-log-path=/home/fos-streaming/fos/logs/access.log \
    --pid-path=/home/fos-streaming/fos/nginx/nginx.pid \
    --with-http_ssl_module \
    --with-http_realip_module \
    --with-http_addition_module \
    --with-http_sub_module \
    --with-http_dav_module \
    --with-http_gunzip_module \
    --with-http_gzip_static_module \
    --with-http_v2_module \
    --with-http_v3_module \
    --with-pcre \
    --with-http_random_index_module \
    --with-http_secure_link_module \
    --with-http_stub_status_module \
    --with-http_auth_request_module \
    --with-threads \
    --with-mail \
    --with-mail_ssl_module \
    --with-file-aio \
    --with-cpu-opt=generic \
    --add-module=/tmp/ngx_http_geoip2_module \
    --with-openssl=/tmp/openssl-OpenSSL_1_1_1h \
    --with-ld-opt='-Wl,-z,relro -Wl,--as-needed -static' \
    --with-cc-opt='-static -static-libgcc -g -O2 -Wformat -Wall'
    make -j $(nproc)
    sudo make install
    cd ..
    sudo wget -O /home/fos-streaming/fos/nginx/conf/fastcgi.conf https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/fastcgi.conf
    sudo wget -O /home/fos-streaming/fos/nginx/conf/fastcgi.conf.default https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/fastcgi.conf.default
    sudo wget -O /home/fos-streaming/fos/nginx/conf/fastcgi_params https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/fastcgi_params
    sudo wget -O /home/fos-streaming/fos/nginx/conf/fastcgi_params.default https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/fastcgi_params.default
    sudo wget -O /home/fos-streaming/fos/nginx/conf/koi-utf https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/koi-utf
    sudo wget -O /home/fos-streaming/fos/nginx/conf/koi-win https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/koi-win
    sudo wget -O /home/fos-streaming/fos/nginx/conf/mime.types https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/mime.types
    sudo wget -O /home/fos-streaming/fos/nginx/conf/mime.types.default https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/mime.types.default
    sudo wget -O /home/fos-streaming/fos/nginx/conf/nginx.conf https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/nginx.conf
    sudo wget -O /home/fos-streaming/fos/nginx/conf/nginx.conf.default https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/nginx.conf.default
    sudo wget -O /home/fos-streaming/fos/nginx/conf/scgi_params https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/scgi_params
    sudo wget -O /home/fos-streaming/fos/nginx/conf/scgi_params.default https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/scgi_params.default
    sudo wget -O /home/fos-streaming/fos/nginx/conf/uwsgi_params https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/uwsgi_params
    sudo wget -O /home/fos-streaming/fos/nginx/conf/uwsgi_params.default https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/uwsgi_params.default
    sudo wget -O /home/fos-streaming/fos/nginx/conf/win-utf https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/nginx-conf/win-utf
	cd /tmp
	wget https://launchpadlibrarian.net/765798570/php5.6_5.6.40-81+ubuntu24.04.1+deb.sury.org+1.debian.tar.xz
	tar -xvf php5.6_5.6.40-81+ubuntu24.04.1+deb.sury.org+1.debian.tar.xz
	wget https://www.php.net/distributions/php-5.6.40.tar.gz
	tar -xvf php-5.6.40.tar.gz
	cd php-5.6.40
	#php 5.6.40 security patch by Remi Collet Official php Packager for Red Hat Enterprise and php Security Patcher
	#remi@remirepo.net
	#rcollet@redhat.com
	#https://git.remirepo.net/cgit/rpms/scl-php56/php.git/tree/
	# https://blog.remirepo.net/pages/Config-en
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-7.1.7-httpd.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.30-interbase.patch)
	patch -p1 < <(wget -qO- php-5.6.31-openssl11.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.3-includedir.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.3-embed.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.3.0-recode.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.17-libdb.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.5.30-curl.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.37-icu62.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.40-gcc10.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-net-snmp.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.4.0-dlopen.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.30-dtrace.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.13-systzdata-v12.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.4.0-phpize.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.3-ldap_r.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.3-fixheader.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.3-phpinfo.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.3-oci8conf.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.31-oci.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug76846.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-mysqlnd-utf8mb4.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77396.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77431.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77540.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77563.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77586.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77630.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-news.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-sqlite3-defensive.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77753.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77831.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77950.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78069.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77988.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77967.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78222.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78256.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77919.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug75457.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78380.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78599.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78878.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78862.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78863.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78793.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78910.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79099.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79037.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79221.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79082.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79282.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79329.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79330.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79465.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug78875.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79797.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79877.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79699.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug77423.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug80672.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug80710.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81122.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug76450.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81211.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81026.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug79971.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81719.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81720.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81727.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81726.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81740.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81744.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-bug81746.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2023-0662.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2023-3247.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2023-3823.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2023-3824.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-2756.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-3096.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-5458.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-8925.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-8926.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-8927.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-11234.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-8932.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-cve-2024-11233.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-ghsa-4w77-75f9-2c8w.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.30-datetests.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-5.6.0-oldpcre.patch)
	patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php56/php.git/plain/php-openssl-cert.patch)
	# patch support openssl 3 by Ondřej Surý Official php maintener For Ubuntu/Debian with ppa and dpa
	# ondrej@debian.org
	# https://launchpad.net/~ondrej/+archive/ubuntu/php
	# https://deb.sury.org/#debian-dpa
	patch -p1 < ../debian/patches/0002-static_openssl.patch
	patch -p1 < ../debian/patches/0055-Use-OpenSSL-1.1-compatibility-patch-when-built-with-.patch
	patch -p1 < ../debian/patches/0087-fix-tests.patch
	patch -p1 < ../debian/patches/0144-Fix-bug-72333-fwrite-on-non-blocking-SSL-sockets-doe.patch
	patch -p1 < ../debian/patches/0193-Add-minimal-OpenSSL-3.0-patch.patch
	patch -p1 < ../debian/patches/0199-Fix-bug-79589-ssl3_read_n-unexpected-eof-while-readi.patch
	rm ext/openssl/tests/bug65538_003.phpt
	rm ext/date/tests/timezone_location_get.phpt
	rm ext/date/tests/timezone_version_get.phpt
	rm ext/date/tests/timezone_version_get_basic1.phpt
	rm ext/date/tests/bug33414-1.phpt
	rm ext/date/tests/bug33414-2.phpt
	rm ext/date/tests/bug33415-2.phpt
	rm ext/date/tests/date_modify-1.phpt
	rm ext/date/tests/bug51819.phpt
	rm ext/date/tests/date_sunset_variation9.phpt
	rm ext/standard/tests/file/file_get_contents_error001.phpt
	rm ext/sockets/tests/mcast_ipv?_recv.phpt
	rm Zend/tests/bug54268.phpt
	rm -f TSRM/tsrm_win32.h
	rm -f TSRM/tsrm_config.w32.h
	rm -f Zend/zend_config.w32.h
	rm -f ext/mysqlnd/config-win.h
	rm -f ext/standard/winver.h
	rm -f main/win32_internal_function_disabled.h
	rm -f main/win95nt.h
	find . -name \*.[ch] -exec chmod 644 {} \;
	chmod 644 README.*
	cat `aclocal --print-ac-dir`/{libtool,ltoptions,ltsugar,ltversion,lt~obsolete}.m4 >>aclocal.m4
	libtoolize --force --copy
	cat `aclocal --print-ac-dir`/{libtool,ltoptions,ltsugar,ltversion,lt~obsolete}.m4 >build/libtool.m4
	touch configure.in
	./buildconf --force
	./configure --prefix=/home/fos-streaming/fos/php \
	--with-pdo-pgsql \
	--with-zlib-dir \
	--enable-mbstring \
	--with-libxml-dir=/usr \
	--enable-soap \
	--enable-calendar \
	--with-mcrypt \
	--with-gd \
	--with-pgsql \
	--disable-rpath \
	--enable-inline-optimization \
	--with-bz2 \
	--with-zlib \
	--enable-sockets \
	--enable-sysvsem \
	--enable-sysvshm \
	--enable-pcntl \
	--enable-mbregex \
	--enable-exif \
	--enable-bcmath \
	--with-mhash \
	--enable-zip \
	--with-pcre-regex \
	--with-mysql \
	--with-pdo-mysql \
	--with-mysqli \
	--with-jpeg-dir=/usr \
	--with-png-dir=/usr \
	--enable-gd-native-ttf \
	--with-openssl \
	--with-fpm-user=www-data \
	--with-fpm-group=www-data \
	--with-libdir=/lib/x86_64-linux-gnu \
	--with-gettext \
	--with-xmlrpc \
	--with-xsl \
	--enable-opcache \
	--enable-fpm
	make -j $(nproc)
	sudo make install
	cd ..
	# update mcrypt
	sudo wget https://getcomposer.org/download/latest-2.2.x/composer.phar -O /home/fos-streaming/fos/php/bin/composer
	sudo chmod +x /home/fos-streaming/fos/php/bin/composer
	sudo /home/fos-streaming/fos/php/bin/php /home/fos-streaming/fos/php/bin/composer require phpseclib/mcrypt_compat -q
	# geoip
	wget https://pecl.php.net/get/geoip-1.1.1.tgz
	tar -xvf geoip-1.1.1.tgz
	cd geoip-1.1.1
	/home/fos-streaming/fos/php/bin/phpize
	./configure --with-php-config=/home/fos-streaming/fos/php/bin/php-config
	make -j$(nproc)
	sudo make install
	cd ..
	rm -rf geoip-1.1.*
	# igbinary
	wget https://pecl.php.net/get/igbinary-2.0.8.tgz
	tar -xvf igbinary-2.0.8.tgz
	cd igbinary-2.0.8
	/home/fos-streaming/fos/php/bin/phpize
	./configure --with-php-config=/home/fos-streaming/fos/php/bin/php-config
	make -j$(nproc)
	sudo make install
	cd /tmp
	sudo rm -rf *
	sudo mkdir -p /home/fos-streaming/fos/php/etc/pool.d/
	sudo wget -O /home/fos-streaming/fos/php/etc/pool.d/www.conf https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/php-conf/etc/pool.d/www.conf
	sudo wget -O /home/fos-streaming/fos/php/etc/pear.conf https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/php-conf/etc/pear.conf
	sudo wget -O /home/fos-streaming/fos/php/etc/php-fpm.conf https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/php-conf/etc/php-fpm.conf
	sudo wget -O /home/fos-streaming/fos/php/etc/php-fpm.conf.default https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/php-conf/etc/php-fpm.conf.default
	sudo wget -O /home/fos-streaming/fos/php/lib/php.ini https://raw.githubusercontent.com/amidevous1/FOS-Streaming-v1/refs/heads/master/php-conf/lib/php.ini
    cd /home/fos-streaming/fos/www  > /dev/null 2>&1
    git clone https://github.com/zgelici/FOS-Streaming-v1.git  > /dev/null 2>&1
    cp -R /home/fos-streaming/fos/www/FOS-Streaming-v1/* /home/fos-streaming/fos/www/  > /dev/null 2>&1

    echo 'www-data ALL = (root) NOPASSWD: /usr/local/bin/ffmpeg' >> /etc/sudoers  > /dev/null 2>&1
    echo 'www-data ALL = (root) NOPASSWD: /usr/local/bin/ffprobe' >> /etc/sudoers  > /dev/null 2>&1
    echo '*/2 * * * * www-data /home/fos-streaming/fos/php/bin/php /home/fos-streaming/fos/www/cron.php' >> /etc/crontab  > /dev/null 2>&1

    sed --in-place '/exit 0/d' /etc/rc.local > /dev/null 2>&1
    echo 'sleep 10' >> /etc/rc.local > /dev/null 2>&1
    echo '/home/fos-streaming/fos/nginx/sbin/nginx_fos' >> /etc/rc.local > /dev/null 2>&1
    echo '/home/fos-streaming/fos/php/sbin/php-fpm' >> /etc/rc.local > /dev/null 2>&1
    echo 'exit 0' >> /etc/rc.local > /dev/null 2>&1

    /bin/mkdir /home/fos-streaming/fos/www/hl  > /dev/null 2>&1
    chmod -R 777 /home/fos-streaming/fos/www/hl  > /dev/null 2>&1
    /bin/mkdir /home/fos-streaming/fos/www/cache  > /dev/null 2>&1
    chmod -R 777 /home/fos-streaming/fos/www/cache  > /dev/null 2>&1
    chown www-data:www-data /home/fos-streaming/fos/nginx/conf  > /dev/null 2>&1

    /bin/cp improvement/nginx.conf /home/fos-streaming/fos/nginx/conf/nginx.conf
    /bin/cp improvement/php-fpm.conf /home/fos-streaming/fos/php/etc/php-fpm.conf
    /bin/cp improvement/www.conf /home/fos-streaming/fos/php/etc/pool.d/www.conf
    /bin/cp improvement/balance.conf /home/fos-streaming/fos/nginx/conf/balance.conf

}

startfos(){
    /home/fos-streaming/fos/php/sbin/php-fpm
    /home/fos-streaming/fos/nginx/sbin/nginx_fos
    sleep 3
    curl "http://127.0.0.1:7777/install_database_tables.php?install"
    curl "http://127.0.0.1:7777/install_database_tables.php?update"
    rm -r /home/fos-streaming/fos/www/install_database_tables.php
}

ffmpeg()
{
    wget http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -O /home/fos-streaming/ffmpeg-release-amd64-static.tar.xz > /dev/null 2>&1
    tar -xJf /home/fos-streaming/ffmpeg-release-amd64-static.tar.xz -C /tmp/ > /dev/null 2>&1
    /bin/cp /tmp/ffmpeg*/ffmpeg  /usr/local/bin/ffmpeg
    /bin/cp /tmp/ffmpeg*/ffprobe /usr/local/bin/ffprobe
    chmod 755 /usr/local/bin/ffmpeg  > /dev/null 2>&1
    chmod 755 /usr/local/bin/ffprobe  > /dev/null 2>&1
    chown www-data:root /usr/local/nginx/html  > /dev/null 2>&1
}
foswebport-streamport()
{
    /bin/mkdir /home/fos-streaming/fos/www1/
    /bin/mkdir /home/fos-streaming/fos/www1/log/
    chown fosstreaming:fosstreaming /home/fos-streaming/fos/www1/log/
    /bin/cp -R /home/fos-streaming/fos/www/* /home/fos-streaming/fos/www1/
    /bin/rm /home/fos-streaming/fos/www1/*.*
    /bin/rm -rf /home/fos-streaming/fos/www1/hl
    /bin/ln -s /home/fos-streaming/fos/www/hl /home/fos-streaming/fos/www1/hl
    /bin/ln -s /home/fos-streaming/fos/www/config.php /home/fos-streaming/fos/www1/config.php
    /bin/ln -s /home/fos-streaming/fos/www/functions.php /home/fos-streaming/fos/www1/functions.php
    /bin/ln -s /home/fos-streaming/fos/www/stream.php /home/fos-streaming/fos/www1/stream.php
    /bin/ln -s /home/fos-streaming/fos/www/playlist.php /home/fos-streaming/fos/www1/playlist.php
 }   
info(){
 echo "********************************************************************************************;
    echo "FOS-Streaming installed.. \n";
    echo "streaming port   page: 'http://host:8000' \n";
    echo "visit management page: 'http://host:7777' \n";
    echo "Login: \n";
    echo "Username: admin \n";
    echo "Password: admin \n";
    echo "database details: \n";
    echo  "hostname: localhost, database_name: " $1 " , database_username: "  $2  " , database_password " $3
    echo "IMPORTANT: After you logged in, go to settings and check your ip-address. \n";
    echo "*****************************************************************************************;
}

database(){

debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/repo-codename select trusty'
debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/repo-distro select ubuntu'
debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/repo-url string http://repo.mysql.com/apt/'
debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/select-preview select '
debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/select-product select Ok'
debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/select-server select mysql-5.7'
debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/select-tools select '
debconf-set-selections <<< 'mysql-apt-config mysql-apt-config/unsupported-platform select abort'
wget http://dev.mysql.com/get/mysql-apt-config_0.7.2-1_all.deb
DEBIAN_FRONTEND=noninteractive sudo DEBIAN_FRONTEND=noninteractive dpkg -i mysql-apt-config_0.7.2-1_all.deb
sudo rm -f /etc/apt/sources.list.d/mysql.list
echo "### THIS FILE IS AUTOMATICALLY CONFIGURED ###" | sudo tee /etc/apt/sources.list.d/mysql.list
echo "# You may comment out entries below, but any other modifications may be lost." | sudo tee /etc/apt/sources.list.d/mysql.list
echo "# Use command 'dpkg-reconfigure mysql-apt-config' as root for modifications." | sudo tee /etc/apt/sources.list.d/mysql.list
echo "deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-apt-config" | sudo tee /etc/apt/sources.list.d/mysql.list
echo "deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7" | sudo tee /etc/apt/sources.list.d/mysql.list
echo "deb-src http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7" | sudo tee /etc/apt/sources.list.d/mysql.list
cat > /usr/bin/add-apt-key <<EOG
#!/bin/bash
sudo rm -f "/etc/apt/trusted.gpg.d/\$1.gpg"
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x"$1"" | gpg --dearmor | sudo tee "/etc/apt/trusted.gpg.d/\$1.gpg" > /dev/null
sudo apt-get update
EOG
sudo chmod +x /usr/bin/add-apt-key
sudo apt-get update 2>&1 | sed -ne 's?^.*NO_PUBKEY ??p' | xargs -r -- sudo add-apt-key
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xB7B3B788A8D3785C" | gpg --dearmor | sudo tee "/etc/apt/trusted.gpg.d/B7B3B788A8D3785C.gpg" > /dev/null
sudo apt-get update

echo ""
read -p "Choose your MySQL database name: " sqldatabase
read -p "Enter your MySQL username(usual 'root'): " sqluname
read -rep $'Enter your MySQL password (ENTER for none):' sqlpasswd
echo "mysql-server mysql-serverm/root_password password mysql" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $sqlpasswd" | debconf-set-selections

echo "mysql-community-server mysql-server/root_password password mysql" | debconf-set-selections
echo "mysql-community-server/root_password_again password $sqlpasswd" | debconf-set-selections
echo "mysql-community-server mysql-server/root_password password mysql" | debconf-set-selections
echo "mysql-community-server/root_password_again password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
echo "phpmyadmin phpmyadmin/app-password-confirm password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/admin-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/app-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" | debconf-set-selections

DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-community-server > /dev/null 2>&1

mysql -uroot -p$sqlpasswd -e "CREATE DATABASE $sqldatabase"
mysql -uroot -p$sqlpasswd -e "grant all privileges on $sqldatabase.* to '$sqluname'@'localhost' identified by '$sqlpasswd'"


sed -i 's/xxx/'$sqldatabase'/g' /home/fos-streaming/fos/www/config.php
sed -i 's/zzz/'$sqlpasswd'/g' /home/fos-streaming/fos/www/config.php
sed -i 's/ttt/'$sqluname'/g' /home/fos-streaming/fos/www/config.php

}

echo "FOS-Streaming is installing, you need to wait till the installation gets finished"

fosstreamingexist
distro
packages_install
fos_install
database
ffmpeg
startfos
#test
foswebport-streamport
info

