let valid = false;
let valid_pw = false;
let valid_uname = false;
let valid_email = false;
function validate() {
  let pwd = document.getElementById("pword").value;
  let confpwd = document.getElementById("confirm").value;
  if (pwd != confpwd) {
    valid_pw = false;
    document.getElementById("message").innerHTML =
      "<b> passwords do not match</b>";
  } else {
    valid_pw = true;
    document.getElementById("message").innerHTML = "";
  }
}
function validateUname() {
  let uname = document.getElementById("uname").value;
  let upper = false,
    numeric = false;
  for (var i = 0; i < uname.length; i++) {
    if (uname[i] >= "0" && uname[i] <= "9") numeric = true;
    if (uname[i] >= "A" && uname[i] <= "Z") upper = true;
  }
  if (upper == false || numeric == false) {
    valid_uname = false;
    document.getElementById("valuname").innerHTML = "<b> invalid username</b>";
  } else {
    valid_uname = true;
    document.getElementById("valuname").innerHTML = "";
  }
}
const validEmail = () => {
  let email = document.getElementById("email");
  let flag = String(email)
    .toLowerCase()
    .match(
      /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    );
  if (flag == false) {
    valid_email = false;
  } else {
    valid_email = true;
  }
};

function finalValidate() {
  if (valid_pw == true && valid_email == true && valid_uname == true) {
    let name = document.getElementById("manager").value;
    let email = document.getElementById("email").value;
    let uname = document.getElementById("uname").value;
    let tl = document.getElementById("tlead").value;
    alert(
      "Name: " +
        name +
        "\n" +
        "Email: " +
        email +
        "\n" +
        "User Name: " +
        uname +
        "\n" +
        "Team Lead: " +
        tl
    );
  }
}

// shortcut.add("Ctrl+E", function doKeyCheck() {
//   // do something
//   var element = document.body;
//   element.classList.toggle("dark-mode");
// });
document.onkeyup = function (e) {
   if (e.ctrlKey && e.which == 77) {
     var element = document.body;
      element.classList.toggle("dark-mode");
   } 
};