# Logging

Common logging infrastructure.

## Design

The logging infrastructure supports two modes of operation:

* The global `Logger` singleton delegates to specific logging implementations
  (e.g. PrintLogger).

* The application creates logger instances that implement the `Logging` 
  protocol and are provided through some kind of dependency-injection
  framework.

The first mode is a simpler solution and should be preferred.

## License

The software and all related files are licensed under the MIT license.

(c) 2018 Reizu

