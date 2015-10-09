LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := doom

# Initialization
LOCAL_C_INCLUDES := $(LOCAL_PATH)/android
LOCAL_CFLAGS :=
LOCAL_SRC_FILES := 

# XXX Hacks!!! XXX
#LOCAL_CFLAGS := "-Dprintf=android_printf -Dfprintf=android_fprintf -Dvprintf=android_vprintf -Dvfprintf=android_vfprintf"
LOCAL_CFLAGS := -Dprintf=android_printf
LOCAL_CFLAGS += -Dfprintf=android_fprintf
LOCAL_CFLAGS += -Dvprintf=android_vprintf
LOCAL_CFLAGS += -Dvfprintf=android_vfprintf

# SDL
SDL_PATH := ../SDL
SDL_MIXER_PATH := ../SDL_mixer
SDL_NET_PATH := ../SDL_net
LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/$(SDL_PATH)/include \
    $(LOCAL_PATH)/$(SDL_MIXER_PATH) \
    $(LOCAL_PATH)/$(SDL_NET_PATH)

# SDL main
LOCAL_SRC_FILES += $(SDL_PATH)/src/main/android/SDL_android_main.c

# Doom
LOCAL_C_INCLUDES += $(LOCAL_PATH)

# opl/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/opl
LOCAL_SRC_FILES += \
    opl/dbopl.c \
    opl/ioperm_sys.c \
    opl/opl.c \
    opl/opl_linux.c \
    opl/opl_obsd.c \
    opl/opl_queue.c \
    opl/opl_sdl.c \
    opl/opl_timer.c \
    opl/opl_win32.c

# pcsound/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/pcsound
LOCAL_SRC_FILES += \
    pcsound/pcsound.c \
    pcsound/pcsound_sdl.c

# src/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src $(LOCAL_PATH)/src/doom
LOCAL_SRC_FILES += \
	src/a_log.c \
    src/aes_prng.c \
    src/deh_io.c \
    src/deh_main.c \
    src/deh_mapping.c \
    src/deh_str.c \
    src/deh_text.c \
    src/d_event.c \
    src/d_iwad.c \
    src/d_loop.c \
    src/d_mode.c \
    src/gusconf.c \
    src/icon.c \
    src/i_cdmus.c \
    src/i_endoom.c \
    src/i_joystick.c \
    src/i_main.c \
    src/i_oplmusic.c \
    src/i_pcsound.c \
    src/i_scale.c \
    src/i_sdlmusic.c \
    src/i_sdlsound.c \
    src/i_sound.c \
    src/i_system.c \
    src/i_timer.c \
    src/i_video.c \
    src/i_videohr.c \
    src/memio.c \
    src/midifile.c \
    src/mus2mid.c \
    src/m_argv.c \
    src/m_bbox.c \
    src/m_cheat.c \
    src/m_config.c \
    src/m_controls.c \
    src/m_fixed.c \
    src/m_misc.c \
    src/net_client.c \
    src/net_common.c \
    src/net_dedicated.c \
    src/net_gui.c \
    src/net_io.c \
    src/net_loop.c \
    src/net_packet.c \
    src/net_query.c \
    src/net_sdl.c \
    src/net_server.c \
    src/net_structrw.c \
    src/sha1.c \
    src/tables.c \
    src/v_video.c \
    src/w_checksum.c \
    src/w_file.c \
    src/w_file_posix.c \
    src/w_file_stdc.c \
    src/w_file_win32.c \
    src/w_main.c \
    src/w_merge.c \
    src/w_wad.c \
    src/z_zone.c \
    src/doom/am_map.c \
    src/doom/deh_ammo.c \
    src/doom/deh_bexstr.c \
    src/doom/deh_cheat.c \
    src/doom/deh_doom.c \
    src/doom/deh_frame.c \
    src/doom/deh_misc.c \
    src/doom/deh_ptr.c \
    src/doom/deh_sound.c \
    src/doom/deh_thing.c \
    src/doom/deh_weapon.c \
    src/doom/doomdef.c \
    src/doom/doomstat.c \
    src/doom/dstrings.c \
    src/doom/d_items.c \
    src/doom/d_main.c \
    src/doom/d_net.c \
    src/doom/f_finale.c \
    src/doom/f_wipe.c \
    src/doom/g_game.c \
    src/doom/hu_lib.c \
    src/doom/hu_stuff.c \
    src/doom/info.c \
    src/doom/m_menu.c \
    src/doom/m_random.c \
    src/doom/p_ceilng.c \
    src/doom/p_doors.c \
    src/doom/p_enemy.c \
    src/doom/p_floor.c \
    src/doom/p_inter.c \
    src/doom/p_lights.c \
    src/doom/p_map.c \
    src/doom/p_maputl.c \
    src/doom/p_mobj.c \
    src/doom/p_plats.c \
    src/doom/p_pspr.c \
    src/doom/p_saveg.c \
    src/doom/p_setup.c \
    src/doom/p_sight.c \
    src/doom/p_spec.c \
    src/doom/p_switch.c \
    src/doom/p_telept.c \
    src/doom/p_tick.c \
    src/doom/p_user.c \
    src/doom/r_bsp.c \
    src/doom/r_data.c \
    src/doom/r_draw.c \
    src/doom/r_main.c \
    src/doom/r_plane.c \
    src/doom/r_segs.c \
    src/doom/r_sky.c \
    src/doom/r_things.c \
    src/doom/sounds.c \
    src/doom/statdump.c \
    src/doom/st_lib.c \
    src/doom/st_stuff.c \
    src/doom/s_sound.c \
    src/doom/wi_stuff.c

# textscreen/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/textscreen
LOCAL_SRC_FILES += \
    textscreen/txt_button.c \
    textscreen/txt_checkbox.c \
    textscreen/txt_desktop.c \
    textscreen/txt_dropdown.c \
    textscreen/txt_fileselect.c \
    textscreen/txt_gui.c \
    textscreen/txt_inputbox.c \
    textscreen/txt_io.c \
    textscreen/txt_label.c \
    textscreen/txt_radiobutton.c \
    textscreen/txt_scrollpane.c \
    textscreen/txt_sdl.c \
    textscreen/txt_separator.c \
    textscreen/txt_spinctrl.c \
    textscreen/txt_strut.c \
    textscreen/txt_table.c \
    textscreen/txt_utf8.c \
    textscreen/txt_widget.c \
    textscreen/txt_window.c \
    textscreen/txt_window_action.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_mixer SDL2_net
LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
