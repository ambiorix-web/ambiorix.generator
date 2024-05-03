box::use(
  htmltools[tags, tagList],
  . / card[item_card]
)

title <- c(
  "Rambo the Majestic",
  "Daisy the Sweetheart",
  "Thunder the Adventurer",
  "Mocha the Gentle Giant"
)

img <- file.path(
  "static",
  "img",
  paste0("goat-", 1:4, ".jpg")
)

description <- c(
  "Rambo is the epitome of regality among goats. With his striking physique and a set of impressive, spiraling horns, he commands attention wherever he goes. His thick, lustrous coat shines in the sunlight, highlighting his muscular build and impeccable posture. Rambo exudes confidence and strength, making him the ideal choice for those seeking a show-stopping addition to their herd.",
  "Meet Daisy, the gentle soul of the herd. With her soft, doe-like eyes and a heartwarming smile, she captures the hearts of everyone she meets. Daisy's creamy white coat is as soft as a cloud, inviting cuddles and affection from visitors. Despite her gentle nature, she possesses a quiet resilience and unwavering loyalty, making her the perfect companion for those seeking a loving and nurturing presence in their lives.",
  "Thunder is a goat of boundless energy and adventurous spirit. With his sleek, jet-black coat and agile frame, he's always ready for action. Thunder loves nothing more than exploring the great outdoors, leaping over obstacles with grace and agility. His playful antics and mischievous grin make him the life of the party, bringing joy and excitement wherever he roams. For those seeking a companion for outdoor adventures and endless fun, Thunder is the perfect choice.",
  "Mocha is a gentle giant with a heart of gold. Towering above the rest with his impressive stature and warm, caramel-colored coat, he embodies strength and kindness in equal measure. Despite his imposing size, Mocha is a soft-spoken and gentle-natured soul, known for his calming presence and soothing demeanor. Whether it's lending a listening ear or offering a comforting nuzzle, Mocha is always there when you need him, making him the perfect companion for those seeking a steadfast and loyal friend."
)

#' Home page
#'
#' @export
page <- tags$div(
  tags$div(
    class = "container",
    item_card(title = title, img = img, description = description)
  )
)
