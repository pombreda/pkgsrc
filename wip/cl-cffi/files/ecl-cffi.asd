(DEFSYSTEM "cffi"
    :DEPENDS-ON (:ALEXANDRIA :TRIVIAL-FEATURES :BABEL)
    :CLASS ASDF::PREBUILT-SYSTEM
    :LIB "SYS:cffi"
    :COMPONENTS ((:COMPILED-FILE "cffi" :PATHNAME #P"SYS:cffi.fas")))