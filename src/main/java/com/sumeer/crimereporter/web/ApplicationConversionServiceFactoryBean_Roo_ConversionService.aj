// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sumeer.crimereporter.web;

import com.sumeer.crimereporter.domain.Crime;
import com.sumeer.crimereporter.domain.Login;
import com.sumeer.crimereporter.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Crime, String> ApplicationConversionServiceFactoryBean.getCrimeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.sumeer.crimereporter.domain.Crime, java.lang.String>() {
            public String convert(Crime crime) {
                return new StringBuilder().append(crime.getCrimeType()).append(' ').append(crime.getLocation()).append(' ').append(crime.getCrimeDescription()).append(' ').append(crime.getIdUser()).toString();
            }
        };
    }
    
    public Converter<Long, Crime> ApplicationConversionServiceFactoryBean.getIdToCrimeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.sumeer.crimereporter.domain.Crime>() {
            public com.sumeer.crimereporter.domain.Crime convert(java.lang.Long id) {
                return Crime.findCrime(id);
            }
        };
    }
    
    public Converter<String, Crime> ApplicationConversionServiceFactoryBean.getStringToCrimeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.sumeer.crimereporter.domain.Crime>() {
            public com.sumeer.crimereporter.domain.Crime convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Crime.class);
            }
        };
    }
    
    public Converter<Login, String> ApplicationConversionServiceFactoryBean.getLoginToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.sumeer.crimereporter.domain.Login, java.lang.String>() {
            public String convert(Login login) {
                return new StringBuilder().append(login.getUserName()).append(' ').append(login.getUserFBID()).toString();
            }
        };
    }
    
    public Converter<Long, Login> ApplicationConversionServiceFactoryBean.getIdToLoginConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.sumeer.crimereporter.domain.Login>() {
            public com.sumeer.crimereporter.domain.Login convert(java.lang.Long id) {
                return Login.findLogin(id);
            }
        };
    }
    
    public Converter<String, Login> ApplicationConversionServiceFactoryBean.getStringToLoginConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.sumeer.crimereporter.domain.Login>() {
            public com.sumeer.crimereporter.domain.Login convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Login.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCrimeToStringConverter());
        registry.addConverter(getIdToCrimeConverter());
        registry.addConverter(getStringToCrimeConverter());
        registry.addConverter(getLoginToStringConverter());
        registry.addConverter(getIdToLoginConverter());
        registry.addConverter(getStringToLoginConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
