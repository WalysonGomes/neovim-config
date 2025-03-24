local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

-- Função para obter o nome do arquivo sem extensão
local function filename()
  return vim.fn.expand("%:t:r") -- Obtém o nome do arquivo sem extensão
end

-- Função para obter o caminho do package baseado no diretório
local function package_path()
  local path = vim.fn.expand("%:h") -- Obtém o diretório do arquivo
  path = path:gsub("^src/", "") -- Remove o prefixo "src/"
  return path:gsub("/", ".") -- Substitui "/" por "." para formar um package válido
end

ls.add_snippets("java", {
  -- Snippet para criar uma classe com o nome do arquivo
  s("cls", {
    t("public class "),
    f(filename, {}),
    t({ " {", "    public static void main(String[] args) {", "    }", "}" }),
  }),

  -- Snippet para definir um package com base no caminho do arquivo
  s("pkg", {
    t("package "),
    f(package_path, {}),
    t(";"),
  }),
})
