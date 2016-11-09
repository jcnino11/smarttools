package com.smarttools

import org.springframework.context.ApplicationListener
import org.springframework.security.authentication.event.InteractiveAuthenticationSuccessEvent

class MySecurityEventListener implements ApplicationListener<InteractiveAuthenticationSuccessEvent>{

	@Override
	public void onApplicationEvent(InteractiveAuthenticationSuccessEvent event) {
		println "cosa3:" << event.authentication
	}
	
}