FROM mono

# based on https://github.com/seif/docker-mono-apache

# === register mono repositories ===============================================
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
RUN apt-get update

# === install mono =============================================================
RUN apt-get update \
        && apt-get update \
        && apt-get install -y vim \
        && apt-get install mono-devel apache2 libapache2-mod-mono mono-apache-server4 -y --no-install-recommends \
        && a2enmod mod_mono \
        && service apache2 stop \
        && apt-get autoremove -y \
        && apt-get clean \
        && rm -rf /var/tmp/* \
        && rm -rf /var/lib/apt/lists/* \
        && mkdir -p /etc/mono/registry /etc/mono/registry/LocalMachine

# === install postgres provider for mono ======================================
# http://www.npgsql.org/
RUN nuget install Npgsql -version 3.1.9

# === add the site config ======================================================
ADD ./config/apache2-site.conf /etc/apache2/sites-available/default
ADD ./config/apache2.conf /etc/apache2/apache2.conf

WORKDIR /var/www
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
