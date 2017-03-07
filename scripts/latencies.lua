-- example reporting script which demonstrates a custom
-- done() function that prints latency percentiles as CSV

done = function(summary, latency, requests)
   io.write("------------------------------\n")
   
   -- generate random id for the output file 
   math.randomseed(latency.mean+latency.stdev)
   file_id = math.random((latency.max + 100) * 10000)
   file_path = "/tmp/wrk_output/" .. file_id
   io.write(file_path, "\n")

   -- write latencies to file
   file = io.open(file_path, "a")

   for i=0,summary.requests,1 do
       file:write(latency[i], "\n")
   end

   file:close()
end
