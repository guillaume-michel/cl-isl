(in-package :isl.ffi)

(autowrap:c-include '(cl-isl spec "isl.h")
                    :spec-path '(cl-isl spec)
                    :sysincludes '("/usr/local/opt/isl/include")
                    :exclude-constants ("ISL_.*_H"))

(cffi:load-foreign-library '(:default "libisl")
                           :search-path '("/usr/local/opt/isl/lib/"))
