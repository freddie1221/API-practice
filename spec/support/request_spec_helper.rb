module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end
end

# parse turns a JSON into a hash
# you give it a JSON as its argument
# OK, but how can the JSON method just grab the body of the response... from where?
# It's like, when it's called, it immediately knows to grab the response object from 

