// Seleciona todos os elementos com a classe "background"
let backgrounds = document.querySelectorAll(".background");

// Seleciona o contêiner do carrossel de imagens
const slider = document.querySelector(".slider-images");

// Converte os filhos do contêiner do carrossel (imagens) em um array
const images = Array.from(slider.children);

// Define o índice inicial da imagem ativa
let imageIndex = 0;

// Função que atualiza o carrossel
function updateSlider() {
  // Remove todas as classes de estado de todas as imagens
  images.forEach((image) => {
    image.classList.remove("active", "previous", "next", "inactive");
  });

  // Adiciona a classe "active" à imagem atual
  images[imageIndex].classList.add("active");

  // Adiciona a classe "previous" à imagem anterior à atual
  if (imageIndex - 1 >= 0) {
    images[imageIndex - 1].classList.add("previous");
  } else {
    // Se a imagem atual é a primeira, a última imagem se torna a anterior
    images[images.length - 1].classList.add("previous");
  }

  // Adiciona a classe "next" à imagem seguinte à atual
  if (imageIndex + 1 < images.length) {
    images[imageIndex + 1].classList.add("next");
  } else {
    // Se a imagem atual é a última, a primeira imagem se torna a próxima
    images[0].classList.add("next");
  }

  // Adiciona a classe "inactive" às imagens que não são nem a atual, nem a anterior, nem a próxima
  images.forEach((image, index) => {
    if (
      index !== imageIndex &&
      index !== (imageIndex - 1 + images.length) % images.length &&
      index !== (imageIndex + 1) % images.length
    ) {
      image.classList.add("inactive");
    }
  });

  // Define a opacidade de todos os backgrounds como 0
  backgrounds.forEach((background) => {
    background.style.opacity = 0;
  });

  // Define a opacidade do background correspondente à imagem ativa como 1
  if (images[imageIndex].classList.contains("active")) {
    backgrounds[imageIndex].style.opacity = 1;
  }

  // Atualiza o índice da imagem ativa para a próxima imagem
  imageIndex = (imageIndex + 1) % images.length;
}

// Chama a função de atualização do carrossel
updateSlider();

// Define um intervalo para chamar a função de atualização a cada 3 segundos
setInterval(updateSlider, 3000);

// Configuração inicial das classes de estado para as imagens (essa parte pode ser redundante)
images[1].classList.add("next");
images[2].classList.add("inactive");
images[3].classList.add("inactive");
images[4].classList.add("previous");
images[0].classList.add("active");
