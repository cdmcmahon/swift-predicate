FROM swift:5.2

WORKDIR /package

COPY . ./

RUN swift package resolve
RUN swift package clean
CMD swift test --parallel -v
