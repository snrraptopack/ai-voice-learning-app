import "../globalcss"
import {Companions} from "./pages/companions/Companions.imba"
import {Profile} from "./pages/my-journey/Profile"
import {Subscription} from "./pages/subscription/Subscription"
import {Navbar} from "./component/Navbar"
import {Home} from "./pages/home/Home"


tag app

	def render
		<self>
		# the navbar is a shared component for the other pages
			<Navbar>
			<Home route="/">
			<Companions route="/companions">
			<Profile route="/my-journey">
			<Subscription route="/subscription">
			
			
		
		
	

imba.mount <app>
