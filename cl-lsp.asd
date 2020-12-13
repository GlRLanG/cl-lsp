(defsystem "cl-lsp"
  :depends-on ("bordeaux-threads"
               "trivial-gray-streams"
               "swank"
               "cl-ppcre"
               "trivia"
               "alexandria"
               "trivial-types"
               "closer-mop"
               "quri"
               "jsonrpc"
               "yason"
               "jsonrpc/transport/stdio"
               "lem-base"
               "lem-lisp-syntax"
               "lem-lsp-utils"
               "cl-package-locks"
               "trivial-package-local-nicknames")
  :serial t
  :components ((:file "jsonrpc-patch")
               (:file "defpackage")
               (:file "logger")
               (:file "gray-streams")
               (:file "swank")
               (:file "slime")
               (:file "protocol")
               (:file "protocol-util")
               (:file "formatting")
               (:file "server")
               (:file "methods")
               (:module "lsp-methods"
                :pathname "methods"
                :serial t
                :components ((:file "lifetime")))
               (:file "eval")
               (:file "main")))
