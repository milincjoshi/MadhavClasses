$(document).ready(
    function () {

        function getRandomArbitrary(min, max) {
            return Math.random() * (max - min) + min;
        }

        $("#language_text").addClass("animated bounceInRight");
        $("#welcome_image").addClass("animated bounceInLeft");

       
    /*
        var para = $("#description").html();
        var listOfWords = para.split(" ");
        var finalPara = "";
        for (i = 0; i < listOfWords.length; i++) {
            var r = Math.floor(getRandomArbitrary(1, 255));
            var g = Math.floor(getRandomArbitrary(1, 255));
            var b = Math.floor(getRandomArbitrary(1, 255));
            var s = "<span style='color:rgb(" + r + "," + g + "," + b + ");'>" + listOfWords[i] + "</span>" + " ";
            finalPara += s;
        }
        $("#description").html(finalPara);
    */
});
