// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sumeer.crimereporter.domain;

import com.sumeer.crimereporter.domain.Crime;

privileged aspect Crime_Roo_JavaBean {
    
    public String Crime.getCrimeType() {
        return this.crimeType;
    }
    
    public void Crime.setCrimeType(String crimeType) {
        this.crimeType = crimeType;
    }
    
    public String Crime.getLocation() {
        return this.location;
    }
    
    public void Crime.setLocation(String location) {
        this.location = location;
    }
    
    public String Crime.getCrimeDescription() {
        return this.crimeDescription;
    }
    
    public void Crime.setCrimeDescription(String crimeDescription) {
        this.crimeDescription = crimeDescription;
    }
    
    public Long Crime.getIdUser() {
        return this.idUser;
    }
    
    public void Crime.setIdUser(Long idUser) {
        this.idUser = idUser;
    }
    
    public Double Crime.getLongitude() {
        return this.longitude;
    }
    
    public void Crime.setLongitude(Double longitude) {
        this.longitude = longitude;
    }
    
    public Double Crime.getLatitude() {
        return this.latitude;
    }
    
    public void Crime.setLatitude(Double latitude) {
        this.latitude = latitude;
    }
    
}
