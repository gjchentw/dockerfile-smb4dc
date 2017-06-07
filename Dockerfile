FROM gjchen/alpine:3.5
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add samba-dc krb5

#ADD	smb.conf /etc/samba/smb.conf

ENV	DC_WORKGROUP="KICKOFFWORK"
ENV	DC_HOSTNAME="DC"
ENV	DC_REALM="KICKOFF.WORK"
