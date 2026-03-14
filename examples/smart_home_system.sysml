package SmartHomeSystem {
  public import ScalarValues::*;

  part def TemperatureSensor { attribute temperature : Real; }

  part def Light {
    attribute brightness : Real;
    attribute isOn : Boolean;
  }

  part def DoorLock { attribute locked : Boolean; }

  part def Thermostat {
    attribute targetTemperature : Real;
    part sensor : TemperatureSensor;

    action def AdjustTemperature {
      in currentTemp : Real;
      in targetTemp : Real;
      out heatingOn : Boolean;

      assign heatingOn := currentTemp < targetTemp;
    }

    state def ThermostatState {
      in thermostat : Thermostat;

      entry; then Idle;

      state Idle;

      state Heating {
        do action AdjustTemperature {
          in currentTemp = thermostat.sensor.temperature;
          in targetTemp = thermostat.targetTemperature;
          out heatingOn;
        }
      }

      transition startHeating
        first Idle
        accept when thermostat.sensor.temperature < thermostat.targetTemperature
        then Heating;

      transition stopHeating
        first Heating
        accept when thermostat.sensor.temperature >= thermostat.targetTemperature
        then Idle;
    }
  }

  part def Room {
    part lights : Light [2];
    part thermostat : Thermostat;
    part doorLock : DoorLock;
  }

  part def SmartHome {
    part livingRoom : Room;
    part kitchen : Room;
    part bedroom : Room;
  }
}