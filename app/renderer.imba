# This file is required by the index.html file and will
# be executed in the renderer process for that window.
# No Node.js APIs are available in this process because
# `nodeIntegration` is turned off. Use `preload.imba` to
# selectively enable features needed in the rendering
# process.

global css body m:0 p:0 rd:lg bg:yellow1 of:hidden

tag App

	def mount
		await import('./async')

	def submit
		global.api.invoke('perform-action',1,2,3)

	css c:red4

	<self>
		<div> "Welcome Test"
		<button @click=submit> 'perform-action'

imba.mount <App>
