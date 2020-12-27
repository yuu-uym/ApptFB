window.addEventListener('load', function(){
  const item1 = document.getElementById("item1")
  const item2 = document.getElementById("item2")
  const item3 = document.getElementById("item3")
  const item4 = document.getElementById("item4")
  const item5 = document.getElementById("item5")
  const item6 = document.getElementById("item6")
  const item7 = document.getElementById("item7")
  const item8 = document.getElementById("item8")
  const item9 = document.getElementById("item9")
  const item10 = document.getElementById("item10")
  const item11 = document.getElementById("item11")
  const item12 = document.getElementById("item12")
  const item13 = document.getElementById("item13")
  const item14 = document.getElementById("item14")
  const item15 = document.getElementById("item15")
  const item16 = document.getElementById("item16")
  const item17 = document.getElementById("item17")
  const item18 = document.getElementById("item18")
  const item19 = document.getElementById("item19")
  const item20 = document.getElementById("item20") 
  const addition = document.getElementById("addition")
  const score = document.getElementById("score")

  addition.addEventListener('click', function(){
    let allScore = +item1.value + +item2.value + +item3.value + +item4.value + +item5.value + 
                   +item6.value + +item7.value + +item8.value + +item9.value + +item10.value +
                   +item11.value + +item12.value + +item13.value + +item14.value + +item15.value +
                   +item16.value + +item17.value + +item18.value + +item19.value + +item20.value
    console.log(allScore)
    score.innerHTML = allScore 
  })
  })