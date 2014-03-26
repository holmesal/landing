'use strict'

angular.module('landingApp')
  .controller 'MainCtrl', ($scope, $firebase) ->

    $scope.changeText = 'Hint: click to change the color of this site for everyone'

    # Kinda silly that we can't set this directly as an attribute
    document.getElementById("bgVideo").playbackRate = 0.5;

    # Set allowed colors
    allowedColors = ["#4F92E0", "#00CF69", "#F5A623", "#00E8C6"]
    
    # Bind to firebase, yo!
    colorRef = new Firebase 'https://alonso.firebaseio.com/color'
    color = $firebase colorRef
    color.$bind $scope, 'bgColor'

    $scope.changeColor = ->
        # Pick a new color - not the current one
        newColor = $scope.bgColor
        while newColor is $scope.bgColor
            newColor = allowedColors[Math.floor(Math.random()*allowedColors.length)]
        # Set the new color
        $scope.bgColor = newColor
        console.log "color is #{newColor}"

        # Update on firebase
        # $scope.bgColor.$update()

        # Update the text
        $scope.changeText = 'Nice! '