FROM dart:stable AS build
WORKDIR /app
COPY ./extra/pubspec.* ./
COPY . ./app
RUN dart pub get
RUN dart compile exe app/bin/extra.dart
ENTRYPOINT ["./bin/extra.exe"]