FROM sentry:9.0-onbuild
RUN apt update && \
    apt install -y libxmlsec1-dev pkg-config && \
    rm -rf /var/lib/apt/lists/*
RUN pip install https://github.com/getsentry/sentry-auth-saml2/archive/master.zip
