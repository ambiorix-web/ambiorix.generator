library(ambiorix)

app <- Ambiorix$new()

# serve static files
app$static("src", "static")

# page
app$get("/", function(req, res){
  res$send_file("home")
})

# start app
app$start()
