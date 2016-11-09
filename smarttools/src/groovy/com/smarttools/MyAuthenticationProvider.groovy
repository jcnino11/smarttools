package com.smarttools

import org.springframework.security.authentication.AuthenticationProvider
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.Authentication
import org.springframework.security.core.AuthenticationException
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UsernameNotFoundException

class MyAuthenticationProvider implements AuthenticationProvider{

	def springSecurityService

	@Override
	public Authentication authenticate(Authentication authentication)
	throws AuthenticationException {
		String email = authentication.getPrincipal().toString();
		String password = authentication.getCredentials().toString();

		Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		String username = null;

		try {
			username = springSecurityService.authenticate(email, password);
		} catch (IOException e) {
			e.printStackTrace();
		}

		if(username != null && !username.equals("0")){

			Usuario user = springSecurityService.findByUsername(email);

			if (user != null) {

				authorities.add(new SimpleGrantedAuthority(user.getRole().name()));
				return (new UsernamePasswordAuthenticationToken(user, null, authorities));

			} else {
				Usuario newUser = new Usuario();
				newUser.setUsername(username);
				newUser.setPassword(password);

				springSecurityService.register(newUser);

				newUser = springSecurityService.findById(newUser.getId());
				authorities.add(new SimpleGrantedAuthority(newUser.getRole().name()));

				return (new UsernamePasswordAuthenticationToken(newUser, null, authorities));
			}

		} else {

			throw new UsernameNotFoundException(ErrorKey.USER_NOT_FOUND.name());

		}
	}

	@Override
	public boolean supports(Class<?> authentication) {
		 return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}
