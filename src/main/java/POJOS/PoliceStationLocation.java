package POJOS;

public class PoliceStationLocation {
	private String name;
	private double lat;
	private double lon;
	private int alert_bell_id;
	private int priority;
	
	// EMPTY CLASS CONSTRUCTOR FOR THE POJO CLASS !! 
	public PoliceStationLocation() {}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}

	public int getAlert_bell_id() {
		return alert_bell_id;
	}

	public void setAlert_bell_id(int alert_bell_id) {
		this.alert_bell_id = alert_bell_id;
	}
	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}
}
