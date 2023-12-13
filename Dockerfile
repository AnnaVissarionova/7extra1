FROM dart:stable AS build
WORKDIR /app
COPY ./extra/pubspec.* ./
COPY . ./app
COPY ./extra/bin/extra.dart ./app/bin/extra.dart

RUN dart pub get
RUN dart compile exe app/bin/extra.dart
ENTRYPOINT ["./bin/extra.exe"]