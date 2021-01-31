let allImages = document.querySelectorAll(".bus img");
allImages.forEach(image => {
    image.addEventListener("click", (e) => {
        e.target.src = "chair-blue.png"
    })
})