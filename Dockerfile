FROM ruby:2.7.1-alpine


RUN apk update && apk upgrade && \
    apk add --no-cache make g++ git
    
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./Gemfile /usr/src/app/
RUN bundle install
COPY ./ /usr/src/app
ENV RACK_ENV production
EXPOSE 80

CMD ["puma", "-p", "80"]
