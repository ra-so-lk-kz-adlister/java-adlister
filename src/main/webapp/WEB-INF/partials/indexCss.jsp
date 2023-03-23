<%--
  Created by IntelliJ IDEA.
  User: kailanzwaschka
  Date: 3/22/23
  Time: 5:40 PM
  To change this template use File | Settings | File Templates.
--%>
<style>
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
        font-size: 9.5rem;
        text-align: center;
        text-transform: uppercase;
        font-weight: 400;
        color: #FFFF00;
        text-shadow:
                0 0 7px #fff,
                0 0 10px #fff,
                0 0 21px #fff,
                0 0 42px #FFFF00,
                0 0 82px #FFFF00,
                0 0 92px #FFFF00,
                0 0 102px #FFFF00,
                0 0 151px #FFFF00;
    }

    body {
        margin: 0;
        padding: 0;
        background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi4tIkpVCSFet4eMuwjRseooRU2L104cyEfA&usqp=CAU') no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
</style>