package com.sumeer.crimereporter.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Crime {

    String crimeType;

    String location;

    String crimeDescription;

    /**
     */
    private Long idUser;

    /**
     */
    private Double longitude;

    /**
     */
    private Double latitude;
}
