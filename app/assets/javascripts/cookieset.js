$(document).ready(function(){
  
  // checks to see if there are search params works
  if(location.search){
    // splits location search bar by '?' and gets
    //  everything after the ?
    params = location.search.split("?")[1]

    // splits params by '=' and gets everything after the '='
    name = params.split("=")[1]

    // sets cookie with key 'name_submitted' to whatever name is set to
    Cookies.set("name_submitted", name)
  }

  // checks to see if the cookie is set
  if(Cookies.get("name_submitted")) {

    // gets the cookie value and sets the html of name span
    $("#name_span").html(Cookies.get("name_submitted"))
  }
})