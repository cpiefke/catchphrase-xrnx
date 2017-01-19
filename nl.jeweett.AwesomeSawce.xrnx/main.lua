-------------------------------------------------------------------
-- AwesomeSawce v1.1 by Cas Marrav (for Renoise 2.8)             --
-- updated to v1.12 by catchphrase (for Renoise 3.1) in 2016     --
-------------------------------------------------------------------

renoise.tool():add_menu_entry {
  name = "Main Menu:Tools:AwesomeSawce...",
  invoke = function()
    show_dialog()
  end
}

SAW_TABLE = {
  0.01,
  0.02,
  0.03,
  0.04,
  0.05,
  0.06,
  0.07,
  0.08,
  0.09,
  0.10,
  0.11,
  0.12,
  0.13,
  0.14,
  0.15,
  0.16,
  0.17,
  0.18,
  0.19,
  0.20,
  0.21,
  0.22,
  0.23,
  0.24,
  0.25,
  0.26,
  0.27,
  0.28,
  0.29,
  0.30,
  0.31,
  0.32,
  0.33,
  0.34,
  0.35,
  0.36,
  0.37,
  0.38,
  0.39,
  0.40,
  0.41,
  0.42,
  0.43,
  0.44,
  0.45,
  0.46,
  0.47,
  0.48,
  0.49,
  0.50,
  0.51,
  0.52,
  0.53,
  0.54,
  0.55,
  0.56,
  0.57,
  0.58,
  0.59,
  0.60,
  0.61,
  0.62,
  0.63,
  0.64,
  0.65,
  0.66,
  0.67,
  0.68,
  0.69,
  0.70,
  0.71,
  0.72,
  0.73,
  0.74,
  0.75,
  0.76,
  0.77,
  0.78,
  0.79,
  0.80,
  0.81,
  0.82,
  0.83,
  0.84,
  0.85,
  0.86,
  0.87,
  0.88,
  0.89,
  0.90,
  0.91,
  0.92,
  0.93,
  0.94,
  0.95,
  0.96,
  0.97,
  0.98,
  0.99,
  1.00,
  -0.99,
  -0.98,
  -0.97,
  -0.96,
  -0.95,
  -0.94,
  -0.93,
  -0.92,
  -0.91,
  -0.90,
  -0.89,
  -0.88,
  -0.87,
  -0.86,
  -0.85,
  -0.84,
  -0.83,
  -0.82,
  -0.81,
  -0.80,
  -0.79,
  -0.78,
  -0.77,
  -0.76,
  -0.75,
  -0.74,
  -0.73,
  -0.72,
  -0.71,
  -0.70,
  -0.69,
  -0.68,
  -0.67,
  -0.66,
  -0.65,
  -0.64,
  -0.63,
  -0.62,
  -0.61,
  -0.60,
  -0.59,
  -0.58,
  -0.57,
  -0.56,
  -0.55,
  -0.54,
  -0.53,
  -0.52,
  -0.51,
  -0.50,
  -0.49,
  -0.48,
  -0.47,
  -0.46,
  -0.45,
  -0.44,
  -0.43,
  -0.42,
  -0.41,
  -0.40,
  -0.39,
  -0.38,
  -0.37,
  -0.36,
  -0.35,
  -0.34,
  -0.33,
  -0.32,
  -0.31,
  -0.30,
  -0.29,
  -0.28,
  -0.27,
  -0.26,
  -0.25,
  -0.24,
  -0.23,
  -0.22,
  -0.21,
  -0.20,
  -0.19,
  -0.18,
  -0.17,
  -0.16,
  -0.15,
  -0.14,
  -0.13,
  -0.12,
  -0.11,
  -0.10,
  -0.09,
  -0.08,
  -0.07,
  -0.06,
  -0.05,
  -0.04,
  -0.03,
  -0.02,
  -0.01,
   0.00
}
SIN_TABLE = {
  -- first sine wave
  0.031410759078128,
  0.062790519529313,
  0.094108313318514,
  0.1253332335643,
  0.15643446504023,
  0.18738131458572,
  0.21814324139654,
  0.24868988716485,
  0.27899110603923,
  0.30901699437495,
  0.33873792024529,
  0.36812455268468,
  0.39714789063478,
  0.42577929156507,
  0.45399049973955,
  0.48175367410172,
  0.50904141575037,
  0.535826794979,
  0.56208337785213,
  0.58778525229247,
  0.61290705365298,
  0.63742398974869,
  0.66131186532365,
  0.68454710592869,
  0.70710678118655,
  0.72896862742141,
  0.75011106963046,
  0.77051324277579,
  0.79015501237569,
  0.80901699437495,
  0.82708057427456,
  0.84432792550202,
  0.86074202700394,
  0.87630668004386,
  0.89100652418837,
  0.90482705246602,
  0.91775462568398,
  0.92977648588825,
  0.94088076895423,
  0.95105651629515,
  0.96029368567694,
  0.96858316112863,
  0.97591676193875,
  0.98228725072869,
  0.98768834059514,
  0.99211470131448,
  0.99556196460308,
  0.99802672842827,
  0.99950656036573,
  1.00000000000000,
  0.99950656036573,
  0.99802672842827,
  0.99556196460308,
  0.99211470131448,
  0.98768834059514,
  0.98228725072869,
  0.97591676193875,
  0.96858316112863,
  0.96029368567694,
  0.95105651629515,
  0.94088076895423,
  0.92977648588825,
  0.91775462568398,
  0.90482705246602,
  0.89100652418837,
  0.87630668004386,
  0.86074202700394,
  0.84432792550201,
  0.82708057427456,
  0.80901699437495,
  0.79015501237569,
  0.77051324277579,
  0.75011106963046,
  0.72896862742141,
  0.70710678118655,
  0.68454710592869,
  0.66131186532365,
  0.63742398974869,
  0.61290705365298,
  0.58778525229247,
  0.56208337785213,
  0.53582679497900,
  0.50904141575037,
  0.48175367410172,
  0.45399049973955,
  0.42577929156507,
  0.39714789063478,
  0.36812455268468,
  0.33873792024529,
  0.30901699437495,
  0.27899110603923,
  0.24868988716486,
  0.21814324139654,
  0.18738131458572,
  0.15643446504023,
  0.12533323356430,
  0.09410831331851,
  0.06279051952931,
  0.03141075907812,
  0.00000000000000,
  -0.03141075907812,
  -0.06279051952931,
  -0.09410831331851,
  -0.12533323356430,
  -0.15643446504023,
  -0.18738131458572,
  -0.21814324139654,
  -0.24868988716485,
  -0.27899110603923,
  -0.30901699437495,
  -0.33873792024529,
  -0.36812455268468,
  -0.39714789063478,
  -0.42577929156507,
  -0.45399049973955,
  -0.48175367410172,
  -0.50904141575037,
  -0.53582679497900,
  -0.56208337785213,
  -0.58778525229247,
  -0.61290705365298,
  -0.63742398974869,
  -0.66131186532365,
  -0.68454710592869,
  -0.70710678118655,
  -0.72896862742141,
  -0.75011106963046,
  -0.77051324277579,
  -0.79015501237569,
  -0.80901699437495,
  -0.82708057427456,
  -0.84432792550202,
  -0.86074202700394,
  -0.87630668004386,
  -0.89100652418837,
  -0.90482705246602,
  -0.91775462568398,
  -0.92977648588825,
  -0.94088076895423,
  -0.95105651629515,
  -0.96029368567694,
  -0.96858316112863,
  -0.97591676193875,
  -0.98228725072869,
  -0.98768834059514,
  -0.99211470131448,
  -0.99556196460308,
  -0.99802672842827,
  -0.99950656036573,
  -1.00000000000000,
  -0.99950656036573,
  -0.99802672842827,
  -0.99556196460308,
  -0.99211470131448,
  -0.98768834059514,
  -0.98228725072869,
  -0.97591676193875,
  -0.96858316112863,
  -0.96029368567694,
  -0.95105651629515,
  -0.94088076895423,
  -0.92977648588825,
  -0.91775462568398,
  -0.90482705246602,
  -0.89100652418837,
  -0.87630668004386,
  -0.86074202700394,
  -0.84432792550201,
  -0.82708057427456,
  -0.80901699437495,
  -0.79015501237569,
  -0.77051324277579,
  -0.75011106963046,
  -0.72896862742141,
  -0.70710678118655,
  -0.68454710592869,
  -0.66131186532365,
  -0.63742398974869,
  -0.61290705365298,
  -0.58778525229247,
  -0.56208337785213,
  -0.53582679497900,
  -0.50904141575037,
  -0.48175367410172,
  -0.45399049973955,
  -0.42577929156507,
  -0.39714789063478,
  -0.36812455268468,
  -0.33873792024529,
  -0.30901699437495,
  -0.27899110603923,
  -0.24868988716486,
  -0.21814324139654,
  -0.18738131458572,
  -0.15643446504023,
  -0.12533323356430,
  -0.09410831331851,
  -0.06279051952931,
  -0.03141075907812,
   0.00000000000000,
}

-------------------------------------------------------------
--Main: show_dialog() function
-------------------------------------------------------------
function show_dialog()

  local dialog_instance

  local vb = renoise.ViewBuilder()
  local CS = renoise.ViewBuilder.DEFAULT_CONTROL_SPACING
  local DDM = renoise.ViewBuilder.DEFAULT_DIALOG_MARGIN
  
  local vb_count   = vb:valuebox { width = 100, min = 0, max = 7, value = 2 }
  local vb_detune  = vb:valuebox { width = 100, min = 1, max = 127, value = 55, id="vb_detune" }
  local vb_osctype = vb:switch { width = 200, items = { "Saw", "Sine", "User" }, value = 1 }
  local vb_tunedir = vb:switch { width = 200, items = { "Up&Down", "Up", "Down" }, value = 1 }
  local vb_tuneres = vb:switch { width = 200, items = { "Finetune", "Semitone", "Octave" }, value = 1, 
        notifier = function(value)
                    local my_view_on_vb_tune_slopetype = vb.views.vb_tune_slopetype
                    local my_view_on_vb_detune = vb.views.vb_detune
                    if value == 3 then
                     my_view_on_vb_tune_slopetype.value = 1
                     my_view_on_vb_tune_slopetype.active = false
                     my_view_on_vb_detune.active = false
                    else
                     my_view_on_vb_tune_slopetype.active = true
                     my_view_on_vb_detune.active = true
                    end
                   end }
  local vb_tune_slopetype = vb:switch { width = 200, items = { "Linear", "Exponential" }, value = 2, id="vb_tune_slopetype" }
  local vb_volume_slopetype = vb:switch { width = 200, items = { "Linear", "Exponential" }, value = 2 }
  local vb_panning_slopetype = vb:switch { width = 200, items = { "Linear", "Exponential" }, value = 2 }
  local vb_width = vb:slider { width = 100, min = 0, max = 50, value = 10 }
  local vb_pingpong = vb:checkbox { value = true }
  local vb_phaseinvert = vb:checkbox { value = false, id="vb_phaseinvert", notifier=function(value) 
  local myview=vb.views.vb_phaseinvert_evenodd
  if value then 
    myview.active=true 
  else 
    myview.active=false 
  end end }
  local vb_phaseinvert_evenodd = vb:switch { width = 152+DDM, items = { "Even", "Odd" }, value = 2, id="vb_phaseinvert_evenodd", active=false }
  local vb_onetuned = vb:checkbox { value = true }
  local vb_volume_slopemax = vb:slider { width = 100, min = 0, max = 100, value = 70 }
  local vb_volume_stepone = vb:slider { width = 100, min = 0, max = 100, value = 35 }
  
  local vb_close = vb:button {
      text = "Close",
      notifier = function()
        dialog_instance:close()
      end,
    }
    
  local vb_render = vb:button {
      text = "Bring on the Sawce!",
      notifier = function() render_supersawce(vb_count.value, vb_detune.value, vb_tune_slopetype.value, 
      vb_volume_slopetype.value, vb_panning_slopetype.value, 
      vb_width.value, vb_pingpong.value, vb_onetuned.value,
      vb_volume_slopemax.value, vb_volume_stepone.value, vb_osctype.value,
      vb_tunedir.value, vb_tuneres.value, vb_phaseinvert.value, vb_phaseinvert_evenodd.value) end,
    }

  -- auto detect "user" waveform..
  if renoise.song().selected_instrument.samples[1] ~= nil then
    if renoise.song().selected_instrument.samples[1].sample_buffer.has_sample_data then
      vb_osctype.value = 3
    end
  end

  local vb_dialog =
    vb:vertical_aligner {
      vb:row {
        margin = DDM,
        spacing = CS,
        style = "panel",
        width = "100%",
        vb:horizontal_aligner {
          width = "100%",
          mode = "center",
          vb:bitmap {
            mode = "transparent",
            bitmap = "awesomesawce.bmp"
          },
        },
      },
      vb:horizontal_aligner {
        margin = DDM,
        spacing = CS,
        vb:vertical_aligner {
        vb:text { text = "Count" },
        vb:text { text = "Detune" },        
        },  
        vb:vertical_aligner {
        vb_count,
        vb_detune,
        },
        vb_onetuned,
        vb:text { text = "One tuned?" },
      },
      vb:row {
        margin = DDM,
        spacing = CS,
        style = "group",
        width = "100%",
        vb:horizontal_aligner {
          vb:vertical_aligner {
            vb:text { text = "Osc. Type" },
            vb:text { text = "Tuning Dir." },
            vb:text { text = "Tuning Res." },
            vb:text { text = "Tuning Slope" },
            vb:text { text = "Vol. Slope" },
            vb:text { text = "Vol. Max / Min" },
            vb:text { text = "Pan. Slope" },
            vb:text { text = "Width" },
            vb:text { text = "Special" },
          },
          vb:vertical_aligner {
            vb_osctype,
            vb_tunedir,
            vb_tuneres,
            vb_tune_slopetype,
            vb_volume_slopetype,
            vb:horizontal_aligner {
              vb_volume_slopemax,
              vb_volume_stepone,
            },
            vb_panning_slopetype,
            vb:horizontal_aligner {
              vb_width,vb_pingpong,
              vb:text { text = "Ping Pong?" },
            },    
            vb:horizontal_aligner {
              vb_phaseinvert,vb:text { text = "PI? " },
              vb_phaseinvert_evenodd,
            },         
          },
        },
      },
      vb:row {    -- spacer before the buttons :)
        height = 8,
      },
      vb:row {
        margin = DDM,
        spacing = CS,
        style = "group",
        width = "100%",
        vb:horizontal_aligner {width=200+2*DDM, mode = "right",
       --   vb:vertical_aligner {
            vb_render, vb_close,
        --    },
            },
      },
    }

  local function key_handler(dialog, key)
  
    -- update key_text to show what we got
--    vb.views.key_text.paragraphs = {
--      ("key.name: '%s'"):format(key.name), 
--      ("key.modifiers: '%s'"):format(key.modifiers), 
--      ("key.character: '%s'"):format(key.character or "nil"), 
--      ("key.note: '%s'"):format(tostring(key.note) or "nil"),
--      ("key.repeated: '%s'"):format(key.repeated and "true" or "false")
--    }

    -- close on escape...
    if (key.modifiers == "" and key.name == "esc") then
      dialog:close()
    end
  end

   dialog_instance = renoise.app():show_custom_dialog("AwesomeSawce!",
                   vb_dialog, key_handler )
 -- if dialog_instance == "Bring on the Sawce!" then
 --   render_supersawce(vb_count.value, vb_detune.value, vb_tune_slopetype.value, 
 --     vb_volume_slopetype.value, vb_panning_slopetype.value, 
 --     vb_width.value, vb_pingpong.value, vb_onetuned.value,
 --     vb_volume_slopemax.value, vb_volume_stepone.value, vb_osctype.value,
 --    vb_tunedir.value, vb_tuneres.value)
 -- end
end

-------------------------------------------------------------
--Main: render_supersawce function
-------------------------------------------------------------
function render_supersawce(count, maxdetune, tune_slopetype, volume_slopetype, panning_slopetype, width, pingpong, onetuned, volume_slopemax, volume_stepone, osctype, tunedir, tuneres, phaseinvert, phaseinvert_evenodd)
  local vb = renoise.ViewBuilder()
  local rs = renoise.song()
  local ci = rs.selected_instrument
  local sa = {}
  local sb
  local rk = 45
  local continue = "OK"
  if osctype ~= 3 and (#ci.samples > 0 ) then --or ci.samples[1]~=nil) then
    continue = renoise.app():show_custom_prompt( "Warning", vb:text { text = "Instrument will be replaced. Continue?" }, { "OK", "Cancel" } )
  elseif osctype == 3 and (#ci.samples > 1) then
    continue = renoise.app():show_custom_prompt( "Warning", vb:text { text = "All instrument samples except #1 will be replaced. Continue?" }, { "OK", "Cancel" } )
  end
  if ( continue == "OK" ) then
    -- start building supersawce
    if osctype ~= 3 then
      ci:clear()
    else
      if #ci.samples>1 then
        local nsampl = #ci.samples
        for i = 2, nsampl do
          ci:delete_sample_at(2)
        end
      end
    end
    ci.active_tab = 1
    -- build sawce from source sample #1
    if osctype == 3 then
      rk = ci.sample_mappings[1][1].base_note
    else
      ci:insert_sample_at(1) 
      sb = ci.samples[1].sample_buffer
      sb:create_sample_data( 44000, 32, 1, 200 )
      sb:prepare_sample_data_changes()
      local tab
      if osctype == 1 then tab = SAW_TABLE elseif osctype == 2 then tab = SIN_TABLE end
      for i = 1, #tab do
        sb:set_sample_data( 1, i, tab[i] )
      end
      sb:finalize_sample_data_changes()
      ci.samples[1].loop_start = 1
      ci.samples[1].loop_end = 199
    end
    
    local istart=1
    local istep=1
    
    if tunedir==2 then
      istart = 1
      istep = 2
    elseif tunedir==3 then
      istart = 2
      istep = 2
    end
    
    -- copy that copy cat, a gazillion times
    for i = istart, count * 2, istep do
      -- make a copy
      local ni = #ci.samples + 1      -- ni: "new index"
      ci:insert_sample_at(ni)
      ci.samples[ni]:copy_from(ci.samples[1])
      -- determine odd or even
      local xy = ((i%2)-0.5)*2         -- -1, 1, x, y, odd, even, left, right

      -- set tuning
      local tune
      if tuneres==1 then
      if tune_slopetype == 1 then
        tune = maxdetune * ( math.floor((i+1)/2) / count )
      elseif tune_slopetype == 2 then
        tune = maxdetune * ( ( math.floor((i+1)/2) / count ) ^ 2 )
      end
      ci.samples[ni].fine_tune = tune * xy
      elseif tuneres==2 then
      if tune_slopetype == 1 then
        tune = maxdetune * ( math.floor((i+1)/2) / count )
      elseif tune_slopetype == 2 then
        tune = maxdetune * ( ( math.floor((i+1)/2) / count ) ^ 2 )
      end
      ci.samples[ni].transpose = tune * xy
      elseif tuneres==3 then
      if tune_slopetype == 1 then
        tune =  ( 12 * math.floor((i+1)/2) )
      elseif tune_slopetype == 2 then
        tune = ( ( 12 * math.floor((i+1)/2) ) ^ 2 )
      end
      ci.samples[ni].transpose = tune * xy
      end
      -- set volume
      -- explanation:
      -- saw samples will have volume values from 0.0 - 1.0 ( -6.021 dB in renoise )
      -- if 'onetuned' is enabled, that means sample[1] will have 1.0, and
      -- [2] and [3] will have 1.0 - volume_stepone
      -- otherwise we'll just divide volume_slopemax in count steps
      if not onetuned then volume_stepone = 0.0 end
      local vol
      if volume_stepone >= volume_slopemax then
        vol = 1.0 - ( volume_stepone / 100 )
      else
        if volume_slopetype == 1 then
          vol = 1.0 - ( volume_stepone / 100 ) - ( ( volume_slopemax - volume_stepone ) / 100 ) * ( math.floor((i+1)/2) / count )
        elseif volume_slopetype == 2 then
          vol = 1.0 - ( volume_stepone / 100 ) - ( ( volume_slopemax - volume_stepone ) / 100 ) * ( ( math.floor((i+1)/2) / count ) ^ 2 )
        end
      end
      ci.samples[ni].volume = vol
      --ci.samples[ni].volume = vol
      -- set panorama
      local pan
      if panning_slopetype == 1 then
        pan = xy * ( width / 100 ) * ( math.floor((i+1)/2) / count )
      elseif panning_slopetype == 2 then
        pan = xy * ( width / 100 ) * ( ( math.floor((i+1)/2) / count ) ^ 2 )
      end
      if pingpong and (math.floor((i+1)/2))%2 == 1 then
    ci.samples[ni].panning = 0.5 - pan
    else
    ci.samples[ni].panning = 0.5 + pan
    end
    local nm
    if xy == 1 then nm = " up" else nm = " down" end
    ci.samples[ni].name = "step "..math.floor((i+1)/2)..nm
    end
    -- do the mappings
    for i = 1, #ci.samples do
      ci.sample_mappings[renoise.Instrument.LAYER_NOTE_ON][i].base_note=rk
      ci.sample_mappings[renoise.Instrument.LAYER_NOTE_ON][i].note_range[1]={0,119}
      ci.sample_mappings[renoise.Instrument.LAYER_NOTE_ON][i].velocity_range[1]={0,127}
    end
    if not onetuned then
      ci.samples[1].volume = 0
      ci.samples[1].name = "BASE (off)"
    else
      ci.samples[1].name = "BASE"
    end
    if osctype == 3 then
      ci.name = "Awesome " .. ci.name
    elseif osctype == 2 then
      ci.name = "Awesome Sines"
    elseif osctype == 1 then
      ci.name = "Awesome Saws"
    end
    
   if phaseinvert then
   
    local jstart
    local jstep
    local jfac
    
    if tunedir==1 then
    
      jstep = 4
      jfac = 2
    
      if phaseinvert_evenodd == 1 then
        jstart=4
      elseif phaseinvert_evenodd == 2 then
        jstart=2
      end   
      
    else
    
      jstep = 2
      jfac = 1
      
     if phaseinvert_evenodd == 1 then
        jstart=3
      elseif phaseinvert_evenodd == 2 then
        jstart=2
      end   
   
   end 
   
    for j = jstart, jfac*count+1, jstep do
    
      sb = ci.samples[j].sample_buffer
    
      sb:prepare_sample_data_changes()
      for i = 1, sb.number_of_frames do
        sb:set_sample_data( 1, i, -1.0*sb:sample_data( 1, i) )
      end
      sb:finalize_sample_data_changes()
   
      if tunedir==1 then
        sb = ci.samples[j+1].sample_buffer
        sb:prepare_sample_data_changes()
        for i = 1, sb.number_of_frames do
         sb:set_sample_data( 1, i, -1.0*sb:sample_data( 1, i) )
        end
        sb:finalize_sample_data_changes()
      end
    
    end
   
   end  
    
  end
end
