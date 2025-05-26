
const navItems = [
	{label:"Home",href:"/"},
	{label:"Companions",href:"/companions"}
	{label:"My Journey",href:"/my-journey"}
]

export tag NavItems

	css .active c:yellow

	<self[d:flex ai:center gap:4]>
		for {label,href} in navItems
			<div[cursor:pointer] .active route-to=href key=label> label