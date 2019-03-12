# Install script for directory: /Users/licho/Downloads/vrpn

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xserversdkx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/licho/Downloads/bin/libvrpnserver.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvrpnserver.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvrpnserver.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvrpnserver.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xserversdkx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/licho/Downloads/bin/vrpn_Configure.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog_Output.h"
    "/Users/licho/Downloads/vrpn/vrpn_Assert.h"
    "/Users/licho/Downloads/vrpn/vrpn_Auxiliary_Logger.h"
    "/Users/licho/Downloads/vrpn/vrpn_BaseClass.h"
    "/Users/licho/Downloads/vrpn/vrpn_Button.h"
    "/Users/licho/Downloads/vrpn/vrpn_Connection.h"
    "/Users/licho/Downloads/vrpn/vrpn_ConnectionPtr.h"
    "/Users/licho/Downloads/vrpn/vrpn_Dial.h"
    "/Users/licho/Downloads/vrpn/vrpn_EndpointContainer.h"
    "/Users/licho/Downloads/vrpn/vrpn_FileConnection.h"
    "/Users/licho/Downloads/vrpn/vrpn_FileController.h"
    "/Users/licho/Downloads/vrpn/vrpn_ForceDevice.h"
    "/Users/licho/Downloads/vrpn/vrpn_ForwarderController.h"
    "/Users/licho/Downloads/vrpn/vrpn_Forwarder.h"
    "/Users/licho/Downloads/vrpn/vrpn_FunctionGenerator.h"
    "/Users/licho/Downloads/vrpn/vrpn_Imager.h"
    "/Users/licho/Downloads/vrpn/vrpn_LamportClock.h"
    "/Users/licho/Downloads/vrpn/vrpn_Log.h"
    "/Users/licho/Downloads/vrpn/vrpn_MainloopContainer.h"
    "/Users/licho/Downloads/vrpn/vrpn_MainloopObject.h"
    "/Users/licho/Downloads/vrpn/vrpn_Mutex.h"
    "/Users/licho/Downloads/vrpn/vrpn_OwningPtr.h"
    "/Users/licho/Downloads/vrpn/vrpn_RedundantTransmission.h"
    "/Users/licho/Downloads/vrpn/vrpn_SendTextMessageStreamProxy.h"
    "/Users/licho/Downloads/vrpn/vrpn_Serial.h"
    "/Users/licho/Downloads/vrpn/vrpn_SerialPort.h"
    "/Users/licho/Downloads/vrpn/vrpn_Shared.h"
    "/Users/licho/Downloads/vrpn/vrpn_SharedObject.h"
    "/Users/licho/Downloads/vrpn/vrpn_Sound.h"
    "/Users/licho/Downloads/vrpn/vrpn_Text.h"
    "/Users/licho/Downloads/vrpn/vrpn_Thread.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker.h"
    "/Users/licho/Downloads/vrpn/vrpn_Types.h"
    "/Users/licho/Downloads/vrpn/vrpn_WindowsH.h"
    "/Users/licho/Downloads/vrpn/vrpn_3DConnexion.h"
    "/Users/licho/Downloads/vrpn/vrpn_3DMicroscribe.h"
    "/Users/licho/Downloads/vrpn/vrpn_3Space.h"
    "/Users/licho/Downloads/vrpn/vrpn_5DT16.h"
    "/Users/licho/Downloads/vrpn/vrpn_Adafruit.h"
    "/Users/licho/Downloads/vrpn/vrpn_ADBox.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog_5dt.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog_5dtUSB.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog_Radamec_SPI.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog_USDigital_A2.h"
    "/Users/licho/Downloads/vrpn/vrpn_Atmel.h"
    "/Users/licho/Downloads/vrpn/vrpn_BiosciencesTools.h"
    "/Users/licho/Downloads/vrpn/vrpn_Button_NI_DIO24.h"
    "/Users/licho/Downloads/vrpn/vrpn_Button_USB.h"
    "/Users/licho/Downloads/vrpn/vrpn_CerealBox.h"
    "/Users/licho/Downloads/vrpn/vrpn_CHProducts_Controller_Raw.h"
    "/Users/licho/Downloads/vrpn/vrpn_Contour.h"
    "/Users/licho/Downloads/vrpn/vrpn_DevInput.h"
    "/Users/licho/Downloads/vrpn/vrpn_DirectXFFJoystick.h"
    "/Users/licho/Downloads/vrpn/vrpn_DirectXRumblePad.h"
    "/Users/licho/Downloads/vrpn/vrpn_DreamCheeky.h"
    "/Users/licho/Downloads/vrpn/vrpn_Dyna.h"
    "/Users/licho/Downloads/vrpn/vrpn_Event_Analog.h"
    "/Users/licho/Downloads/vrpn/vrpn_Event.h"
    "/Users/licho/Downloads/vrpn/vrpn_Event_Mouse.h"
    "/Users/licho/Downloads/vrpn/vrpn_Flock.h"
    "/Users/licho/Downloads/vrpn/vrpn_Flock_Parallel.h"
    "/Users/licho/Downloads/vrpn/vrpn_ForceDeviceServer.h"
    "/Users/licho/Downloads/vrpn/vrpn_Freespace.h"
    "/Users/licho/Downloads/vrpn/vrpn_FunctionGenerator.h"
    "/Users/licho/Downloads/vrpn/vrpn_Futaba.h"
    "/Users/licho/Downloads/vrpn/vrpn_GlobalHapticsOrb.h"
    "/Users/licho/Downloads/vrpn/vrpn_Griffin.h"
    "/Users/licho/Downloads/vrpn/vrpn_HashST.h"
    "/Users/licho/Downloads/vrpn/vrpn_HumanInterface.h"
    "/Users/licho/Downloads/vrpn/vrpn_IDEA.h"
    "/Users/licho/Downloads/vrpn/vrpn_Imager_Stream_Buffer.h"
    "/Users/licho/Downloads/vrpn/vrpn_ImmersionBox.h"
    "/Users/licho/Downloads/vrpn/vrpn_inertiamouse.h"
    "/Users/licho/Downloads/vrpn/vrpn_JoyFly.h"
    "/Users/licho/Downloads/vrpn/vrpn_Joylin.h"
    "/Users/licho/Downloads/vrpn/vrpn_Joywin32.h"
    "/Users/licho/Downloads/vrpn/vrpn_Keyboard.h"
    "/Users/licho/Downloads/vrpn/vrpn_Logitech_Controller_Raw.h"
    "/Users/licho/Downloads/vrpn/vrpn_Laputa.h"
    "/Users/licho/Downloads/vrpn/vrpn_LUDL.h"
    "/Users/licho/Downloads/vrpn/vrpn_Magellan.h"
    "/Users/licho/Downloads/vrpn/vrpn_MessageMacros.h"
    "/Users/licho/Downloads/vrpn/vrpn_Microsoft_Controller_Raw.h"
    "/Users/licho/Downloads/vrpn/vrpn_Mouse.h"
    "/Users/licho/Downloads/vrpn/vrpn_NationalInstruments.h"
    "/Users/licho/Downloads/vrpn/vrpn_Nidaq.h"
    "/Users/licho/Downloads/vrpn/vrpn_nikon_controls.h"
    "/Users/licho/Downloads/vrpn/vrpn_nVidia_shield_controller.h"
    "/Users/licho/Downloads/vrpn/vrpn_Oculus.h"
    "/Users/licho/Downloads/vrpn/vrpn_OmegaTemperature.h"
    "/Users/licho/Downloads/vrpn/vrpn_OneEuroFilter.h"
    "/Users/licho/Downloads/vrpn/vrpn_OzzMaker.h"
    "/Users/licho/Downloads/vrpn/vrpn_Poser_Analog.h"
    "/Users/licho/Downloads/vrpn/vrpn_Poser.h"
    "/Users/licho/Downloads/vrpn/vrpn_Poser_Tek4662.h"
    "/Users/licho/Downloads/vrpn/vrpn_raw_sgibox.h"
    "/Users/licho/Downloads/vrpn/vrpn_Retrolink.h"
    "/Users/licho/Downloads/vrpn/vrpn_Saitek_Controller_Raw.h"
    "/Users/licho/Downloads/vrpn/vrpn_sgibox.h"
    "/Users/licho/Downloads/vrpn/vrpn_Spaceball.h"
    "/Users/licho/Downloads/vrpn/vrpn_Streaming_Arduino.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tng3.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_3DMouse.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_AnalogFly.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_ButtonFly.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_Crossbow.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_DTrack.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_Fastrak.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_Filter.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_GameTrak.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_GPS.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_IMU.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_isense.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_Isotrak.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_JsonNet.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_Liberty.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_MotionNode.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_NDI_Polaris.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_NovintFalcon.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_OSVRHackerDevKit.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_PDI.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_PhaseSpace.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_RazerHydra.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_ThalmicLabsMyo.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_SpacePoint.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_Wintracker.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_Colibri.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_TrivisioColibri.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_WiimoteHead.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_zSight.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_ViewPoint.h"
    "/Users/licho/Downloads/vrpn/vrpn_UNC_Joystick.h"
    "/Users/licho/Downloads/vrpn/vrpn_VPJoystick.h"
    "/Users/licho/Downloads/vrpn/vrpn_Wanda.h"
    "/Users/licho/Downloads/vrpn/vrpn_WiiMote.h"
    "/Users/licho/Downloads/vrpn/vrpn_XInputGamepad.h"
    "/Users/licho/Downloads/vrpn/vrpn_Xkeys.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker_LibertyHS.h"
    "/Users/licho/Downloads/vrpn/vrpn_YEI_3Space.h"
    "/Users/licho/Downloads/vrpn/vrpn_Zaber.h"
    "/Users/licho/Downloads/vrpn/server_src/vrpn_Generic_server_object.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xclientsdkx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/licho/Downloads/bin/libvrpn.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvrpn.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvrpn.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvrpn.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xclientsdkx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/licho/Downloads/bin/vrpn_Configure.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog.h"
    "/Users/licho/Downloads/vrpn/vrpn_Analog_Output.h"
    "/Users/licho/Downloads/vrpn/vrpn_Assert.h"
    "/Users/licho/Downloads/vrpn/vrpn_Auxiliary_Logger.h"
    "/Users/licho/Downloads/vrpn/vrpn_BaseClass.h"
    "/Users/licho/Downloads/vrpn/vrpn_Button.h"
    "/Users/licho/Downloads/vrpn/vrpn_Connection.h"
    "/Users/licho/Downloads/vrpn/vrpn_ConnectionPtr.h"
    "/Users/licho/Downloads/vrpn/vrpn_Dial.h"
    "/Users/licho/Downloads/vrpn/vrpn_EndpointContainer.h"
    "/Users/licho/Downloads/vrpn/vrpn_FileConnection.h"
    "/Users/licho/Downloads/vrpn/vrpn_FileController.h"
    "/Users/licho/Downloads/vrpn/vrpn_ForceDevice.h"
    "/Users/licho/Downloads/vrpn/vrpn_ForwarderController.h"
    "/Users/licho/Downloads/vrpn/vrpn_Forwarder.h"
    "/Users/licho/Downloads/vrpn/vrpn_FunctionGenerator.h"
    "/Users/licho/Downloads/vrpn/vrpn_Imager.h"
    "/Users/licho/Downloads/vrpn/vrpn_LamportClock.h"
    "/Users/licho/Downloads/vrpn/vrpn_Log.h"
    "/Users/licho/Downloads/vrpn/vrpn_MainloopContainer.h"
    "/Users/licho/Downloads/vrpn/vrpn_MainloopObject.h"
    "/Users/licho/Downloads/vrpn/vrpn_Mutex.h"
    "/Users/licho/Downloads/vrpn/vrpn_OwningPtr.h"
    "/Users/licho/Downloads/vrpn/vrpn_RedundantTransmission.h"
    "/Users/licho/Downloads/vrpn/vrpn_SendTextMessageStreamProxy.h"
    "/Users/licho/Downloads/vrpn/vrpn_Serial.h"
    "/Users/licho/Downloads/vrpn/vrpn_SerialPort.h"
    "/Users/licho/Downloads/vrpn/vrpn_Shared.h"
    "/Users/licho/Downloads/vrpn/vrpn_SharedObject.h"
    "/Users/licho/Downloads/vrpn/vrpn_Sound.h"
    "/Users/licho/Downloads/vrpn/vrpn_Text.h"
    "/Users/licho/Downloads/vrpn/vrpn_Thread.h"
    "/Users/licho/Downloads/vrpn/vrpn_Tracker.h"
    "/Users/licho/Downloads/vrpn/vrpn_Types.h"
    "/Users/licho/Downloads/vrpn/vrpn_WindowsH.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xtestsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/licho/Downloads/bin/time_test")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/time_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/time_test")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/time_test")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/licho/Downloads/bin/quat/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/submodules/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/atmellib/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/gpsnmealib/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/client_src/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/server_src/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/util/gen_rpc/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/util/printStream/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/doxygen/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/python_vrpn/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/python/cmake_install.cmake")
  include("/Users/licho/Downloads/bin/java_vrpn/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/licho/Downloads/bin/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
