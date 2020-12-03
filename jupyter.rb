require 'watir'

@b = Watir::Browser.new

@b.goto("https://mybinder.org/v2/gh/jupyterlab/jupyterlab-demo/master?urlpath=lab/tree/demo")

# Close tab
@b.div(class: "jp-LabShell").div(class: "lm-DockPanel").li(class: "lm-TabBar-tab", index: 1).div(class: "jp-icon-hover").click

# New file
@b.div(id: "jp-top-panel").li(text: "File").click
@b.div(text: "New").hover
@b.li(text: "Notebook").click
@b.button(text: "Select").click

