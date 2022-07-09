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

# RULES #

#/
# Installs a local Ghost instance.
#
# @example
# make install-ghost
#/
install-ghost:
	$(QUIET) $(MKDIR_RECURSIVE) $(GHOST_DIR)
	$(QUIET) $(GHOST) install local --port 2368 --pname ghost-stdlib --dir $(GHOST_DIR)

.PHONY: install-ghost

#/
# Cleans the Ghost installation directory.
#
# @example
# make clean-ghost
#/
clean-ghost:
	$(QUIET) $(GHOST) stop ghost-stdlib
	$(QUIET) $(GHOST) uninstall --dir $(GHOST_DIR) --force
	$(QUIET) $(DELETE) $(DELETE_FLAGS) $(GHOST_DIR)

.PHONY: clean-ghost
