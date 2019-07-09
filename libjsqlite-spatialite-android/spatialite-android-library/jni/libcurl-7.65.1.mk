include $(CLEAR_VARS)
# -------------------
#  libcurl-7.65.1
# -------------------
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi --disable-manual
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi  --disable-gpg --disable-manual
# -------------------
# As of 2019-06-05
# -------------------
# https://curl.haxx.se/download.html
# -------------------
# Deals with 32/64 problems better
# -------------------
# source android_arm64_21.sh
# ./configure --host=arm-unknown-linux-androideabi --build=x86_64-pc-linux-gnu  --prefix=/home/mj10777/000_links/gnu_source/adt-bundle-linux/geopaparazzi/geopaparazzi.eu/libjsqlite-spatialite-android/apps_local/arm64-v8a.21
# -------------------
# conflicting types for 'curl_easy_escape'
# conflicting types for 'curl_easy_unescape'
# add '-DBUILDING_LIBCURL \'
# -------------------
LOCAL_MODULE    := libcurl

# http://thesoftwarerogue.blogspot.de/2010/05/porting-of-libcurl-to-android-os-using.html

curl_flags := \
 -DCURL_STATICLIB \
 -DBUILDING_LIBCURL \
 -DHAVE_CONFIG_H=1

LOCAL_CFLAGS    := \
 $(curl_flags)

LOCAL_C_INCLUDES := \
 $(CURL_PATH)/include \
 $(CURL_PATH)/lib \
 $(CURL_PATH)

LOCAL_SRC_FILES := \
 $(CURL_PATH)/lib/altsvc.c \
 $(CURL_PATH)/lib/amigaos.c \
 $(CURL_PATH)/lib/asyn-ares.c \
 $(CURL_PATH)/lib/asyn-thread.c \
 $(CURL_PATH)/lib/base64.c \
 $(CURL_PATH)/lib/conncache.c \
 $(CURL_PATH)/lib/connect.c \
 $(CURL_PATH)/lib/content_encoding.c \
 $(CURL_PATH)/lib/cookie.c \
 $(CURL_PATH)/lib/curl_addrinfo.c \
 $(CURL_PATH)/lib/curl_ctype.c \
 $(CURL_PATH)/lib/curl_des.c \
 $(CURL_PATH)/lib/curl_endian.c \
 $(CURL_PATH)/lib/curl_fnmatch.c \
 $(CURL_PATH)/lib/curl_gethostname.c \
 $(CURL_PATH)/lib/curl_gssapi.c \
 $(CURL_PATH)/lib/curl_memrchr.c \
 $(CURL_PATH)/lib/curl_multibyte.c \
 $(CURL_PATH)/lib/curl_ntlm_core.c \
 $(CURL_PATH)/lib/curl_ntlm_wb.c \
 $(CURL_PATH)/lib/curl_path.c \
 $(CURL_PATH)/lib/curl_range.c \
 $(CURL_PATH)/lib/curl_rtmp.c \
 $(CURL_PATH)/lib/curl_sasl.c \
 $(CURL_PATH)/lib/curl_sspi.c \
 $(CURL_PATH)/lib/curl_threads.c \
 $(CURL_PATH)/lib/dict.c \
 $(CURL_PATH)/lib/dotdot.c \
 $(CURL_PATH)/lib/easy.c \
 $(CURL_PATH)/lib/escape.c \
 $(CURL_PATH)/lib/file.c \
 $(CURL_PATH)/lib/fileinfo.c \
 $(CURL_PATH)/lib/formdata.c \
 $(CURL_PATH)/lib/ftp.c \
 $(CURL_PATH)/lib/ftplistparser.c \
 $(CURL_PATH)/lib/getenv.c \
 $(CURL_PATH)/lib/getinfo.c \
 $(CURL_PATH)/lib/gopher.c \
 $(CURL_PATH)/lib/hash.c \
 $(CURL_PATH)/lib/hmac.c \
 $(CURL_PATH)/lib/hostasyn.c \
 $(CURL_PATH)/lib/hostcheck.c \
 $(CURL_PATH)/lib/hostip4.c \
 $(CURL_PATH)/lib/hostip6.c \
 $(CURL_PATH)/lib/hostip.c \
 $(CURL_PATH)/lib/hostsyn.c \
 $(CURL_PATH)/lib/http2.c \
 $(CURL_PATH)/lib/http.c \
 $(CURL_PATH)/lib/http_chunks.c \
 $(CURL_PATH)/lib/http_digest.c \
 $(CURL_PATH)/lib/http_negotiate.c \
 $(CURL_PATH)/lib/http_ntlm.c \
 $(CURL_PATH)/lib/http_proxy.c \
 $(CURL_PATH)/lib/idn_win32.c \
 $(CURL_PATH)/lib/if2ip.c \
 $(CURL_PATH)/lib/imap.c \
 $(CURL_PATH)/lib/inet_ntop.c \
 $(CURL_PATH)/lib/inet_pton.c \
 $(CURL_PATH)/lib/krb5.c \
 $(CURL_PATH)/lib/ldap.c \
 $(CURL_PATH)/lib/llist.c \
 $(CURL_PATH)/lib/md4.c \
 $(CURL_PATH)/lib/md5.c \
 $(CURL_PATH)/lib/memdebug.c \
 $(CURL_PATH)/lib/mime.c \
 $(CURL_PATH)/lib/mprintf.c \
 $(CURL_PATH)/lib/multi.c \
 $(CURL_PATH)/lib/netrc.c \
 $(CURL_PATH)/lib/non-ascii.c \
 $(CURL_PATH)/lib/nonblock.c \
 $(CURL_PATH)/lib/nwlib.c \
 $(CURL_PATH)/lib/nwos.c \
 $(CURL_PATH)/lib/openldap.c \
 $(CURL_PATH)/lib/parsedate.c \
 $(CURL_PATH)/lib/pingpong.c \
 $(CURL_PATH)/lib/pipeline.c \
 $(CURL_PATH)/lib/pop3.c \
 $(CURL_PATH)/lib/progress.c \
 $(CURL_PATH)/lib/rand.c \
 $(CURL_PATH)/lib/rtsp.c \
 $(CURL_PATH)/lib/security.c \
 $(CURL_PATH)/lib/select.c \
 $(CURL_PATH)/lib/sendf.c \
 $(CURL_PATH)/lib/setopt.c \
 $(CURL_PATH)/lib/sha256.c \
 $(CURL_PATH)/lib/share.c \
 $(CURL_PATH)/lib/slist.c \
 $(CURL_PATH)/lib/smb.c \
 $(CURL_PATH)/lib/smtp.c \
 $(CURL_PATH)/lib/socks.c \
 $(CURL_PATH)/lib/socks_gssapi.c \
 $(CURL_PATH)/lib/socks_sspi.c \
 $(CURL_PATH)/lib/speedcheck.c \
 $(CURL_PATH)/lib/splay.c \
 $(CURL_PATH)/lib/ssh.c \
 $(CURL_PATH)/lib/ssh-libssh.c \
 $(CURL_PATH)/lib/strcase.c \
 $(CURL_PATH)/lib/strdup.c \
 $(CURL_PATH)/lib/strerror.c \
 $(CURL_PATH)/lib/strtok.c \
 $(CURL_PATH)/lib/strtoofft.c \
 $(CURL_PATH)/lib/system_win32.c \
 $(CURL_PATH)/lib/telnet.c \
 $(CURL_PATH)/lib/tftp.c \
 $(CURL_PATH)/lib/timeval.c \
 $(CURL_PATH)/lib/transfer.c \
 $(CURL_PATH)/lib/url.c \
 $(CURL_PATH)/lib/version.c \
 $(CURL_PATH)/lib/warnless.c \
 $(CURL_PATH)/lib/wildcard.c \
 $(CURL_PATH)/lib/x509asn1.c \
 $(CURL_PATH)/lib/vtls/axtls.c \
 $(CURL_PATH)/lib/vtls/cyassl.c \
 $(CURL_PATH)/lib/vtls/darwinssl.c \
 $(CURL_PATH)/lib/vtls/gskit.c \
 $(CURL_PATH)/lib/vtls/gtls.c \
 $(CURL_PATH)/lib/vtls/mbedtls.c \
 $(CURL_PATH)/lib/vtls/nss.c \
 $(CURL_PATH)/lib/vtls/openssl.c \
 $(CURL_PATH)/lib/vtls/polarssl.c \
 $(CURL_PATH)/lib/vtls/polarssl_threadlock.c \
 $(CURL_PATH)/lib/vtls/schannel.c \
 $(CURL_PATH)/lib/vtls/vtls.c \
 $(CURL_PATH)/lib/vauth/cleartext.c \
 $(CURL_PATH)/lib/vauth/cram.c \
 $(CURL_PATH)/lib/vauth/digest.c \
 $(CURL_PATH)/lib/vauth/digest_sspi.c \
 $(CURL_PATH)/lib/vauth/krb5_gssapi.c \
 $(CURL_PATH)/lib/vauth/krb5_sspi.c \
 $(CURL_PATH)/lib/vauth/ntlm.c \
 $(CURL_PATH)/lib/vauth/ntlm_sspi.c \
 $(CURL_PATH)/lib/vauth/oauth2.c \
 $(CURL_PATH)/lib/vauth/spnego_gssapi.c \
 $(CURL_PATH)/lib/vauth/spnego_sspi.c \
 $(CURL_PATH)/lib/vauth/vauth.c
include $(BUILD_STATIC_LIBRARY)











