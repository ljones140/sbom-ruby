# sbom-ruby

Test Repo for creating Ruby SBOMs.
For some work I'm doing at GitHub.

To run locally

```
bundle install
bundle exec puma -p 3000

# check it works
curl localhost:3000
```

Via Docker
```
docker build . sbom-ruby
docker run -p 80:3000 sbom-ruby

# check it works
curl localhost:3000
```
