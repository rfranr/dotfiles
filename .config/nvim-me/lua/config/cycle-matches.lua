-- Print a simple "Hello World" message
print("Hello world")
--
-- https://neovim.io/doc/user/api.html


-- Define the search pattern
local search_pattern = "PLANT"

-- get the current buffer
local buffer_id=vim.api.nvim_get_current_buf()

-- get the current search pattern string that user entered cin command line
local search_pattern_str = vim.fn.getcmdline()
print ( search_pattern_str )

-- get the toal lines in the current buffer
local total_lines = vim.api.nvim_buf_line_count(buffer_id)


local lines = vim.api.nvim_buf_get_lines(buffer_id, 1, 1, true)
-- get total marks in buffer


-- Perform a search (assuming you already searched using `/`)
local search_pattern = vim.fn.getreg("/")  -- Get the current search pattern
print(search_pattern)

-- print every line o the buffer
for line_num = 1, total_lines do
  local lines = vim.api.nvim_buf_get_lines(buffer_id, line_num-1, line_num, true)
  
  -- Get the matched text
  -- If a match is found
    local match_start = line.search(search_pattern, "W")  -- "W" for wrap-around search

   if match_start > 0 then
     -- Get the matched text
     local ll = table.concat(lines, "\n")
     print(ll) 
     -- local match = lines:sub(start_col, start_col + #search_pattern - 1)
   
     -- Print the match
     print("Highlighted match: " .. match)
  end

  print (match)


  --print(table.concat(lines, "\n"))
  --print ( lines )
end

--------------- -- Perform a search (assuming you already searched using `/`)
--------------- local search_pattern = vim.fn.getreg("/")  -- Get the current search pattern
--------------- print(search_pattern)
--------------- 
--------------- -- Get the first match of the search pattern
--------------- local match_start = vim.fn.search(search_pattern, "W")  -- "W" for wrap-around search
--------------- 
--------------- -- If a match is found
--------------- if match_start > 0 then
---------------   -- Get the current line and the match
---------------   local line_num = vim.fn.line(".")
---------------   local line = vim.fn.getline(line_num)
---------------   local start_col = vim.fn.col(".")
--------------- 
---------------   -- Get the matched text
---------------   local match = line:sub(start_col, start_col + #search_pattern - 1)
--------------- 
---------------   -- Print the match
---------------   print("Highlighted match: " .. match)
--------------- else
---------------   print("No match found!")
--------------- end


-- print the current line number
--
-- https://neovim.io/doc/user/api.html


