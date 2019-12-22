$(function(){
  function buildHTML(comment){
    var html = `<div class="contents_show__comments__comment">
                ${comment.text}</div>`
                return html;
  }

$('#new_comment').on('submit', function(e){
  e.preventDefault()
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: 'POST',
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
    .done(function(data){
      var html = buildHTML(data);
      $('.contents_show__comments__title').append(html);      
      $('form')[0].reset();
      $('.comment_btn').prop('disabled', false);
    })
  })
});
