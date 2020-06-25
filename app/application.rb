class Application 
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      
      item_name = req.path.split("/items/").last
      
      if item = Item.all.find{|i| i.item == item_name}
         resp.write "#{"
       else 
       end
      
    else 
      resp.write "Path Not Found"
      resp.status = 404
    end


    resp.finish
  
   end