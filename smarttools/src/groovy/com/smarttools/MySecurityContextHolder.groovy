package com.smarttools

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolderStrategy
import org.springframework.security.core.context.SecurityContextImpl

class MySecurityContextHolder implements SecurityContextHolderStrategy{
	
	private SecurityContext mySC

	@Override
	public void clearContext() {
		mySC = null
		println "clearContext:"
	}

	@Override
	public SecurityContext createEmptyContext() {
		return new SecurityContextImpl()
	}

	@Override
	public SecurityContext getContext() {
		println "getContext:"
		return mySC;
	}

	@Override
	public void setContext(SecurityContext arg0) {
		this.mySC = arg0;
		println "setContext:" << arg0
		
	}

}
