(asdf:defsystem "cl-isl"
  :description "Integer Set Library (ISL) ffi bindings in Common Lisp"
  :author "Guillaume MICHEL <guillaume.michel@orilla.fr>"
  :license  "MIT License"
  :version "0.0.1"
  :depends-on ("cl-autowrap"
               "cffi")
  :serial t
  :components ((:static-file "COPYING")
               (:static-file "README.md")
               (:module "spec"
                        :serial t
                        :components ((:static-file "isl.h")
                                     (:static-file "isl.arm-pc-linux-gnu.spec")
                                     (:static-file "isl.i386-unknown-freebsd.spec")
                                     (:static-file "isl.i386-unknown-openbsd.spec")
                                     (:static-file "isl.i686-apple-darwin9.spec")
                                     (:static-file "isl.i686-pc-linux-gnu.spec")
                                     (:static-file "isl.i686-pc-windows-msvc.spec")
                                     (:static-file "isl.x86_64-apple-darwin9.spec")
                                     (:static-file "isl.x86_64-pc-linux-gnu.spec")
                                     (:static-file "isl.x86_64-pc-windows-msvc.spec")
                                     (:static-file "isl.x86_64-unknown-freebsd.spec")
                                     (:static-file "isl.x86_64-unknown-openbsd.spec")))
               (:module "src"
                        :serial t
                        :components ((:file "package")
                                     (:file "ffi")
                                     (:file "cl-isl")))))
