// ローディング画面
$(window).load(function () {   // ローディング画面の消えるタイミング
  setInterval(function(){
    $('#load-message').fadeOut(600, function () {
      $(this).fadeIn(600)
    });
  },1000);             
  $('#is-loading').delay(3000).fadeOut(1000); 
});

function stopload(){                        // 読み込めない場合、強制的にフェードアウト
  $('#is-loading').delay(1000).fadeOut(2000);  // delayは停止時間
}
setTimeout('stopload()',10000);
  

