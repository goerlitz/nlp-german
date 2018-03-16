# Stanford CoreNLP

[Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/) provides a rich set of state-of-the-art NLP tools. It can be use via command line interface, a Java API, or a web API. To use CoreNLP from programming languages other than Java it is recommended to use the CoreNLP server with its web API.

# CoreNLP Server

The [CoreNLP server](https://stanfordnlp.github.io/CoreNLP/corenlp-server.html) offers a simple web-based interface and a web API.

## Setting up the CoreNLP Server

Running the CoreNLP server with support for German requires downloading the base CoreNLP package and the German language models.

The official [CoreNLP server documentation](https://stanfordnlp.github.io/CoreNLP/corenlp-server.html) describes all necessary steps setup and run the server.
However, to make things easier, we'll use a docker image which includes all required libraries and models.

*Build docker image:*

```sh
docker build -t corenlp-german .
```

*Run docker image:*

```sh
docker run -p 9000:9000 --name corenlp corenlp-german
```

Once the CoreNLP server is running it can be accessed via http://localhost:9000.

## Using the CoreNLP Server

### Matching Tokens with TokenRegex

* Example 1: Two consecutive tokens with cardinality type and noun.
  [{pos:CARD}][{pos:NN}]
