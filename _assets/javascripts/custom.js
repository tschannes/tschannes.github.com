// Open external links in new windows
function linkTargets() {
    for (var links = document.links, i = 0, a; a = links[i]; i++) {
      if (a.host !== location.host && a.id !== "tglBtn") {
        a.target = '_blank';
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

// Create the scrollbar measurement node hack by David Walsh
var scrollDiv = document.createElement("div");
scrollDiv.className = "scrollbar-measure";
document.body.appendChild(scrollDiv);
var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth;
document.body.removeChild(scrollDiv);

// Replace Loader with either small or big images
function changeImages() {
  var imagesFound = document.getElementsByTagName("img");
  var arrayLength = imagesFound.length;
  for (var i = 0; i < arrayLength; i++) {
    var img = imagesFound[i];
    if (img.hasAttribute('id')) {
      var imgSrc = img.id;
      var imageName = imgSrc.split('\/').pop();
      if (window.innerWidth < 700) {
        /*console.log(imgSrc.to_s);
        Fader.fadeOutElement(img, 0.5);*/
        img.src = "/images/small/" + imageName;
        /*Fader.fadeInElement(img, 0.5);*/
      } else {
        /*console.log(img);
        Fader.fadeOutElement(img, 1);*/
        img.src = "/images/" + imageName;
        /*Fader.fadeInElement(img, 0.5);*/
      };
    }
  };
}