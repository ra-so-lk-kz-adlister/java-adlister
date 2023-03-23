
<style>
    .neon-white {
        /*color: #fff;*/
        /*text-shadow:*/
        /*        0 0 5px #fff,*/
        /*        0 0 10px #fff,*/
        /*        0 0 15px #fff,*/
        /*        0 0 20px #fff,*/
        /*        0 0 35px #fff,*/
        /*        0 0 40px #fff,*/
        /*        0 0 50px #fff;*/

    }
    .neonWhite-border {
        border: 6px solid white;
        border-radius: 47px;
        box-shadow: 0 0 5px white;
        text-shadow: 0 0 5px white, 0 0 10px white, 0 0 15px white, 0 0 20px #fff, 0 0 30px #fff, 0 0 40px #fff, 0 0 50px #fff;;
    }
    .neon-red {
        color: #ff0000;
        text-shadow:
                0 0 7px #fff,
                0 0 10px #fff,
                0 0 21px #fff,
                0 0 40px #ff0000,
                0 0 80px #ff0000,
                0 0 90px #ff0000,
                0 0 100px #ff0000,
                0 0 150px #ff0000;
        font-size: 3rem;
    }
    .neon-yellow {
        color: rgb(255, 255, 0);
        text-shadow: 0 0 10px rgb(255, 255, 0), 0 0 20px rgb(255, 255, 0), 0 0 30px rgb(255, 255, 0);
    }
    .neonText {
        color: #fff;
        text-shadow:
                0 0 7px #fff,
                0 0 10px #fff,
                0 0 21px #fff,
                0 0 42px #0fa,
                0 0 82px #0fa,
                0 0 92px #0fa,
                0 0 102px #0fa,
                0 0 151px #0fa;
    }
    @keyframes flicker {
        0%, 18%, 22%, 25%, 53%, 57%, 100% {
            text-shadow: 0 0 4px #fff,
            0 0 11px #fff,
            0 0 19px #fff,
            0 0 40px #0fa,
            0 0 80px #0fa,
            0 0 90px #0fa,
            0 0 100px #0fa,
            0 0 150px #0fa;
        }
        20%, 24%, 55% {
            text-shadow: none;
        }
    }
    h1 {
        animation: flicker 1.5s infinite alternate;
        font-size: 8rem;
        text-align: center;
        text-transform: uppercase;
        font-weight: 400;
    }

    body {
        margin: 0;
        padding: 0;
        background: url('https://e0.pxfuel.com/wallpapers/26/1015/desktop-wallpaper-arcade-game-retro-80s-arcade.jpg') no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    nav {

    }
    form {
        background-color: transparent;
        border: transparent;
        Display: flex;
        justify-contect: center;
        Flex-direction: column;


    }
    .form-group{
        Display: flex;
        justify-contect: center;
        Flex-direction: column;
    }
    .trans {
        padding-left: 25px;
        color: rgba(255, 255, 0, 0.7);
        text-shadow: 0 0 10px rgb(255, 255, 0), 0 0 20px rgb(255, 255, 0), 0 0 30px rgb(255, 255, 0); ;
        /*opacity: 99%;*/
        background-color: transparent;
        font-size: 23px;

    }

    /*input, select, textarea {*/
    /*    background-color: transparent;*/
    /*    !*border: 1px solid #ccc;*!*/
    /*    opacity: 75%;*/
    /*}*/
    input .neon-red[type="submit"] {
        background-color: transparent;
    }

</style>

