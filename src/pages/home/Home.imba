import {CompanionCard} from "../../component/CompanionCard"
import {CompanionsList} from "../../component/CompanionsList"
import {CTA} from "../../component/CTA"

export tag Home
	prop route

	<self>
		<main>
			<h1[fs:2xl td:underline bgc@ssr:yellow]> "Porpular Companions"
			<section .home-section>
				<CompanionCard
					id="123"
					name="Neura the Brainy Explorer"
					topic="Neural Network of the Brain"
					duration=45
					color="#E5D0FF"
					subject="science"
				>
				<CompanionCard
					id="444"
					name="Countsy the Number Wizard"
					topic="Derivatives & Integrals"
					duration=30
					color="#FFDA6E"
					subject="math"
				>
				<CompanionCard
					id="455"
					name="Verba the Vocabulary Builder"
					topic="English Literature"
					duration=30
					color="#BDE7FF"
					subject="english"
				>

			<section .home-section>
				<CompanionsList>
				<CTA>

