// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function() {
  $('.proposal').click(function(e) {
    $('#spot_activity').val($(e.target).data('text'));
  });

  $("#spot_district").autocomplete({
    source: [
      "Naujamiesčio","Senamiesčio","Antakalnio","Žirmūnų","Fabijoniškių","Šeškinės","Justiniškių","Karoliniškių","Lazdynų","Naujosios Vilnios","Šilainių","Aleksoto -  Vilijampolės","Centro","Žaliakalnio","Kalniečių","Dainavos","Pramonės","Panemunės","Danės","Baltijos","Marių","Pajūrio","Aušros","Saulės","Dainų","Nevėžio","Vakarinė","Aukštaitijos","Marijampolės","Alytaus","Gargždų","Šilutės - Pagėgių","Šilalės - Šilutės","Tauragės","Plungės - Rietavo","Kretingos","Skuodo  - Mažeikių","Mažeikių","Akmenės - Joniškio","Telšių","Kelmės","Raseinių","Kėdainių","Radviliškio","Šiaulių kaimiškoji","Pakruojo - Joniškio","Pasvalio - Panevėžio","Biržų - Kupiškio","Anykščių - Kupiškio","Rokiškio","Utenos","Zarasų - Visagino","Ignalinos - Švenčionių","Molėtų - Švenčionių","Širvintų - Vilniaus","Vilniaus - Šalčininkų","Vilniaus - Trakų","Trakų - Elektrėnų","Kaišiadorių - Elektrėnų","Jonavos","Ukmergės","Jurbarko","Suvalkijos","Šakių","Kauno - Kėdainių","Kauno kaimiškoji","Prienų - Birštono","Vilkaviškio","Dzūkijos","Varėnos - Eišiškių","Lazdijų - Druskininkų"
    ]
  });
  $("#spot_party").autocomplete({
    source: [
      "1. Liberalų sąjūdis",
      "2. Respublikonų partija",
      "3. Darbo partija",
      "4. Demokratinė darbo ir vienybės partija",
      "5. Tėvynės sąjunga-Lietuvos krikščionys demokratai",
      "6. \"Drąsos kelias\"",
      "7. Lietuvos lenkų rinkimų akcija",
      "8. Lietuvos socialdemokratų partija", 
      "9. \"Tvarka ir teisingumas\"", 
      "10. Nacionalinis susivienijimas \"Už Lietuvą Lietuvoje\"", 
      "11. Krikščionių partija", 
      "12. Lietuvos žmonių partija", 
      "13. Socialistinis liaudies frontas", 
      "14. Lietuvos valstiečių ir žaliųjų sąjunga", 
      "15. \"Jaunoji Lietuva\"", 
      "16. Liberalų ir centro sąjunga", 
      "17. Emigrantų partija", 
      "18. Politinė partija \"Sąjunga TAIP\"",
      "Nežinau"
    ]
  })
});

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-35693308-1']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();