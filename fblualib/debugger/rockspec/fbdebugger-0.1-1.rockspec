--
--  Copyright (c) 2014, Facebook, Inc.
--  All rights reserved.
--
--  This source code is licensed under the BSD-style license found in the
--  LICENSE file in the root directory of this source tree. An additional grant
--  of patent rights can be found in the PATENTS file in the same directory.
--

package = 'fbdebugger'
version = '0.1-1'
source = {
    url = 'https://github.com/facebook/fblualib',
}
description = {
    summary = 'FB Lua Debugger',
    detailed = [[
      This is a general-purpose debugger for Lua. Its command syntax is
      inspired by gdb, and it has special support for printing Torch tensors
      (but Torch is not required). Requires LuaJIT 2.0+.
    ]],
    homepage = 'https://github.com/facebook/fblualib',
    license = 'BSD',
}
supported_platforms = {
    'unix',
}
dependencies = {
    'fbutil >= 0.1',
    'fbeditline >= 0.1',
    'penlight >= 1.3.1',
}
source = {
    url = 'https://github.com/facebook/fblualib',
    dir = 'fblualib/debugger',
}
build = {
    type = 'builtin',
    modules = {
        ['fb.debugger.breakpoint'] = 'https://raw.githubusercontent.com/changkaizhao/fblualib/master/fblualib/debugger/fb/debugger/breakpoint.lua',
        ['fb.debugger.init'] = 'https://raw.githubusercontent.com/changkaizhao/fblualib/master/fblualib/debugger/fb/debugger/init.lua',
        ['fb.debugger.types'] = 'https://raw.githubusercontent.com/changkaizhao/fblualib/master/fblualib/debugger/fb/debugger/types.lua',
        ['fb.debugger.utils'] = 'https://raw.githubusercontent.com/changkaizhao/fblualib/master/fblualib/debugger/fb/debugger/utils.lua',
    },
}
