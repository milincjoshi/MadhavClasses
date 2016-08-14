$(document).ready(
    function () {

        function getRandomArbitrary(min, max) {
            return Math.random() * (max - min) + min;
        }

        $("#language_text").addClass("animated bounceInRight");
        $("#welcome_image").addClass("animated bounceInLeft");
        $("#enter_image").addClass("animated pulse");


        var colors = [
            rgb(255, 87, 34),
            rgb(244, 67, 54),
            rgb(156, 39, 176),
            rgb(103, 58, 183),
            rgb(33, 150, 200),
            rgb(3, 169, 244),
            rgb(63, 81, 181),
            rgb(233, 30, 99),
            rgb(0, 188, 212),
            rgb(0, 150, 136),
            rgb(76, 175, 80),
            rgb(139, 195, 74),
            rgb(205, 220, 57),
            rgb(255, 200, 59),
            rgb(255, 193, 7),
            rgb(255, 152, 0),
            rgb(121, 85, 72),
            rgb(96, 125, 139),
        ];
       
        var para = $("#languages").html();
        var listOfWords = para.split(",");
        var finalPara = "";
        for (i = 0; i < listOfWords.length; i++) {
            var r = Math.floor(getRandomArbitrary(1, 255));
            var g = Math.floor(getRandomArbitrary(1, 255));
            var b = Math.floor(getRandomArbitrary(1, 255));
            
            var random_color = Math.floor(getRandomArbitrary(0, 17));

            var left_margin = Math.floor(getRandomArbitrary(1, 30));
            var top_margin = Math.floor(getRandomArbitrary(30, 50));
            var s = "<span style='border:solid 1px black;margin-top:" + top_margin + "%;margin-left:" + left_margin + "%;color:rgb(" + r + "," + g + "," + b + ");'>" + listOfWords[i] + "</span>" + " ";
           
            finalPara += s;
        }
        $("#languages").html(finalPara);
        $("#languages").addClass("animated pulse");
        $("img").addClass("animated pulse");

});
