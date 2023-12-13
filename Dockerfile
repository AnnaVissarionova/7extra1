FROM google/dart:latest
WORKDIR /files
COPY . /files
RUN dart pub get
RUN dart compile exe bin/alg-on-dart.dart
ENTRYPOINT ["./bin/alg-on-dart.exe"]