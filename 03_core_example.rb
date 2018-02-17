Benchmark.bm do |bm|
  bm.report { first_approach }
  bm.report { alternative_approach }
end
