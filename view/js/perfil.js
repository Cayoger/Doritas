__('updateD').onclick = function() {

  var tipo = v('type_doc'), doc = v('numb_doc'), nam = v('name'), lnam = v('lname');

  if (tipo === 0 && doc.length === 0 && doc.length === 0 && doc.length === 0) {
    console.log("Vacios");
  } else {
    console.log("llenos");
  }

};
