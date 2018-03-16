FROM anapsix/alpine-java

# CoreNLP
ENV CORENLP_VERSION   2018-02-27
ENV CORENLP_FULL      stanford-corenlp-full-$CORENLP_VERSION

RUN mkdir -p /opt/corenlp
WORKDIR /opt/corenlp

# install ssl certificates for wget (https://github.com/Yelp/dumb-init/issues/73)
RUN apk --no-cache add openssl wget
#RUN apk update \
# && apk add ca-certificates wget \
# && update-ca-certificates

RUN wget --quiet http://nlp.stanford.edu/software/stanford-corenlp-full-${CORENLP_VERSION}.zip -O corenlp.zip
RUN wget --quiet http://nlp.stanford.edu/software/stanford-german-corenlp-${CORENLP_VERSION}-models.jar
RUN unzip corenlp.zip

RUN mv $CORENLP_FULL/stanford-corenlp-*.jar .
RUN rm -r $CORENLP_FULL
RUN rm corenlp.zip

ENV PORT 9000

EXPOSE $PORT

CMD java -mx6g -cp "*" edu.stanford.nlp.pipeline.StanfordCoreNLPServer -timeout 10000

