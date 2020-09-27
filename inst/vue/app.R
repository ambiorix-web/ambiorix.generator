library(ambiorix)

app <- Ambiorix$new()

# serve static files
app$static("assets", "static")

# page
app$get("/", function(req, res){
  res$send_file("home")
})

# start app
app$start()
