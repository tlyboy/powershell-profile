# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概述

这是一个 PowerShell 配置文件项目，包含 Windows 终端的个人配置、别名和快捷函数。

## 核心文件

`Microsoft.PowerShell_profile.ps1` - PowerShell 配置文件，需复制到 `$PROFILE` 路径使用。

## 依赖模块

配置文件依赖以下 PowerShell 模块和工具：
- `posh-git` - Git 状态提示
- `git-aliases` - Git 命令别名
- `z` - 目录快速跳转
- `starship` - 终端提示符美化
- `fnm` - Node.js 版本管理

## 自定义函数/别名

| 别名 | 功能 |
|------|------|
| `la` | `Get-ChildItem` |
| `i <dir>` | 跳转到 `~\i\<dir>` |
| `s` / `d` / `b` / `t` / `w` / `p` / `c` | 分别运行 `nr start/dev/build/test/watch/play/typecheck` |
| `bw` / `tu` / `tw` | `nr build --watch` / `nr test -u` / `nr test --watch` |
| `lint` / `lintf` | `nr lint` / `nr lint --fix` |
| `re` / `release` | `nr release` |
| `nio` | `ni --prefer-offline` |

注：`nr` 和 `ni` 来自 [@antfu/ni](https://github.com/antfu/ni)。

## 代码风格

- 缩进：2 空格
- 换行符：LF
- 字符编码：UTF-8
