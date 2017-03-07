-- example reporting script which demonstrates a custom
-- done() function that prints latency percentiles as CSV

done = function(summary, latency, requests)
   io.write("------------------------------\n")
   io.write("Number of requests: ", summary.requests, " Latencies:\n")
   for i=0,summary.requests,1 do
       io.write(latency[i], "\n")
   end
end
