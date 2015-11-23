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
// ToggleMoreContent
var toggleVisibility = function(id) {
    if (!document.getElementById('tglBtn')) {
      return false;
    }
    var e = document.getElementById(id);
    var button = document.getElementById('tglBtn');
    if (e.style.display == 'block') {
      e.style.display = 'none';
      button.textContent = 'Anzeigen';
    } else {
      e.style.display = 'block';
      button.textContent = 'Ausblenden';
    }
  };

// Measer the scrollbar width. hack by David Walsh
var scrollDiv = document.createElement("div");
scrollDiv.className = "scrollbar-measure";
document.body.appendChild(scrollDiv);
var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth;
document.body.removeChild(scrollDiv);