# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#


$(() ->
  $(".chapter_link").click(() ->
    chapter = $(this).text()
    $("#episodes-header").html(chapter + " - Episodes")
    $(".episode_list").each((l,value) ->
      if $(value).attr('data-chapter') == chapter
        $(value).show()
      else
        $(value).hide()
    )
    false
  )

  video_saved = false

  $('#tsem-video-player').bind('timeupdate', () ->
    player = $("#tsem-video-player")[0]
    percentage_watched = (player.currentTime / player.duration) * 100
    console.log(percentage_watched)
    if percentage_watched > 50.0 and !video_saved
      console.log("video watched")
      id = $("#episode-id").html()
      $.ajax("/video/watched/#{id}", {type: "POST"})
      video_saved = true
  )
)
        