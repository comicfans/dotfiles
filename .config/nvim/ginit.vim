" Enable Mouse
"set mouse=a

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    "GuiFont! Monaco:h12
    GuiFont! DejaVu Sans Mono:h12
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
"    GuiScrollBar 1
endif

if exists(':GuiClipboard')
    GuiClipboard()
endif

