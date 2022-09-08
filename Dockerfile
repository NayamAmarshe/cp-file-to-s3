FROM python:3.7-alpine

LABEL "com.github.actions.name"="S3 Copy File to Destination"
LABEL "com.github.actions.description"="Copy Paste a file to an AWS S3 bucket directory"
LABEL "com.github.actions.icon"="copy"
LABEL "com.github.actions.color"="blue"

LABEL version="0.1.0"
LABEL repository="https://github.com/NayamAmarshe/cp-file-to-s3"
LABEL homepage="https://github.com/NayamAmarshe/"
LABEL maintainer="Nayam Amarshe <nayam@amars.he>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.16.232'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
