desc 'To run:'
task :run, [:ENVIRONMENT, :PROFILE] do |_t, args|
  init = 'cucumber' +
      ' ENVIRONMENT=' + args[:ENVIRONMENT] +
      ' -p ' + args[:PROFILE]

  system(init)
end