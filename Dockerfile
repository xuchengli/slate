FROM ruby:2.3.1-onbuild
MAINTAINER Li Xu Cheng <lixucheng@ziggurat.cn>
VOLUME /usr/src/app/source
EXPOSE 4567

RUN apt-get update && apt-get install -y nodejs \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
