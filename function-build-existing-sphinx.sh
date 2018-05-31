buildExistingSphinx () {
    tee conf.py <<EOF
extensions = []
source_suffix = '.rst'
master_doc = 'index'
language = 'it'
pygments_style = 'sphinx'
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'previewdoc'
EOF
    sphinx-build . web
    firefox web/index.html &
}
