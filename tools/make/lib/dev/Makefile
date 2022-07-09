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

# Define the path to the local theme directory:
ghost_theme_dir := $(GHOST_DIR)/content/themes/stdlib-dev-blog-theme


# RULES #

#/
# Deploys a theme to a local Ghost instance.
#
# @example
# make dev-deploy
#/
dev-deploy: $(GHOST_DIR)
	$(QUIET) $(DELETE) $(DELETE_FLAGS) $(ghost_theme_dir)
	$(QUIET) $(MKDIR_RECURSIVE) $(ghost_theme_dir)
	$(QUIET) $(CP) -R $(THEME_DIR)/ $(ghost_theme_dir)/

.PHONY: dev-deploy

#/
# Restarts a local Ghost instance.
#
# @example
# make dev-restart
#/
dev-restart: $(GHOST_DIR)
	$(QUIET) $(GHOST) stop ghost-stdlib && $(GHOST) start --dir $(GHOST_DIR)

.PHONY: dev-restart

#/
# Opens a local Ghost instance.
#
# @example
# make dev-open
#/
dev-open: $(GHOST_DIR)
	$(QUIET) $(OPEN) "http://localhost:2368/ghost/"

.PHONY: dev-open
