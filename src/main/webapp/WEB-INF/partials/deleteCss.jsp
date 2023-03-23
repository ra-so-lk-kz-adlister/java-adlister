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
            0 0 7px #fff,
            0 0 10px #fff,
            0 0 21px #fff,
            0 0 40px #ff0000,
            0 0 80px #ff0000,
            0 0 90px #ff0000,
            0 0 100px #ff0000,
            0 0 150px #ff0000;
        }
        20%, 24%, 55% {
            text-shadow: none;
        }
    }
.neon {
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
</style>