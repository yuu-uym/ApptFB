window.addEventListener('load', function(){

  const button1 = document.getElementById("btn1")

  button1.addEventListener('mouseover', function(){
    button1.setAttribute("style", "background-color:#d5dffc;")
  })

  button1.addEventListener('mouseout', function(){
    button1.removeAttribute("style", "background-color:#FFBEDA;")
  })

  const button2 = document.getElementById("btn2")

  button2.addEventListener('mouseover', function(){
    button2.setAttribute("style", "background-color:#d5dffc;")
  })

  button2.addEventListener('mouseout', function(){
    button2.removeAttribute("style", "background-color:#FFBEDA;")
  })

  const button3 = document.getElementById("btn3")

  button3.addEventListener('mouseover', function(){
    button3.setAttribute("style", "background-color:#d5dffc;")
  })

  button3.addEventListener('mouseout', function(){
    button3.removeAttribute("style", "background-color:#FFBEDA;")
  })

})