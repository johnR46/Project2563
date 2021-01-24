class ConfigServer {
  static const _serviceUrl = 'http://477feaafde6b.ngrok.io';

// /register/add
  static final _headers = {'Content-Type': 'application/json'};

  get siginUser {
    return _serviceUrl + "/signin";
  }

  get ServiceUrl {
    return _serviceUrl;
  }

  get Headers {
    return _headers;
  }
}
