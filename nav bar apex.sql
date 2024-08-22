<nav class="navbar">
    <div class="navbar-toggle">
        <span class="bar"></span>
        <span class="bar"></span>
        <span class="bar"></span>
    </div>
    <div class="navbar-logo">
        <img src="#APP_FILES#logo.png" alt="Logo" />
    </div>
    <div class="navbar-contact">
        <a href="#" class="btn-contact">Contato</a>
    </div>
    <ul class="navbar-links">
        <li><a href="#">Home</a></li>
        <li><a href="#">Sobre</a></li>
        <li><a href="#">Planos e valores</a></li>
        <li><a href="#">Parceiros</a></li>
        <li><a href="#">Social</a></li>
        <li><a href="#">Obituário</a></li>
        <li><a href="#">Blog</a></li>
    </ul>
</nav>


<style>
/* Estilos gerais */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #fff;
    padding: 15px;
    border-bottom: 2px solid #eee;
    position: relative;
}

.navbar-logo img {
    height: 40px;
}

.navbar-links {
    list-style: none;
    display: flex;
    gap: 20px;
}

.navbar-links li a {
    text-decoration: none;
    color: #333;
    font-weight: 500;
}

.navbar-contact .btn-contact {
    background-color: #000;
    color: #fff;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
}

/* Esconde o botão de contato por padrão */
.navbar-contact {
    display: none;
}

.navbar-toggle {
    display: none;
    flex-direction: column;
    gap: 4px;
    cursor: pointer;
}

.navbar-toggle .bar {
    width: 25px;
    height: 3px;
    background-color: #333;
    transition: 0.4s;
}

/* Transforma os risquinhos em X quando o menu está aberto */
.navbar-toggle.active .bar:nth-child(1) {
    transform: rotate(45deg) translate(5px, 5px);
}

.navbar-toggle.active .bar:nth-child(2) {
    opacity: 0;
}

.navbar-toggle.active .bar:nth-child(3) {
    transform: rotate(-45deg) translate(5px, -5px);
}

/* Estilos responsivos */
@media (max-width: 768px) {
    .navbar-links {
        display: none;
        flex-direction: column;
        gap: 10px;
        position: absolute;
        top: 60px;
        left: 0;
        width: 60%;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    }

    .navbar-toggle {
        display: flex;
    }

    .navbar-links.active {
        display: flex;
    }

    /* Exibe o botão de contato apenas na versão mobile */
    .navbar-contact {
        display: block;
    }

    .navbar-logo {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
    }

    .admin-btn {
        display: none; /* O botão Admin será exibido via JavaScript se o usuário tiver permissão */
    }
}


</style>


<script>
document.querySelector('.navbar-toggle').addEventListener('click', () => {
    const navbarLinks = document.querySelector('.navbar-links');
    const navbarToggle = document.querySelector('.navbar-toggle');
    
    navbarLinks.classList.toggle('active');
    navbarToggle.classList.toggle('active');
});

</script>