FROM 860030201430.dkr.ecr.us-east-1.amazonaws.com/rails-nginx-passenger:latest
LABEL maintainer=absoluteyl

# ---------------------------- #
# - Rails App Bundle Install - #
# ---------------------------- #
# 1. add project source code
# 2. chown rails app directory files
# 3. change to rails app directory
# 4. process bundle install

ADD . /home/app/rails-app/
RUN chown -R app:app /home/app/rails-app/.*
WORKDIR /home/app/rails-app
RUN bundle install --without test development

# ---------------- #
# - Custom Build - #
# ---------------- #

# Enable features
RUN rm -f /etc/switch/sekrets/down
RUN rm -f /etc/switch/db-migrate/down
RUN rm -f /etc/switch/awslogs/down
