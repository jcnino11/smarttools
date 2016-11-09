package com.smarttools

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes=['series', 'username'])
@ToString(includes=['series', 'username'], cache=true, includeNames=true, includePackage=false)
class PersistentLogin implements Serializable {

	private static final long serialVersionUID = 1
	
	transient redisService

	String series
	String username
	String token
	Date lastUsed

	static constraints = {
		series maxSize: 64
		token maxSize: 64
		username maxSize: 64
	}

	static mapping = {
		table 'persistent_login'
		id name: 'series', generator: 'assigned'
		version false
	}
	
	def onLoad(){
		println this
		this.username = redisService.get(this.series)
	}
	
	def beforeInsert(){
		println this
		redisService.setex(this.series, 3600, this.username)
	}
	
	def beforeUpdate(){
		println this
		redisService.del(this.series)
		redisService.setex(this.series, 3600, this.username)
	}
	
	def beforeDelete(){
		println this
		redisService.del(this.series)
	}
}
