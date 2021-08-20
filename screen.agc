function mainDisplay()
	
// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Samurai Beat ( Pre delopment alfa )" )
SetWindowSize( 1920, 1080, 1)
SetWindowAllowResize( 0 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1920, 1080 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 1 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts
EnableClearColor(0)
SetVSync(1)

endfunction

