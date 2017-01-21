describe "Northem Atom UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('northem-atom-ui')

  it "allows to disable full-width tab sizing to be set via theme settings", ->
    expect(document.documentElement.getAttribute('theme-northem-atom-ui-tabsizing')).toBe null

    atom.config.set('northem-atom-ui.tabSizing', false)
    expect(document.documentElement.getAttribute('theme-northem-atom-ui-tabsizing')).toBe 'nofullwidth'
