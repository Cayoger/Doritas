function __(id){
  return document.getElementById(id);
}
function v(id){
  return __(id).value;
}
function check(id){
  return __(id).checked ? true : false;
}
