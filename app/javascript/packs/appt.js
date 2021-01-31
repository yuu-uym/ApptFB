function appointment() {
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    const formData = new FormData(document.getElementById("form"));
    const XHR = new XMLHttpRequest();
    XHR.open("POST",  "/appointments", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      }
    const item = XHR.response.post;
    const list = document.getElementById("list");
    const formText = document.getElementById("content");
    const HTML = `
    <table class='table-lists'>
    <tr class="post" >
    <td>${item.appt_date }</td>
    <td>${item.company}</td>
    <td></td>
    <td>点</td>
    <td><a href="/appointments/${item.id}/edit"><img src="pen.jpg"></a></td>
    <td><a href="/appointments/${item.id}/"><img src="eye.jpg"></a></td>
    <td><a data-method="delete" href="/appointments/${item.id}"><img src="gomi.jpg"></a></td> 
    </tr>
    </table>
      `;
    list.insertAdjacentHTML("beforebegin", HTML);
    formText.value = "";
    };
    e.preventDefault();
  });
}  
window.addEventListener("load", appointment);

window.addEventListener('load', function(){

  const button1 = document.getElementById("submit")

  button1.addEventListener('mouseover', function(){
    button1.setAttribute("style", "background-color:#84a7dd")
  })

  button1.addEventListener('mouseout', function(){
    button1.removeAttribute("style", "background-color:#FFBEDA;")
  })

})