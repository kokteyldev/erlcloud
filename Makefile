IGNORE_DEPS += edown eper eunit_formatters meck node_package rebar_lock_deps_plugin rebar_vsn_plugin reltool_util
C_SRC_DIR = /path/do/not/exist
C_SRC_TYPE = rebar
DRV_CFLAGS = -fPIC
export DRV_CFLAGS
ERLANG_ARCH = 64
export ERLANG_ARCH
ERLC_OPTS = +debug_info
export ERLC_OPTS

DEPS += meck
dep_meck = git https://github.com/eproxus/meck.git 0.8.4
DEPS += jsx
dep_jsx = git git://github.com/talentdeficit/jsx.git 2.8.0
DEPS += eini
dep_eini = git https://github.com/erlcloud/eini.git 1.2.5
DEPS += lhttpc
dep_lhttpc = git git://github.com/erlcloud/lhttpc 1.5.5
DEPS += base16
dep_base16 = git https://github.com/goj/base16.git 1.0.0
COMPILE_FIRST += erlcloud_xml


rebar_dep: preprocess pre-deps deps pre-app app

preprocess::

pre-deps::

pre-app::

include ../../erlang.mk