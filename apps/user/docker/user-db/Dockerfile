FROM mongo:3
COPY ./docker/user-db/scripts /tmp/scripts
#COPY . /tmp/
run ls -gAhF tmp/scripts

# Modify child mongo to use /data/db-accounts as dbpath (because /data/db wont persist the build because it is already a VOLUME)
RUN mkdir -p /data/db-users \
    && echo "dbpath = /data/db-users" > /etc/mongodb.conf \
    && chown -R mongodb:mongodb /data/db-users
RUN chmod a+wx /var/
RUN ls /var/
RUN su - mongodb && mongod --fork --logpath /var/log/mongodb.log --dbpath /data/db-users  \
    && bash /tmp/scripts/mongo_create_insert.sh \
    && chown -R mongodb /data/db-users

# Make the new dir a VOLUME to persist it
VOLUME /data/db-users

CMD ["mongod", "--config", "/etc/mongodb.conf", "--smallfiles"]
