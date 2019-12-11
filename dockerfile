#just container with sshd + key
FROM centos:latest

RUN yum -y install openssh-server java-1.8.0-openjdk git gcc tree && \
    ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa && \
    yum clean all

RUN mkdir /root/.ssh && \
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDu2FGGqa+bJ9ui6qrhfiMRRcT8KjCvBHYSqQF67yhUMoyddpEIDLD3MrIT6hGvF7bvoKVU7aYaI9rjiXFEYVWAs6AGlS+vMQpE8NGZvutGxAbZTsESxHxPrVHCmapOAugnDbLWfc4rPKB8hD2Q+JTcrOcFcMKkXdF+dPpKKLLikVlaY8ASy37lASxFh+hCWaImBBtb5pqe88qT/TJJVs+6HjanDv7OCFoN9VhfloDWolww6ew0d2M0CabKtUdz03EiELedRB8eYwQdv2xtAIRUEHPoCe2UgjfAmtoboWZGJoQy1HJpkbQceKmJ00K8JOW/W0JtfQaspfxwr1VpdBTz melnikov@dev.ttw" > /root/.ssh/authorized_keys

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
