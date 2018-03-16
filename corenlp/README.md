# Stanford CoreNLP

[Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/) provides a rich set of state-of-the-art NLP tools. It can be use via command line interface, a Java API, or a web API. To use CoreNLP from programming languages other than Java it is recommended to use the CoreNLP server with its web API.

# CoreNLP Server

The [CoreNLP server](https://stanfordnlp.github.io/CoreNLP/corenlp-server.html) offers simple web-based interface and a web API.

## Setting up the CoreNLP Server

Running the CoreNLP server with support for the German language requires downloading the base CORENLP package and the German language models.

The official documentation describes all necessary steps in detail.
To make things easier, we'll use a docker image which includes the CoreNLP library and the German language model.

*Build docker image:*

```sh
docker build -t corenlp .
```

*Run docker image:*

```sh
docker run -p 9000:9000 --name corenlp corenlp
```

Once the CoreNLP server is running it can be accessed via http://localhost:9000.

## Using the CoreNLP Server

###

Matching Tokens with TokenRegex:

* Example 1: Two consecutive tokens with cardinality type and noun.
  [{pos:CARD}][{pos:NN}]
