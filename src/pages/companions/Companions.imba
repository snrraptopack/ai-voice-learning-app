import {NewCompanions} from "./new"
import {CompanionSection} from "./companion-section"

export tag Companions
	prop route\String

	<self>
		<h1> "This is the companions"
		<NewCompanions route="new">
		<CompanionSection route=":id">