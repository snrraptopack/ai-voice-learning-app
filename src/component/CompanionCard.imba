import bookmark-icon from "../../public/icons/bookmark.svg"
import clock-icon from "../../public/icons/clock.svg"


export tag CompanionCard
	prop id\string
	prop name\string
	prop topic\string
	prop subject\string
	prop duration\number
	prop color\String

	<self[w:100%]>
		<article[bgc:{color}] .companion-card>
			<div[d:flex jc:space-between ai:center]>
				<div .subject-badge> subject
				<button .companion-bookmark>
					<svg src=bookmark-icon alt="bookmark" width=12.5 height=15>
			<h2[fs:2xl font:bold]> name
			<p[fs:sm]> topic
			<div[d:flex ai:center gap:2]>
				<svg src=clock-icon alt="duration" width=13.5 height=13.5>
				<p[fs:sm]> "{duration} mins duration"
			<div[w:100%] route-to="/companions/{id}">
				<button[w:100% jc:center outline:none] .btn-primary> "Launch lesson"	 


						
