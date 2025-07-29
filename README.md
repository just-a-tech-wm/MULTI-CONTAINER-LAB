# MULTI-CONTAINER-LAB

NGINX-MULTICONTAINER-LAB

NGINX-Multicontainer-Lab is a home lab environment designed to simulate a containerized microservices infrastructure using Docker and AlmaLinux. It showcases how multiple independent static websites can be deployed and exposed securely through a centralized reverse proxy setup.

Lab Overview 

The environment is composed of two AlmaLinux-8 virtual machines created with VMware Workstation 17. The first VM acts as a reverse proxy server running NGINX and a DNS server for internal name resolution. The second VM is dedicated to hosting multiple Docker containers, each serving a standalone static website through Apache. In the current configuration, two websites are deployed, each in its own container, and are accessible through different ports on the host machine.

NGINX is configured to function solely as a reverse proxy, handling HTTPS termination using self-signed SSL certificates and routing incoming requests based on domain names. The DNS server maps virtual hostnames (exemple : "one.test.local", "two.test.local") to the proxy's IP address, allowing NGINX to forward traffic to the appropriate backend container. This separation of roles ensures clean service boundaries and aligns with microservices principles.

The websites themselves are built using HTML, CSS, and JavaScript, and are served over Apache inside their respective containers. Each container runs independently, simulating isolated microservices within a unified infrastructure. The project avoids the use of "docker-compose" intentionally, to emphasize fine-grained container control and service independence.

For simplicity during development and testing, SELinux and FireWall are disabled across all machines. While this is not advisable in production environments, it streamlines connectivity and deployment in a lab setting. The lab also benefits from centralized configuration using consistent root credentials, allowing seamless management across the two nodes.

This project demonstrates a practical implementation of multi-container architecture using open-source tools and minimal resources. It offers a solid foundation for understanding service isolation, internal DNS routing, secure reverse proxying with NGINX, and web service deployment in containerized environments.
