FROM ruby:2.4.6-alpine3.10

RUN apk add --no-cache --update build-base \
                                linux-headers \
                                git \
                                imagemagick6-dev \
                                mariadb-dev \
                                nodejs \
                                yarn \
                                tzdata

ENV APP_PATH /app/
ENV RAILS_ENV production

WORKDIR $APP_PATH
COPY . $APP_PATH
RUN bin/bundle install --without development test
RUN bin/rake assets:precompile

CMD ["bin/bundle", "exec", "puma", "-p", "80"]

