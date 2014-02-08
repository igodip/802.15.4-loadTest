#include "app_profile.h"

#ifdef DEBUG_SERIAL
	#define NEW_PRINTF_SEMANTICS
	#include "printf.h"
#endif

configuration TestDataAppC
{
} implementation {
  components MainC, LedsC, Ieee802154BeaconEnabledC as MAC;

  components TestDeviceSenderC as App;
  App.MLME_SCAN -> MAC;
  App.MLME_SYNC -> MAC;
  App.MLME_BEACON_NOTIFY -> MAC;
  App.MLME_SYNC_LOSS -> MAC;
  App.MCPS_DATA -> MAC;
  App.Frame -> MAC;
  App.BeaconFrame -> MAC;
  App.Packet -> MAC;
  
  #ifdef DEBUG_SERIAL
	components PrintfC;
    components SerialStartC;
  #endif
  
  MainC.Boot <- App;
  App.Leds -> LedsC;
  App.MLME_RESET -> MAC;
  App.MLME_SET -> MAC;
  App.MLME_GET -> MAC;
  
  //Sensors
  components new SensirionSht11C() as TempAndHumid;
  
  App.Read -> TempAndHumid.Temperature;
  
  //Timer
  components new TimerMilliC() as Timer0;
  
  App.Timer0 -> Timer0;
  
}
