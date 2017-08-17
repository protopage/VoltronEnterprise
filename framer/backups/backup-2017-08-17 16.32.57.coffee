# Sketch
sketch = Framer.Importer.load("imported/Global Sections V2 Prototype@1x", scale: 1)

{applyChangesModal, applyChangesScroll, applyChangesScrollGuide, subaccountList, applyChangesScrollBar, applyChangesScrollBarBg, applyChangesScrollKnob, btnProceed, btnBack, applyChangesOpacity, sectionManager, globSectionsClick, instSectionsClick, globScrollBar, globScrollKnob, globScrollBarBg,  signupScrollBar, signupScrollKnob, signupScrollBarBg, instScrollBar, instScrollKnob, instScrollBarBg, exit, signup, signupClick, signupScroll, signupScrollGuide, signupBtnBack, signupBtnInsert, glob, globScroll, globScrollGuide, inst, instScroll, instScrollGuide, toolbarEdit, toolbarEditBack, versionHistoryBar, backZone, versionActive, version1Zone, version1, version1Hover, version2Zone, version2, version2Hover, version3Zone, version3, version3Hover, version4Zone, version4, version4Hover, version5Zone, version5, version5Hover, version6Zone, version6, version6Hover, topBarGlobal, desktopMobileToggle, mobileSelected, desktopSelected, mobileSelectedToggle, desktopSelectedToggle, btnBackTopBar, topBar, sectionZone, scrollers, mobile, mobileSection1, mobileSection2, mobileSection3, mobileBg, editState, sectionEdit, sectionControlEdit, dropdownEdit, editClick, versionClick, moreShitEdit, editSection3, editSection2, editSection1, editOpacity, mobileEditOpacity, section, sectionControl, moreShit, dropdown, sectionHover, editClickBar, bg, sectionHover1, sectionHover2, sectionHover3, sectionHover4, sectionHover5, sectionHover, sectionControl1, sectionControl2, sectionControl3, sectionControl4, sectionControl5, sectionControl, section1, section2, section3, section4, section5, section, dropdown1, dropdown2, dropdown3, dropdown4, dropdown5, dropdown, moreShit1, moreShit2, moreShit3, moreShit4, moreShit5, moreShit, toolbar, toolbar1, toolbar2, toolbar3, toolbar4, toolbar5, globalHover1, bg3Applied, bgPage, sectionEdit, sectionControlEdit, dropdownEdit, moreShitEdit, topBarGlobalMessage, applyChanges, desktopSelectedToggleGlobal, mobileSelectedToggleGlobal, mobileGlobal, desktopGlobal, mobileHover1, mobileHover2, mobileHover3, mobileHover4, mobileHover5, mobileHover6, mobileToolbar1, mobileToolbar2, mobileToolbar33, mobileToolbar4, mobileToolbar5, mobileToolbar6, sectionGlobal, sectionControlGlobal1, sectionHoverGlobal1, moreShitGlobal1, dropdownGlobal1, toolbarGlobal1, globalHoverMobile, editClickBarMobile, mobileToolbar3Edit, topBarMobile, topBarDesktop, topBarToggleMobileSelected, topBarToggleDesktopSelected, globalSectionIndicatorMobile, exitModal, fontsBar, dropdownSettingsGlobal, d1Global, d1hoverGlobal, d2Global, d2hoverGlobal, dropdownGlobal, dropdownGlobalClick, fontbarBack, fontBar1, fontBar2, exitModalCancel, exitModalExit, artboard, barGlobal, globalAddNew, tooltip, tooltipZone, globalHoverZone1, globalHoverZoneMobile, savingModal, savingModalInputGuide, savingModalSave, savingModalCancel, savingModalClose, d1, d2, d3, d4, d5, d6, d7, d8, d9, d1hover, d2hover, d3hover, d4hover, d5hover, d6hover, d7hover, d8hover, d9hover, dropdownZone, d3Global, d3hoverGlobal, d4Global, d4hoverGlobal, sectionName, sectionNameTextGuide, sectionNameLineGuide, savingModalBg, mobileToolbar5Global, globalSectionIndicatorMobile2, globalHoverMobile2, globalHoverZoneMobile2, moreShitGlobal2, dropdownGlobal2, section4Global, sectionControlGlobal2, sectionHoverGlobal2, globalHoverZone2, globalHover2, saveGlobalSection, disconnectGlobalSection} = sketch


# Affordances




affordances = [btnProceed, btnBack, globSectionsClick, instSectionsClick, exit, signupClick, signupBtnBack, signupBtnInsert,toolbarEditBack, backZone, desktopMobileToggle, mobileSelected, desktopSelected, mobileSelectedToggle, desktopSelectedToggle, btnBackTopBar, sectionZone, editClick, sectionControl,  dropdown, editClickBar, sectionControl1, sectionControl2, sectionControl3, sectionControl4, sectionControl5, sectionControl, dropdown1, dropdown2, dropdown3, dropdown4, dropdown5, dropdown, moreShit1, moreShit2, moreShit3, moreShit4, moreShit5, toolbar, toolbar1, toolbar2, toolbar3, toolbar4, toolbar5, applyChanges, desktopSelectedToggleGlobal, mobileSelectedToggleGlobal, mobileToolbar1, mobileToolbar2, mobileToolbar33, mobileToolbar4, mobileToolbar5, mobileToolbar6, sectionControlGlobal1, moreShitGlobal1, dropdownGlobal1, toolbarGlobal1, editClickBarMobile, mobileToolbar3Edit, topBarToggleMobileSelected, topBarToggleDesktopSelected,fontsBar, dropdownSettingsGlobal, d1Global, d1hoverGlobal, dropdownGlobalClick, fontbarBack, fontBar1, fontBar2, exitModalCancel, exitModalExit, tooltipZone, savingModalSave, savingModalCancel, d1, d2, d3, d4, d5, d6, d7, d8, d9, d1hover, d2hover, d3hover, d4hover, d5hover, d6hover, d7hover, d8hover, d9hover, dropdownZone, d3Global, d3hoverGlobal, d4Global, d4hoverGlobal, mobileToolbar5Global, moreShitGlobal2, dropdownGlobal2, sectionControlGlobal2, saveGlobalSection, disconnectGlobalSection]


print affordances

createAffordances = (index) ->
	affordances[index].onMouseOver ->
		if affordances[index].visible == true
			document.body.style.cursor = "pointer"
	affordances[index].onMouseOut ->
		document.body.style.cursor = "auto"

for i in [0...affordances.length]
	createAffordances(i)



# Document Setup
document.body.style.cursor = "auto"
Framer.Extras.Hints.disable()
Framer.Extras.Preloader.enable()
InputModule = require "input"
applyChangesModal.visible = false
sectionManager.visible = false
toolbarEdit.visible = false
versionHistoryBar.visible = false
topBarGlobal.visible = false
editState.visible = false
mobile.visible = false
exitModal.visible = false
fontsBar.visible = false
artboard.x = Align.center()
Screen.backgroundColor = "#F5F5F5"


barGlobal.onClick ->
	dropdownSettingsGlobal.visible = false
	return

globalAddNew.onClick ->
	dropdownSettingsGlobal.visible = false
	return

# Scroll
scroll = ScrollComponent.wrap(scrollers)
scroll.scrollVertical = true
scroll.scrollHorizontal = false
scroll.mouseWheelEnabled = true
Canvas.onResize ->
	scroll.size = Canvas.size
scroll.content.draggable.enabled = false


# Dropdown

ds = [d1, d2, d3, d4, d5, d6, d7, d8, d9]
dhovers = [d1hover, d2hover, d3hover, d4hover, d5hover, d6hover, d7hover, d8hover, d9hover]

createHovers = (i) ->
	ds[i].onMouseOver ->
		dhovers[i].visible = true
	ds[i].onMouseOut ->
		dhovers[i].visible = false

for layer,i in ds
	createHovers(i)
	dhovers[i].visible = false

dropdown.visible = false

dropdownZone.onClick ->
	dropdown.visible = true

topBarDesktop.onClick ->
	dropdown.visible = false

scrollers.onClick ->
	dropdown.visible = false


# Dropdown Global
dsGlobal = [d1Global, d2Global, d3Global, d4Global]
dhoversGlobal = [d1hoverGlobal, d2hoverGlobal, d3hoverGlobal, d4hoverGlobal]

createHoversGlobal = (i) ->
	dsGlobal[i].onMouseOver ->
		dhoversGlobal[i].visible = true
	dsGlobal[i].onMouseOut ->
		dhoversGlobal[i].visible = false

for layer,i in dsGlobal
	createHoversGlobal(i)
	dhoversGlobal[i].visible = false

dropdownSettingsGlobal.visible = false

dropdownGlobalClick.onClick ->
	dropdownSettingsGlobal.visible = true

d1Global.onClick ->
	fontsBar.visible = true
	dropdownSettingsGlobal.visible = false


# Font Bar

fontbarBack.onClick ->
	fontsBar.visible = false

fontBar1.onClick ->
	fontBar1.visible = false
	editSection3.visible = true

fontBar2.onClick ->
	return




# Toolbar Hovers and Clicks

shits = [moreShit1, moreShit2, moreShit3, moreShit4, moreShit5, moreShitGlobal1, moreShitGlobal2]
menus = [dropdown1, dropdown2, dropdown3, dropdown4, dropdown5, dropdownGlobal1, dropdownGlobal2]
hovers = [section1, section2, section3, section4, section5, sectionGlobal, section4Global]
toolbars = [sectionControl1, sectionControl2, sectionControl3, sectionControl4, sectionControl5, sectionControlGlobal1, sectionControlGlobal2]
sections = [sectionHover1, sectionHover2, sectionHover3, sectionHover4, sectionHover5, sectionHoverGlobal1, sectionHoverGlobal2]

mobileHovers = [mobileHover1, mobileHover2, mobileHover4, mobileHover5, mobileHover6]
mobileToolbars = [mobileToolbar1, mobileToolbar2, mobileToolbar4, mobileToolbar5, mobileToolbar6]




create = (index) ->
	menus[index].visible = false
	toolbars[index].visible = false
	hovers[index].on "mouseenter", ->
		toolbars[index].visible = true
		for i in [0...menus.length]
			menus[i].visible = false
	hovers[index].on "mouseleave", ->
		toolbars[index].visible = false
	shits[index].onClick ->
		menus[index].visible = true
	menus[index].onClick ->
		menus[index].visible = false
	sections[index].onClick ->
		menus[index].visible = false


createMobileHovers = (index) ->
	mobileHovers[index].onMouseOver ->
		mobileToolbars[index].visible = true
	mobileHovers[index].onMouseOut ->
		mobileToolbars[index].visible = false


for layer, i in shits
	create(i)

for i in [0...mobileHovers.length]
	mobileToolbars[i].visible = false
	createMobileHovers(i)


sectionEdit.onMouseOver ->
	editClick.visible = true

sectionEdit.onMouseOut ->
	editClick.visible = false

sectionEdit.onClick ->
	return

mobileToolbar33.visible = false
mobileToolbar3Edit.visible = false
globalHover1.visible = false
globalHover2.visible = false
globalHoverZone1.onMouseOver ->
	globalHover1.visible = true
globalHoverZone1.onMouseOut ->
	globalHover1.visible = false
globalHoverZone2.onMouseOver ->
	globalHover2.visible = true
globalHoverZone2.onMouseOut ->
	globalHover2.visible = false




globalHoverMobile2.visible = false
globalHoverZoneMobile2.onMouseOver ->
	globalHoverMobile2.visible = true
globalHoverZoneMobile2.onMouseOver ->
	globalHoverMobile2.visible = false


mobileHover3.onMouseOver -> 

	if mobileEditOpacity.visible is true
		mobileToolbar3Edit.visible = true
	else
		mobileToolbar33.visible = true


mobileHover3.onMouseOut ->
	if mobileEditOpacity.visible is true
		mobileToolbar3Edit.visible = false
	else 
		mobileToolbar33.visible = false


disconnectGlobalSection.onClick ->
	section4Global.visible = false


# Section Manager

glob.visible = false
signup.visible = false
sectionManager.visible = false
globScrollGuide.visible = false
instScrollGuide.visible = false


sectionZone.onClick ->
	sectionManager.visible = true
	inst.visible = true
	instScrollBar.visible = true
	globScrollBar.visible = false
	for i in [0...hovers.length]
		hovers[i].ignoreEvents = true
		toolbars[i].ignoreEvents = true
		menus[i].ignoreEvents = true
		shits[i].ignoreEvents = true
		sections[i].ignoreEvents = true
	

exit.onClick ->
	glob.visible = false
	inst.visible = false
	signup.visible = false
	sectionManager.visible = false
	for i in [0...hovers.length]
		hovers[i].ignoreEvents = false
		toolbars[i].ignoreEvents = false
		menus[i].ignoreEvents = false
		shits[i].ignoreEvents = false
		sections[i].ignoreEvents = false

instSectionsClick.onClick ->
	inst.visible = true
	glob.visible = false
	signup.visible = false
	instScrollBar.visible = true
	globScrollBar.visible = false

globSectionsClick.onClick ->
	glob.visible = true
	inst.visible = false
	signup.visible = false
	instScrollBar.visible = false
	globScrollBar.visible = true

signupClick.onClick ->
	signup.visible = true
	glob.visible = false
	inst.visible = false
	instScrollBar.visible = false
	globScrollBar.visible = false


signupBtnBack.onClick ->
	signup.visible = false
	glob.visible = true
	inst.visible = false
	globScrollBar.visible = true
	instScrollBar.visible = false


mobileSelectedToggle.onClick ->
	mobileSelectedToggle.visible = false
	desktopSelectedToggle.visible = true
	desktopSelected.visible = true
	mobileSelected.visible = false

desktopSelectedToggle.onClick ->
	desktopSelectedToggle.visible = false
	mobileSelectedToggle.visible = true
	mobileSelected.visible = true
	desktopSelected.visible = false

# Scrolls

globScrollBar.visible = false

globScrollGuide.visible = false
globScroller = ScrollComponent.wrap(globScroll)
globScroller.props =
	height: globScrollGuide.height
	width: globScrollGuide.width
globScroller.content.draggable = false
globScroller.mouseWheelEnabled = true

instScroller = ScrollComponent.wrap(instScroll) 
instScroller.props =
	height: instScrollGuide.height
	width: instScrollGuide.width
instScroller.mouseWheelEnabled = true
instScroller.content.draggable = false

instScroller.content.draggable = false
instScroller.mouseWheelEnabled = true


instScroller.on Events.Move, ->
	instScrollKnob.y = Utils.modulate(instScroller.scrollY, [0, instScroller.content.height - instScroller.height], [5, instScrollBar.height-instScrollKnob.height-5], true)


globScroller.on Events.Move, ->
	globScrollKnob.y = Utils.modulate(globScroller.scrollY, [0, globScroller.content.height - globScroller.height], [5, globScrollBar.height-globScrollKnob.height-5], true)





# Edit State

bg3Applied.visible = false
versionHistoryBar.visible = false


state = null



topBarGlobal.visible = false
editState.visible = false
toolbarEdit.visible = false



topBarGlobalMessage.visible = true
topBarGlobalMessage.opacity = 0
editOpacity.opacity = 0
topBarGlobalMessage.scale = 0.9

editClickBar.onClick ->
	editState.visible = true
	topBar.visible = false
	topBarGlobal.visible = true
	desktopGlobal.visible = true
	mobileGlobal.visible = false
	mobile.visible = false
	mobileEditOpacity.visible = true
	globalSectionIndicatorMobile.visible = false
	editOpacity.animate
		opacity: 1
	Utils.delay 0.66, ->
		topBarGlobalMessage.animate
			opacity: 1
			scale: 1
	for i in [0...hovers.length-1]
		hovers[i].ignoreEvents = true
		toolbars[i].ignoreEvents = true
		menus[i].ignoreEvents = true
		shits[i].ignoreEvents = true
		sections[i].ignoreEvents = true
	for i in [0...mobileHovers.length-1]
		mobileHovers[i].ignoreEvents = true
		mobileToolbars[i].ignoreEvents = true


editClickBarMobile.onClick ->
	topBar.visible = false
	topBarGlobal.visible = true
	mobileGlobal.visible = true
	desktopGlobal.visible = false
	mobileEditOpacity.visible = true
	globalSectionIndicatorMobile.visible = false
	mobileEditOpacity.opacity = 0
	mobile.visible = true
	mobileToolbar3.visible = false
	mobileEditOpacity.animate
		opacity: 1
	Utils.delay 0.66, ->
		topBarGlobalMessage.animate
			opacity: 1
			scale: 1
	for i in [0...hovers.length-1]
		hovers[i].ignoreEvents = true
		toolbars[i].ignoreEvents = true
		menus[i].ignoreEvents = true
		shits[i].ignoreEvents = true
		sections[i].ignoreEvents = true
	for i in [0...mobileHovers.length-1]
		mobileHovers[i].ignoreEvents = true
		mobileToolbars[i].ignoreEvents = true



exitModalExit.onClick ->
	toolbarEdit.visible = false
	topBarGlobal.visible = false
	versionHistoryBar.visible = false
	topBar.visible = true
	editState.visible = false
	editOpacity.opacity = 0
	mobile.visible = false
	topBarMobile.visible = false
	topBarDesktop.visible = true
	topBarGlobalMessage.scale = 0.9
	topBarGlobalMessage.opacity = 0
	mobileGlobal.visible = false
	globalSectionIndicatorMobile.visible = true
	fontsBar.visible = false
	exitModal.visible = false
	fontBar1.visible = true

	if state == 'section3'
		bg3Applied.visible = true
		editSection1.visible = false
		editSection3.visible = true
	else 
		bg3Applied.visible = false
		editSection1.visible = true
		editSection3.visible = false
	for i in [0...hovers.length]
		hovers[i].ignoreEvents = false
		toolbars[i].ignoreEvents = false
		menus[i].ignoreEvents = false
		shits[i].ignoreEvents = false
		sections[i].ignoreEvents = false
	for i in [0...mobileHovers.length]
		mobileHovers[i].ignoreEvents = false
		mobileToolbars[i].ignoreEvents = false

btnBackTopBar.onClick ->
	exitModal.visible = true

exitModalCancel.onClick ->
	exitModal.visible = false


applied = null

applyChanges.onClick ->
	versionHistoryBar.visible = false
	toolbarEdit.visible = false
	applyChangesModal.visible = true
	fontsBar.visible = false
	editOpacity.ignoreEvents = true

tooltip.visible = false
tooltipZone.onMouseOver ->
	tooltip.visible = true
tooltipZone.onMouseOut ->
	tooltip.visible = false


btnProceed.onClick ->
	applied = 1
	if editSection3.visible is true
		bg3Applied.visible = true
		state = 'section3'
	else 
		bg3Applied.visible = false
		state = 'section1'
	
	toolbarEdit.visible = false
	topBarGlobal.visible = false
	versionHistoryBar.visible = false
	topBar.visible = true
	editState.visible = false
	editOpacity.opacity = 0
	mobile.visible = false
	topBarMobile.visible = false
	topBarDesktop.visible = true
	topBarGlobalMessage.scale = 0.9
	topBarGlobalMessage.opacity = 0
	mobileGlobal.visible = false
	globalSectionIndicatorMobile.visible = true
	fontsBar.visible = false
	exitModal.visible = false
	applyChangesModal.visible = false

	if state == 'section3'
		bg3Applied.visible = true
		editSection1.visible = false
		editSection3.visible = true
	else 
		bg3Applied.visible = false
		editSection1.visible = true
		editSection3.visible = false
	for i in [0...hovers.length]
		hovers[i].ignoreEvents = false
		toolbars[i].ignoreEvents = false
		menus[i].ignoreEvents = false
		shits[i].ignoreEvents = false
		sections[i].ignoreEvents = false
	for i in [0...mobileHovers.length]
		mobileHovers[i].ignoreEvents = false
		mobileToolbars[i].ignoreEvents = false

btnBack.onClick ->
	applyChangesModal.visible = false
	editOpacity.ignoreEvents = false

# versionClick.onClick ->
# 	toolbarEdit.visible = false
# 	versionHistoryBar.visible = true
# 
# backZone.onClick ->
# 	versionHistoryBar.visible = false


editSection3.visible = false

editClick.onClick ->
	toolbarEdit.visible = true
	versionHistoryBar.visible = false

toolbarEditBack.onClick ->
	toolbarEdit.visible = false

# versionActive.onClick ->
# 	if applied isnt 1
# 		editSection2.visible = false
# 		editSection3.visible = false
# 		editSection1.visible = true
# 	else
# 		editSection2.visible = false
# 		editSection3.visible = true
# 		editSection1.visible = false

mobileGlobal.visible = false
globalHoverMobile.visible = false

globalHoverZoneMobile.onMouseOver ->
	globalHoverMobile.visible = true
globalHoverZoneMobile.onMouseOut ->
	globalHoverMobile.visible = false

globalHoverZoneMobile2.onMouseOver ->
	globalHoverMobile2.visible = true
globalHoverZoneMobile2.onMouseOut ->
	globalHoverMobile2.visible = false



desktopSelectedToggleGlobal.onClick ->
	mobileGlobal.visible = true
	desktopGlobal.visible = false
	mobile.visible = true
	editState.visible = false	
	dropdownGlobalClick.visible = false

mobileSelectedToggleGlobal.onClick ->
	desktopGlobal.visible = true
	mobileGlobal.visible = false
	editState.visible = true
	mobile.visible = false
	editOpacity.opacity = 1
	dropdownGlobalClick.visible = true



topBarMobile.visible = false

topBarToggleDesktopSelected.onClick ->
	topBarMobile.visible = true
	topBarDesktop.visible = false
	mobile.visible = true
	mobileEditOpacity.visible = false

topBarToggleMobileSelected.onClick ->
	topBarDesktop.visible = true
	topBarMobile.visible = false
	mobile.visible = false


editOpacity.onClick ->
	exitModal.visible = true


# Saving Modal

savingModal.visible = false

savingModalCancel.onClick ->
	savingModal.visible = false
savingModalSave.onClick ->
	savingModal.visible = false



# Text

textGuides = [sectionNameTextGuide]
lineGuides = [sectionNameLineGuide]
textClicks = [sectionName]
textInput = ["Global section name"]
textLayers = []
lineLayers = []
inputs = []



for layer, i in textGuides
	layer.visible = false
	textLayer = new TextLayer
		parent: textClicks[i]
		x: textGuides[i].x
		y: textGuides[i].y
		font: "400 14px/1 Roboto"
		color: "#8EA0A9"
		text: textInput[i]
		originX: 0
		originY: 0
		animationOptions: 
			curve: Bezier(0.4, 0.0, 0.2, 1)
			time: 0.2
	textLayer.status = "down"
	textLayers.push(textLayer)
	
	do (textLayer, i) ->
		savingModalBg.onClick ->
			if inputs[i].value is "" and textLayer.status is "up"
				textLayer.animate
					scale: 1
					y: textLayer.y + 20
				textLayer.status = "down"
				inputs[i].visible = false
		textClicks[i].onClick ->
			do (i) ->
				if inputs[i].value is ""
					for layer, i in textLayers
						if layer.status is "up" and inputs[i].value is "" and textLayer.isAnimating is false
							layer.animate
								scale: 1
								y: layer.y + 20
							layer.status = "down"
							inputs[i].visible = false
					if textLayer.status is "down" and textLayer.isAnimating is false
						textLayer.animate
							scale: 12/14
							y: textLayer.y - 20
						textLayer.status = "up"
				else
					layer.focus


for layer, i in lineGuides
	lineLayer = new Layer
		parent: textClicks[i]
		x: lineGuides[i].midX
		y: lineGuides[i].y
		height: 2
		width: 0
		backgroundColor: "#1E88E5"
		status: "hide"
		animationOptions: 
			curve: "ease", time: 0.15
	lineLayers.push(lineLayer)
	showWidth = lineGuides[i].width
	minX = lineGuides[i].minX
	midX = lineGuides[i].midX
	do (lineLayer, showWidth, minX, midX) ->
		lineLayer.placeBefore(lineGuides[i])
		textClicks[i].onClick ->
			do (i) ->
				for layer, i in lineLayers
					if layer.status is "show" and layer.isAnimating is false
						layer.animate
							width: 0
							x: midX
						layer.status = "hide"
				if lineLayer.isAnimating is false
					lineLayer.animate
						width: showWidth
						x: minX
					lineLayer.status = "show"
	savingModalBg.onClick ->
		for layer in lineLayers
			if layer.status is "show"
				layer.animate
					width: 0
					x: midX
				layer.status = "hide"


for layer, i in textGuides
	input = new InputModule.Input
		parent: textClicks[i]
		width: lineGuides[i].width
		height: textGuides[i].height
		x: lineGuides[i].x
		y: textGuides[i].y - 10
		virtualKeyboard: false
		fontSize: 14
		lineHeight: 20
		padding: 10
	input.style =
		color: "#37475A"
		font: "Roboto"
	input.visible = false
	inputs.push(input)
	do (input) ->
		Events.wrap(input.form).addEventListener "submit", (event) ->
			event.preventDefault()
		textClicks[i].onClick ->
			input.visible = true
			input.bringToFront()
			input.focus()






# Other Stuff

section4Global.visible = false
globalSectionIndicatorMobile2.visible = false
mobileToolbar5Global.visible = false


globalSectionIndicatorMobile2.onMouseOver ->
	mobileToolbar5Global.visible = true
globalSectionIndicatorMobile2.onMouseOut ->
	mobileToolbar5Global.visible = false




saveGlobalSection.onClick ->
	savingModal.visible = true

sectionControl4Original = sectionControl4.y

savingModalSave.onClick ->
	section4Global.visible = true
	globalSectionIndicatorMobile2.visible = true
	mobileToolbar5.visible = false
	sectionControl4.y = sectionControlGlobal2.y

disconnectGlobalSection.onClick ->
	section4Global.visible = false
	globalSectionIndicatorMobile2.visible = false
	mobileToolbar5.visible = true
	sectionControl4.y = sectionControl4Original




