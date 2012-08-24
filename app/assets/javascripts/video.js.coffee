# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#


$(() -> 
        $(".chapter_link").click(() ->
                chapter = $(this).text()
                $(".episode_list").each((l,value) ->
                        if $(value).attr('data-chapter') == chapter
                                $(value).show()
                        else
                                $(value).hide())
                        
                false
         )
)              
        