set_project("sample")
set_version("1.0.0")
set_xmakever("2.7.0")

set_languages("c++20")
add_rules("mode.debug", "mode.release")

local libs = { "fmt", "gtest" }

add_includedirs("include")
add_requires(table.unpack(libs))

target("sample-project-lib")
  set_kind("static")
  add_files("src/**/*.cpp")
  add_packages(table.unpack(libs))

target("sample-project")
  set_kind("binary")
  add_files("standalone/main.cpp")
  add_packages(table.unpack(libs))
  add_deps("sample-project-lib")

target("test")
  set_kind("binary")
  add_files("test/*.cpp")
  add_packages(table.unpack(libs))
  add_deps("sample-project-lib")

add_installfiles("(include/**)", {prefixdir = ""})
