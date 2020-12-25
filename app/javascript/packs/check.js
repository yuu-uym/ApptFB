function changePulldown() {
  const checkLists = document.getElementById("checklists");
  checkLists.addEventListener("change", function(e){
    const checkData = document.getElementById("checklist").value ;
    console.log( `${checkData}`);
    
    const XHR = new XMLHttpRequest();
    XHR.open("POST",  "/appointments", true);
    XHR.responseType = "json";
    XHR.send(checkData);
    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      }

    const item = XHR.response.post;
    const selected = document.getElementById("selected");
    const HTML = `
    <table class='table-lists'>
    <tr class="post" >
    <td>${item.title }</td>
    <td>${item.item1}</td>
    </tr>
    </table>
      `;
    selected.insertAdjacentHTML("beforebegin", HTML);
    };
    e.preventDefault();
  });
}  
window.addEventListener("load", changePulldown);