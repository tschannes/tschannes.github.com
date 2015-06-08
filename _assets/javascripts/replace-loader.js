// Replace Loader gif with either small or big images
function changeImages() {
  var imagesFound = document.getElementsByTagName("img");
  var arrayLength = imagesFound.length;
  for (var i = 0; i < arrayLength; i++) {
    var img = imagesFound[i];
    if (img.hasAttribute('id')) {
      var newImgSrc = img.id;
      var newImageName = newImgSrc.split('\/').pop();
      if (window.innerWidth < 700) {
        img.src = "/images/small/" + newImageName;
      } else {
        img.src = "/images/" + newImageName;
      }
    }
  }
}