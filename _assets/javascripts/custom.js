// Open external links in new windows
function linkTargets() {
    for (var links = document.links, i = 0, a; a = links[i]; i++) {
      if (a.host !== location.host && a.id !== "tglBtn") {
        a.target = '_blank';
      }else{
        a.call = "efxOut";
      }
    }
  }

// Load Google Fonts
function loadFonts() {
    WebFont.load({
      google: {
        families: ['Raleway:normal,bold']
      }
    });
  }

// Measer the scrollbar width. hack by David Walsh
var scrollDiv = document.createElement("div");
scrollDiv.className = "scrollbar-measure";
document.body.appendChild(scrollDiv);
var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth;
document.body.removeChild(scrollDiv);

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