# Install: npm install @clerk/clerk-js

import { Clerk } from '@clerk/clerk-js'

# Main App component
export tag ClerkComp
	prop clerk
	prop user = null
	prop loading = true

	def setup
		clerk = new Clerk(process.env.CLERK_PUBLISHABLE_KEY)
		initializeClerk!

	def initializeClerk
		try
			await clerk.load!
			user = clerk.user
		catch error
			console.error("Failed to load Clerk:", error)
		finally
			loading = false
			imba.commit!

	def render
		if loading
			<self>
				<div.loading> "Loading..."
		elif user
			<self>
				<AuthenticatedView clerk=clerk user=user>
		else
			<self>
				<UnauthenticatedView clerk=clerk>

# Component for authenticated users
tag AuthenticatedView
	prop clerk
	prop user

	def mount
		# Mount the user button after the component is in the DOM
		if clerk
			const userButtonDiv = $userButton
			clerk.mountUserButton(userButtonDiv)

	def render
		<self>
			<div.user-section>
				<h1> "Welcome, {user.firstName || user.emailAddresses[0].emailAddress}!"
				<div$userButton.user-button>
				<button @click=handleSignOut> "Sign Out"

	def handleSignOut
		try
			await clerk.signOut!
			# Refresh the page or update state
			window.location.reload!
		catch error
			console.error("Sign out failed:", error)

# Component for unauthenticated users
tag UnauthenticatedView
	prop clerk

	def mount
		# Mount the sign-in component after the component is in the DOM
		if clerk
			const signInDiv = $signIn
			clerk.mountSignIn(signInDiv)

	def render
		<self>
			<div.auth-section>
				<h1> "Please sign in"
				<div$signIn.sign-in-container>

