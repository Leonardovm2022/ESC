from CPUtables import *

file = input("Nome do arquivo ASM: ")

with open(file, "r") as f:
    lines = list(l.split("//")[0].strip() \
    for l in f.readlines() \
    if l.strip() and not l.startswith("//"))

#print(lines)

codasm = list()
line_count = 0
label_symbols = {}
variable_symbols = {}
next_variable_address = 16


for l in lines:
    if l.startswith("(") and l.endswith(")"):
        # Found a label line, extract the label and assign the line count as its value
        label = l[1:-1]
        label_symbols[label] = line_count
    else:
        # Increment line count for non-label lines
        line_count += 1

line_count = 0
for l in lines:
    # A-instruction @n (15bits > 0)
    if not l.startswith("(") and not l.endswith(")"):
        if(l.startswith("@")):
            symbol = (l[1:])
            if symbol.isdigit():
                n = int(symbol)
                codasm.append(f"0{n:015b}")
            else:
                if symbol in label_symbols:
                    label_value = label_symbols[symbol]
                    codasm.append(f"0{label_value:015b}")
                elif symbol in variable_symbols:
                    variable_value = variable_symbols[symbol]
                    codasm.append(f"0{variable_value:015b}")
                else:
                    variable_symbols[symbol] = next_variable_address
                    codasm.append(f"0{next_variable_address:015b}")
                    next_variable_address += 1

        # C-instruction 111accccccdddjjj dest=comp; jump
        elif "=" in l:
            ddd, aux = l.split("=") if "=" in l else ("",l)
            acccccc, jjj = aux.split(";") if ";" in aux else (aux,"")
            codasm.append(f"111{tcomp(acccccc)}{tdest(ddd)}{tjump(jjj)}")
        line_count += 1

print(codasm)

with open(file.split('.')[0]+".bin", "w") as f:
    for c in codasm:
        f.write(c+"\n")