window.addEventListener('load', function(){

  const input = document.getElementById("input-btn")

  input.addEventListener('mouseover', function(){
    input.setAttribute("style", "background-color:#d5dffc;")
  })

  input.addEventListener('mouseout', function(){
    input.removeAttribute("style", "background-color:#FFBEDA;")
  })

  const back = document.getElementById("back-btn")

  back.addEventListener('mouseover', function(){
    back.setAttribute("style", "background-color:#d5dffc;")
  })

  back.addEventListener('mouseout', function(){
    back.removeAttribute("style", "background-color:#FFBEDA;")
  })

})