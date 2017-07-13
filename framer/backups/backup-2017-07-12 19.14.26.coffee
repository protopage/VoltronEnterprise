# Sketch
sketch = Framer.Importer.load("imported/Global Sections V2 Prototype@1x", scale: 1)

{applyChangesModal, applyChangesScroll, applyChangesScrollGuide, subaccountList, applyChangesScrollBar, applyChangesScrollBarBg, applyChangesScrollKnob, btnProceed, btnBack, applyChangesOpacity, sectionManager, globSectionsClick, instSectionsClick, globScrollBar, globScrollKnob, globScrollBarBg,  signupScrollBar, signupScrollKnob, signupScrollBarBg, instScrollBar, instScrollKnob, instScrollBarBg, exit, signup, signupClick, signupScroll, signupScrollGuide, signupBtnBack, signupBtnInsert, glob, globScroll, globScrollGuide, inst, instScroll, instScrollGuide, toolbarEdit, toolbarEditBack, versionHistoryBar, backZone, versionActive, version1Zone, version1, version1Hover, version2Zone, version2, version2Hover, version3Zone, version3, version3Hover, version4Zone, version4, version4Hover, version5Zone, version5, version5Hover, version6Zone, version6, version6Hover, topBarGlobal, desktopMobileToggle, mobileSelected, desktopSelected, mobileSelectedToggle, desktopSelectedToggle, btnBackTopBar, topBar, sectionZone, scrollers, mobile, mobileSection1, mobileSection2, mobileSection3, mobileBg, editState, sectionEdit, sectionControlEdit, dropdownEdit, editClick, versionClick, moreShitEdit, editSection3, editSection2, editSection1, editOpacity, mobileEditOpacity, section, sectionControl, moreShit, dropdown, sectionHover, editClickBar, bg, sectionHover1, sectionHover2, sectionHover3, sectionHover4, sectionHover5, sectionHover, sectionControl1, sectionControl2, sectionControl3, sectionControl4, sectionControl5, sectionControl, section1, section2, section3, section4, section5, section, dropdown1, dropdown2, dropdown3, dropdown4, dropdown5, dropdown, moreShit1, moreShit2, moreShit3, moreShit4, moreShit5, moreShit, toolbar, toolbar1, toolbar2, toolbar3, toolbar4, toolbar5, globalHover, bg3Applied, bgPage, sectionEdit, sectionControlEdit, dropdownEdit, moreShitEdit, topBarGlobalMessage, applyChanges, desktopSelectedToggleGlobal, mobileSelectedToggleGlobal, mobileGlobal, desktopGlobal, mobileHover1, mobileHover2, mobileHover3, mobileHover4, mobileHover5, mobileHover6, mobileToolbar1, mobileToolbar2, mobileToolbar3, mobileToolbar4, mobileToolbar5, mobileToolbar6, sectionGlobal, sectionControlGlobal, sectionHoverGlobal, moreShitGlobal, dropdownGlobal, toolbarGlobal, globalHoverMobile, editClickBarMobile, mobileToolbar3Edit, topBarMobile, topBarDesktop, topBarToggleMobileSelected, topBarToggleDesktopSelected, globalSectionIndicatorMobile, exitModal, fontsBar, dropdownSettingsGlobal, d1, d1hover, d2, d2hover, dropdownGlobal, dropdownGlobalClick, fontbarBack, fontBar1, fontBar2, exitModalCancel, exitModalExit} = sketch

# Document Setup
document.body.style.cursor = "auto"
Framer.Extras.Hints.disable()
Framer.Extras.Preloader.enable()

applyChangesModal.visible = false
sectionManager.visible = false
toolbarEdit.visible = false
versionHistoryBar.visible = false
topBarGlobal.visible = false
editState.visible = false
mobile.visible = false
exitModal.visible = false
fontsBar.visible = false



# Scroll
scroll = ScrollComponent.wrap(scrollers)
scroll.scrollVertical = true
scroll.scrollHorizontal = false
scroll.mouseWheelEnabled = true
Canvas.onResize ->
	scroll.size = Canvas.size
scroll.content.draggable.enabled = false


# Dropdown
ds = [d1, d2]
dhovers = [d1hover, d2hover]

createHovers = (i) ->
	ds[i].onMouseOver ->
		dhovers[i].visible = true
	ds[i].onMouseOut ->
		dhovers[i].visible = false

for layer,i in ds
	createHovers(i)

dropdownSettingsGlobal.visible = false
d1hover.visible = false
d2hover.visible = false

dropdownGlobalClick.onClick ->
	dropdownSettingsGlobal.visible = true

d1.onClick ->
	fontsBar.visible = true
	dropdownSettingsGlobal.visible = false


# Font Bar

fontbarBack.onClick ->
	fontsBar.visible = false

fontBar1.onClick ->
	fontBar1.visible = false
	editSection3.visible = true




# Toolbar Hovers and Clicks

shits = [moreShit1, moreShit2, moreShit3, moreShit4, moreShit5, moreShitGlobal]
menus = [dropdown1, dropdown2, dropdown3, dropdown4, dropdown5, dropdownGlobal]
hovers = [section1, section2, section3, section4, section5, sectionGlobal]
toolbars = [sectionControl1, sectionControl2, sectionControl3, sectionControl4, sectionControl5, sectionControlGlobal]
sections = [sectionHover1, sectionHover2, sectionHover3, sectionHover4, sectionHover5, sectionHoverGlobal]

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




mobileToolbar3.visible = false
mobileToolbar3Edit.visible = false
globalHover.visible = false
editClickBar.onMouseOver ->
	globalHover.visible = true

editClickBar.onMouseOut ->
	globalHover.visible = false


mobileHover3.onMouseOver -> 
	if mobileEditOpacity.visible is true
		mobileToolbar3Edit.visible = true
	else
		mobileToolbar3.visible = true

mobileHover3.onMouseOut ->
	if mobileEditOpacity.visible is true
		mobileToolbar3Edit.visible = false
	else 
		mobileToolbar3.visible = false

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

editClickBarMobile.onMouseOver ->
	globalHoverMobile.visible = true
editClickBarMobile.onMouseOut ->
	globalHoverMobile.visible = false

desktopSelectedToggleGlobal.onClick ->
	mobileGlobal.visible = true
	desktopGlobal.visible = false
	mobile.visible = true
	editState.visible = false	

mobileSelectedToggleGlobal.onClick ->
	desktopGlobal.visible = true
	mobileGlobal.visible = false
	editState.visible = true
	mobile.visible = false
	editOpacity.opacity = 1



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




# Affordances

affordances = [toolbar, toolbar1, toolbar2, toolbar3, toolbar4, toolbar5, moreShit1, moreShit2, moreShit3, moreShit4, moreShit5, moreShit, dropdown1, dropdown2, dropdown3, dropdown4, dropdown5, dropdown, editClickBar]


createAffordances = (index) ->
	affordances[index].onMouseOver ->
		if affordances[index].visible == true
			document.body.style.cursor = "pointer"
	affordances[index].onMouseOut ->
		document.body.style.cursor = "auto"

for i in [0...affordances.length]
	createAffordances(i)