def client_maker
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key    = "jIK2xyuGCwrteVBDtvA"
	  config.consumer_secret = "eQaj358KHcenflhEqQ8EcDRDvhIiOSSxDXcioMQ9Q"
	  config.access_token    = "2228868356-3mHJX1PnJS6X8apMF2FLzNgEmQl94m0CqBvN1nj"
	  config.access_token_secret = "qcYBXoamuyLFiAJk2y6NXlv8wDUZpNvXn7mio0dNejdqj"
	end
	return client
end