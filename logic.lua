--===================================================================================================
--
--============================
--  G1000 BEZEL by Crashtender
--============================
--
-- Resolution:	1468 x 941 with bezel
--		1024 x 768 screen only mode
--
-- This is the G1000 bezel that goes with the G1000 screen.
-- You can either build your own hardware around the screen,
-- or use this G1000 bezel to control the unit.
--
-- This version is build for X-plane , 'WYSIWYG'.
-- Future updates can be expected as time permits.
--===================================================================================================



--===================================================================================================
--
--            USER SETUP
-- 
--===================================================================================================

-------------------------------
-- Editabel settings are here.
-- Alter to your preferences
-------------------------------

Bezel_number = 1		-- <<<<<< Enter the bezel number here (1, 2, 3, etc..)
						-- <<<<<< Needed for when you use multiple G1000 screens

--===================================================================================================

--BEZEL GRAPHICS

img_add("G1000_PFD_bezel.png",0,0,1467,941)

--===================================================================================================
-- Function for measuring button press time in seconds
time_click_press = os.clock()

txt_test = txt_add("", "-fx-font-family:Arial; -fx-font-size:16px; -fx-fill: white; -fx-font-weight:bold; -fx-text-alignment:left", 30, 300, 100, 20)
--===================================================================================================

-- BUTTONS AND DIALS
-- LEFT SIDE OF THE BEZEL

-------------
-- NAV VOL --
-------------

function dial_NAV_vol_turned(direction)
	if direction > 0 then am_command("G1000_"..Bezel_number.."_NAV_vol_up") end
	if direction < 0 then am_command("G1000_"..Bezel_number.."_NAV_vol_dn") end
end
dial_NAV_vol = dial_add("" , 0 , 50 , 200 , 40 , dial_NAV_vol_turned)
dial_set_cursor (dial_NAV_vol , "large_cursor_ccw.png" , "large_cursor_cw.png" )

-- BUTTON

function click_press_callback_NAV_vol()
	am_command("G1000_"..instrument_number.."_NAV_vol_pressed")
end
button_add("", "", 50 , 45 , 40 , 40, click_press_callback_NAV_vol)

-------------
-- NAV XFR --
-------------

function click_press_callback_NAV_XFR()
	am_command("G1000_"..Bezel_number.."_NAV_XFR_pressed")
end
button_add("", "", 100 , 100 , 60 , 35, click_press_callback_NAV_XFR)


---------
-- NAV --
---------

-- DIALS

function dial_NAV_top_knob_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_stby_nav_fine_dn") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_stby_nav_fine_up") end
end
dial_NAV_top_knob = dial_add("" , 0 , 160 , 200 , 50 , dial_NAV_top_knob_turned)
dial_set_cursor(dial_NAV_top_knob , "small_cursor_ccw.png" , "small_cursor_cw.png" )



function dial_NAV_base_knob_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_stby_nav_coarse_dn") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_stby_nav_coarse_up") end
end
dial_NAV_base_knob = dial_add("" , 0 , 220 , 200 , 50 , dial_NAV_base_knob_turned)
dial_set_cursor(dial_NAV_base_knob , "large_cursor_ccw.png" , "large_cursor_cw.png" )


-- BUTTON

function click_press_callback_nav12_press()
	am_command("G1000_"..Bezel_number.."_nav12_press")
end
button_add("", "", 50 , 190 , 40 , 40, click_press_callback_nav12_press)


---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

-- BUTTONS AND DIALS
-- RIGHT SIDE OF THE BEZEL

----------------
-- COM VOLUME --
----------------

-- DIAL

function dial_COM_vol_turned(direction)
	if direction > 0 then am_command("G1000_"..Bezel_number.."_COM_vol_up") end
	if direction < 0 then am_command("G1000_"..Bezel_number.."_COM_vol_dn") end
end
dial_COM_vol = dial_add("" , 1300 , 50 , 200 , 40 , dial_COM_vol_turned)
dial_set_cursor (dial_COM_vol , "large_cursor_ccw.png" , "large_cursor_cw.png" )

-- BUTTON

function click_press_callback_COM_vol()
	am_command("G1000_"..instrument_number.."_COM_vol_pressed")
end
button_add("", "", 1350 , 45 , 50 , 40, click_press_callback_COM_vol)

-------------
-- COM XFR --
-------------

-- BUTTON
function click_press_callback_COM_XFR()
	am_command("G1000_"..Bezel_number.."_COM_XFR_pressed")
end

function click_release_callback_COM_XFR()
	am_command("G1000_"..Bezel_number.."_COM_XFR_released")
end

button_add("", "", 1310 , 100 , 60 , 35, click_press_callback_COM_XFR,click_release_callback_COM_XFR)


---------
-- COM --
---------

function dial_COM_top_knob_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_stby_COM_fine_dn") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_stby_COM_fine_up") end
end
dial_COM_top_knob = dial_add("" , 1300 , 160 , 200 , 50 , dial_COM_top_knob_turned)
dial_set_cursor(dial_COM_top_knob , "small_cursor_ccw.png" , "small_cursor_cw.png" )



function dial_COM_base_knob_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_stby_COM_coarse_dn") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_stby_COM_coarse_up") end
end
dial_COM_base_knob = dial_add("" , 1300 , 220 , 200 , 50 , dial_COM_base_knob_turned)
dial_set_cursor (dial_COM_base_knob , "large_cursor_ccw.png" , "large_cursor_cw.png" )


-- BUTTON

function click_press_callback_com12_press()
	am_command("G1000_"..Bezel_number.."_COM12_press")
end
button_add("", "", 1350 , 190 , 40 , 40, click_press_callback_com12_press)

----------
-- BARO --
----------

-- DIAL

function dial_BARO_knob_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_barometer_dn") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_barometer_up") end
end
dial_BARO_knob = dial_add("" , 1300 , 330 , 200 , 100 , dial_BARO_knob_turned)
dial_set_cursor ( dial_BARO_knob , "large_cursor_ccw.png" , "large_cursor_cw.png" )

function click_press_callback_baro_PUSH()
	am_command("G1000_" .. Bezel_number .. "_baro_PUSH")
end
button_add("", "", 1350 , 350 , 50 , 50, click_press_callback_baro_PUSH)

-----------
-- RANGE --
-----------

function dial_RANGE_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_range_dn") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_range_up") end
end
dial_add("" , 1310 , 475 , 130 , 100 , dial_RANGE_turned)


-- --------------
-- -- 3x2 keys --
-- --------------

-- function click_press_callback_btn_DIRECT()
	-- time_click_press = os.clock()
-- end

-- function click_release_callback_btn_DIRECT()
	-- am_command("G1000_" .. Bezel_number .. "_btn_DIRECT", "FLOAT", os.clock() - time_click_press)
-- end
-- button_add("" , "" , 1310 , 640 , 60 , 35 , click_press_callback_btn_DIRECT, click_release_callback_btn_DIRECT)

-- function click_press_callback_btn_FPL()
	-- time_click_press = os.clock()
-- end

-- function click_release_callback_btn_FPL()
	-- am_command("G1000_" .. Bezel_number .. "_btn_FPL", "FLOAT", os.clock() - time_click_press)
-- end
-- button_add("" , "" , 1310 , 695 , 60 , 35 , click_press_callback_btn_FPL, click_release_callback_btn_FPL)

function click_press_callback_btn_CLR()
	am_command("G1000_" .. Bezel_number .. "_btn_CLR_pressed")
end

function click_release_callback_btn_CLR()
	am_command("G1000_" .. Bezel_number .. "_btn_CLR_released")
end
button_add("" , "" , 1310 , 750 , 60 , 35 , click_press_callback_btn_CLR, click_release_callback_btn_CLR)

function click_press_callback_btn_MENU()
	am_command("G1000_" .. Bezel_number .. "_btn_MENU_pressed")
end

function click_release_callback_btn_MENU()
	am_command("G1000_" .. Bezel_number .. "_btn_MENU_released")
end
button_add("" , "" , 1385 , 640 , 60 , 35 , click_press_callback_btn_MENU, click_release_callback_btn_MENU)

-- function click_press_callback_btn_PROC()
	-- time_click_press = os.clock()
-- end

-- function click_release_callback_btn_PROC()
	-- am_command("G1000_" .. Bezel_number .. "_btn_PROC", "FLOAT", os.clock() - time_click_press)
-- end
-- button_add("" , "" , 1385 , 695 , 60 , 35 , click_press_callback_btn_PROC, click_release_callback_btn_PROC)

function click_press_callback_btn_ENT()
	am_command("G1000_" .. Bezel_number .. "_btn_ENT_pressed")
end

function click_release_callback_btn_ENT()
	am_command("G1000_" .. Bezel_number .. "_btn_ENT_released")
end
button_add("" , "" , 1385 , 750 , 60 , 35 , click_press_callback_btn_ENT, click_release_callback_btn_ENT)


-- ---------
-- -- FMS --
-- ---------

function dial_FMS_base_knob_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_FMS_base_down") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_FMS_base_up") end
end
dial_FMS_base_knob = dial_add("" , 1310 , 880 , 150 , 50 , dial_FMS_base_knob_turned)
dial_set_cursor ( dial_FMS_base_knob , "large_cursor_ccw.png" , "large_cursor_cw.png" )

function dial_FMS_top_knob_turned(direction)
	if direction < 0 then am_command("G1000_"..Bezel_number.."_FMS_top_down") end
	if direction > 0 then am_command("G1000_"..Bezel_number.."_FMS_top_up") end
end
dial_FMS_top_knob = dial_add("" , 1310 , 800 , 150 , 50 , dial_FMS_top_knob_turned)
dial_set_cursor ( dial_FMS_top_knob , "small_cursor_ccw.png" , "small_cursor_cw.png" )

-- BUTTON
function click_press_callback_FMS_pushed()
	am_command("G1000_" .. Bezel_number .. "_FMS_pressed")
end

function click_release_callback_FMS_pushed()
	am_command("G1000_" .. Bezel_number .. "_FMS_released")
end
button_add("", "", 1350 , 830 , 40 , 40, click_press_callback_FMS_pushed, click_release_callback_FMS_pushed)


---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

-- SOFT KEY BUTTONS
-- BOTTOM OF THE BEZEL


function click_press_callback_SK_1()
	am_command("G1000_"..Bezel_number.."_SoftKey1_press")
end

function click_release_callback_SK_1()
	am_command("G1000_"..Bezel_number.."_SoftKey1_release")
end
button_add("" , "" , 234 , 860 , 60 , 60, click_press_callback_SK_1 , click_release_callback_SK_1)

function click_press_callback_SK_2()
	am_command("G1000_"..Bezel_number.."_SoftKey2_press")
end

function click_release_callback_SK_2()
	am_command("G1000_"..Bezel_number.."_SoftKey2_release")
end
button_add("" , "" , 319 , 860 , 60 , 60, click_press_callback_SK_2 , click_release_callback_SK_2)

function click_press_callback_SK_3()
	am_command("G1000_"..Bezel_number.."_SoftKey3_press")
end

function click_release_callback_SK_3()
	am_command("G1000_"..Bezel_number.."_SoftKey3_release")
end
button_add("" , "" , 404 , 860 , 60 , 60, click_press_callback_SK_3 , click_release_callback_SK_3)

function click_press_callback_SK_4()
	am_command("G1000_"..Bezel_number.."_SoftKey4_press")
end

function click_release_callback_SK_4()
	am_command("G1000_"..Bezel_number.."_SoftKey4_release")
end
button_add("" , "" , 489 , 860 , 60 , 60, click_press_callback_SK_4 , click_release_callback_SK_4)

function click_press_callback_SK_5()
	am_command("G1000_"..Bezel_number.."_SoftKey5_press")
end

function click_release_callback_SK_5()
	am_command("G1000_"..Bezel_number.."_SoftKey5_release")
end
button_add("" , "" , 574 , 860 , 60 , 60, click_press_callback_SK_5 , click_release_callback_SK_5)

function click_press_callback_SK_6()
	am_command("G1000_"..Bezel_number.."_SoftKey6_press")
end

function click_release_callback_SK_6()
	am_command("G1000_"..Bezel_number.."_SoftKey6_release")
end
button_add("" , "" , 659 , 860 , 60 , 60, click_press_callback_SK_6 , click_release_callback_SK_6)

function click_press_callback_SK_7()
	am_command("G1000_"..Bezel_number.."_SoftKey7_press")
end

function click_release_callback_SK_7()
	am_command("G1000_"..Bezel_number.."_SoftKey7_release")
end
button_add("" , "" , 744 , 860 , 60 , 60, click_press_callback_SK_7 , click_release_callback_SK_7)

function click_press_callback_SK_8()
	am_command("G1000_"..Bezel_number.."_SoftKey8_press")
end

function click_release_callback_SK_8()
	am_command("G1000_"..Bezel_number.."_SoftKey8_release")
end
button_add("" , "" , 829 , 860 , 60 , 60, click_press_callback_SK_8 , click_release_callback_SK_8)

function click_press_callback_SK_9()
	am_command("G1000_"..Bezel_number.."_SoftKey9_press")
end

function click_release_callback_SK_9()
	am_command("G1000_"..Bezel_number.."_SoftKey9_release")
end
button_add("" , "" , 914 , 860 , 60 , 60, click_press_callback_SK_9 , click_release_callback_SK_9)

function click_press_callback_SK_10()
	am_command("G1000_"..Bezel_number.."_SoftKey10_press")
end

function click_release_callback_SK_10()
	am_command("G1000_"..Bezel_number.."_SoftKey10_release")
end
button_add("" , "" , 999 , 860 , 60 , 60, click_press_callback_SK_10 , click_release_callback_SK_10)

function click_press_callback_SK_11()
	am_command("G1000_"..Bezel_number.."_SoftKey11_press")
end

function click_release_callback_SK_11()
	am_command("G1000_"..Bezel_number.."_SoftKey11_release")
end
button_add("" , "" , 1084 , 860 , 60 , 60, click_press_callback_SK_11 , click_release_callback_SK_11)

function click_press_callback_SK_12()
	am_command("G1000_"..Bezel_number.."_SoftKey12_press")
end

function click_release_callback_SK_12()
	am_command("G1000_"..Bezel_number.."_SoftKey12_release")
end
button_add("" , "" , 1169 , 860 , 60 , 60, click_press_callback_SK_12 , click_release_callback_SK_12)

