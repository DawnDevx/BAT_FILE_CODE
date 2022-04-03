function ProcessKey(AdminPass) {
  if (AdminPass == "#C0KE") {
    alert("success");
  } else {
    alert("failed");
  }
}

function Scare() {
  alert("Getting __USER__ information...");
  alert("Stealing USER_Data: U.Drive/Files...\n\nSending Data to Admin...");
  const AdminPass = prompt("Starting Shutdown process...\n\nEnter admin password to cancel shutdown process:");
  ProcessKey(AdminPass)
}
