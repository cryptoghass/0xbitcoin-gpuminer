# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := hybridminer
### Generated for rule binding_gyp_hybridminer_target_cuda_on_linux:
rule_binding_gyp_hybridminer_target_cuda_on_linux_outputs :=

### Finished generating for rule: binding_gyp_hybridminer_target_cuda_on_linux

### Finished generating for all rules

DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=hybridminer' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-march=native \
	-O3 \
	-std=c++17 \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/home/andy/.node-gyp/8.9.4/include/node \
	-I/home/andy/.node-gyp/8.9.4/src \
	-I/home/andy/.node-gyp/8.9.4/deps/uv/include \
	-I/home/andy/.node-gyp/8.9.4/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I/usr/local/include \
	-I/usr/local/cuda/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=hybridminer' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-march=native \
	-O3 \
	-std=c++17 \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/home/andy/.node-gyp/8.9.4/include/node \
	-I/home/andy/.node-gyp/8.9.4/src \
	-I/home/andy/.node-gyp/8.9.4/deps/uv/include \
	-I/home/andy/.node-gyp/8.9.4/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I/usr/local/include \
	-I/usr/local/cuda/include

OBJS := \
	$(obj).target/$(TARGET)/cpp/hybridminer/addon.o \
	$(obj).target/$(TARGET)/cpp/hybridminer/hybridminer.o \
	$(obj).target/$(TARGET)/cpp/hybridminer/solver.o \
	$(obj).target/$(TARGET)/cpp/hybridminer/sha3.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our actions/rules run before any of us.
$(OBJS): | $(rule_binding_gyp_hybridminer_target_cuda_on_linux_outputs)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(obj).target/hybridminer.node: | $(rule_binding_gyp_hybridminer_target_cuda_on_linux_outputs)

# Preserve order dependency of special output on deps.
$(rule_binding_gyp_hybridminer_target_cuda_on_linux_outputs): | 

LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-L/usr/local/lib \
	-L/usr/local/cuda/lib64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-L/usr/local/lib \
	-L/usr/local/cuda/lib64

LIBS := \
	-lcuda \
	-lcudart

$(obj).target/hybridminer.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/hybridminer.node: LIBS := $(LIBS)
$(obj).target/hybridminer.node: TOOLSET := $(TOOLSET)
$(obj).target/hybridminer.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/hybridminer.node
# Add target alias
.PHONY: hybridminer
hybridminer: $(builddir)/hybridminer.node

# Copy this to the executable output path.
$(builddir)/hybridminer.node: TOOLSET := $(TOOLSET)
$(builddir)/hybridminer.node: $(obj).target/hybridminer.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/hybridminer.node
# Short alias for building this executable.
.PHONY: hybridminer.node
hybridminer.node: $(obj).target/hybridminer.node $(builddir)/hybridminer.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/hybridminer.node

