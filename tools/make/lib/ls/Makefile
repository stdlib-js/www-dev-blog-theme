#/
# @license Apache-2.0
#
# Copyright (c) 2022 The Stdlib Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#/

# VARIABLES #

# Define a generic filename pattern:
FILES_PATTERN ?= *.*

# Define a generic filepath pattern:
FILES_FILTER ?= .*/.*


# Define a filename pattern for CSS files:
CSS_PATTERN ?= *.$(CSS_FILENAME_EXT)

# Define a filepath pattern for CSS files:
CSS_FILTER ?= .*/.*


# Define a filename pattern for handlebars files:
HBS_PATTERN ?= *.$(HBS_FILENAME_EXT)

# Define a filepath pattern for handlebars files:
HBS_FILTER ?= .*/.*


# Minimum set of exclude flags (Note: order does matter to some degree):
FIND_EXCLUDE_FLAGS ?= \
	'!' -path "$(ROOT_DIR)/.git/*" \
	'!' -path "$(NODE_MODULES)/*" \
	'!' -path "$(BUILD_DIR)/*" \
	'!' -path "$(REPORTS_DIR)/*" \
	'!' -path "$(TMP_DIR)/*" \
	'!' -path "$(GHOST_DIR)/*" \
	'!' -path "$(ROOT_DIR)/**/$(BUILD_FOLDER)/*" \
	'!' -path "$(ROOT_DIR)/**/$(TMP_FOLDER)/*"

# Common exclude flags that most recipes should use (Note: order does matter to some degree):
FIND_COMMON_EXCLUDE_FLAGS ?= \
	'!' -path "$(ROOT_DIR)/.*" \
	'!' -path "$(NODE_MODULES)/*" \
	'!' -path "$(BUILD_DIR)/*" \
	'!' -path "$(REPORTS_DIR)/*" \
	'!' -path "$(TMP_DIR)/*" \
	'!' -path "$(ROOT_DIR)/**/$(BUILD_FOLDER)/*" \
	'!' -path "$(ROOT_DIR)/**/$(TMP_FOLDER)/*"

# Files exclude flags:
FIND_FILES_EXCLUDE_FLAGS ?= $(FIND_COMMON_EXCLUDE_FLAGS)

# HBS exclude flags:
FIND_HBS_EXCLUDE_FLAGS ?= $(FIND_EXCLUDE_FLAGS)

# CSS exclude flags:
FIND_CSS_EXCLUDE_FLAGS ?= $(FIND_EXCLUDE_FLAGS)

# On Mac OSX, in order to use `|` and other regular expression operators, we need to use enhanced regular expression syntax (-E); see https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man7/re_format.7.html#//apple_ref/doc/man/7/re_format.
ifeq ($(OS), Darwin)
	find_kernel_prefix := -E
else
	find_kernel_prefix :=
endif

# Define a suffix for pretty printing results as a list:
find_print_list := -exec printf '%s\n' {} \;


# DEPENDENCIES #

include $(TOOLS_MAKE_LIB_DIR)/ls/css/Makefile
include $(TOOLS_MAKE_LIB_DIR)/ls/hbs/Makefile
include $(TOOLS_MAKE_LIB_DIR)/ls/files.mk
