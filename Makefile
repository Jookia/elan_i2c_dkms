# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the mouse drivers.
#

# Each configuration option enables a list of files.

obj-$(CONFIG_MOUSE_ELAN_I2C)		+= elan_i2c.o
elan_i2c-objs := elan_i2c_core.o
elan_i2c-$(CONFIG_MOUSE_ELAN_I2C_I2C)	+= elan_i2c_i2c.o
elan_i2c-$(CONFIG_MOUSE_ELAN_I2C_SMBUS)	+= elan_i2c_smbus.o
