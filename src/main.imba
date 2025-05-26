import "../globalcss"
import {ClerkComp} from "./util/clerk"

import {SignIn} from "./pages/Signin"
import {Companions} from "./pages/companions/Companions.imba"
import {Profile} from "./pages/my-journey/Profile"
import {Subscription} from "./pages/subscription/Subscription"
import {Navbar} from "./component/Navbar"


tag app

	def render
		<self>
			<Navbar>
			<Companions route="/companions">
			<Profile route="/my-journey">
			<Subscription route="/subscription">
			

			<div route="/*">
				<h1> "nothing new"	
			
		
		
	

imba.mount <app>
