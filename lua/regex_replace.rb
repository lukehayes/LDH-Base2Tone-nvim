# Quick and dirty script to find and replace the sidebar colors.
#

# Dark Color Scheme Patterns
dark_SignCol_PATTERN='hl(0, "SignColumn", { fg = c.B2T_A3, bg = c.B2T_A1 })'
dark_SignCol_REPLACE='hl(0, "SignColumn", { fg = c.B2T_A3, bg = c.B2T_A0 })'

dark_NormNC_PATTERN='hl(0, "NormalNC", { fg = c.B2T_B5, bg = c.B2T_A1,  })'
dark_NormNC_REPLACE='hl(0, "NormalNC", { fg = c.B2T_B5, bg = c.B2T_A0,  })'

dark_NormSB_PATTERN='hl(0, "NormalSB", { fg = c.B2T_B5, bg = c.B2T_A1,  })'
dark_NormSB_REPLACE='hl(0, "NormalSB", { fg = c.B2T_B5, bg = c.B2T_A0,  })'

# Light Color Scheme Patterns
light_SignCol_PATTERN='hl(0, "SignColumn", { fg = c.B2T_C4, bg = c.B2T_C6 })'
light_SignCol_REPLACE='hl(0, "SignColumn", { fg = c.B2T_C4, bg = c.B2T_C7 })'

light_NormNC_PATTERN='hl(0, "NormalNC", { fg = c.B2T_D3, bg = c.B2T_C6,  })'
light_NormNC_REPLACE='hl(0, "NormalNC", { fg = c.B2T_D3, bg = c.B2T_C7,  })'

light_NormSB_PATTERN='hl(0, "NormalSB", { fg = c.B2T_D3, bg = c.B2T_C6,  })'
light_NormSB_REPLACE='hl(0, "NormalSB", { fg = c.B2T_D3, bg = c.B2T_C7,  })'

$base_dir = Dir.pwd
$count = 0

def changeColor(pattern, replacement)
  Dir.entries(".").each do |entry|
    if entry.start_with? "base"
      Dir.children(entry).each do | f |
        path = "#{$base_dir}/#{entry}/"

        if f == 'theme.lua'
          fh = File.read(path + f)
          contents     = fh.gsub(pattern, replacement)
          $count += 1
          File.open(path+f,"w") { |file| file.puts contents }
       end
      end
    end
  end
end

changeColor(dark_SignCol_PATTERN, dark_SignCol_REPLACE)
changeColor(dark_NormNC_PATTERN,  dark_NormNC_REPLACE)
changeColor(dark_NormSB_PATTERN,  dark_NormSB_REPLACE)

changeColor(light_SignCol_PATTERN, light_SignCol_REPLACE)
changeColor(light_NormNC_PATTERN,  light_NormNC_REPLACE)
changeColor(light_NormSB_PATTERN,  light_NormSB_REPLACE)

puts "Final Change Count: #{$count}"
