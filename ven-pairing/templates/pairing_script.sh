rm -fr /opt/illumio_ven_data/tmp && umask 026 && mkdir -p /opt/illumio_ven_data/tmp && curl --tlsv1 "https://scp4.illum.io:443/api/v18/software/ven/image?pair_script=pair.sh&profile_id=7486" -o /opt/illumio_ven_data/tmp/pair.sh && chmod +x /opt/illumio_ven_data/tmp/pair.sh && /opt/illumio_ven_data/tmp/pair.sh --management-server scp4.illum.io:443 --activation-code 16aea2ed421ac989b955b35f526bff8d0c041647af9d4be24d7997a39ce2e0f201f59766e572e4239

# if need to include proxy, add the following in the end of above script:
# eg: 
# --proxy-server 172.16.12.12:3128