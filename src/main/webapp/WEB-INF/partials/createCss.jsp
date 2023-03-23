<%--
  Created by IntelliJ IDEA.
  User: kailanzwaschka
  Date: 3/22/23
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
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
            0 0 5px #ff0000,
            0 0 10px #ff0000,
            0 0 20px #ff0000,
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
    font-size: 9.5rem;
    text-align: center;
    text-transform: uppercase;
    font-weight: 400;
  }

  body {
    margin: 0;
    padding: 0;
    background: url('data:image/jpeg;base64,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') no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
  }
  nav {

  }
  .form-check {
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