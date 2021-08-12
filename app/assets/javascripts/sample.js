var loadBinaryImage = function(path, cb, type) {
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function(){
    if (this.readyState == 4 && this.status == 200) {
      cb(this.response);
    }
  }
  xhr.open('GET', path);
  xhr.responseType = 'blob';
  // xhr.responseType = type || 'blob';
  xhr.send();
}

var showImageByCreateObjectURL = function(blob) {
  var img = document.querySelector("img");
  var url = window.URL; // || window.webkitURL;
  img.src = url.createObjectURL(blob);
}