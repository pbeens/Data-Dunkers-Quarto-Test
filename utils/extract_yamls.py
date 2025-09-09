import os

# 👇 Paste your repo directory path here
dir = r"D:\My Documents\GitHub\Data-Dunkers-Quarto-Test"

def extract_yaml_header(filepath):
    """Extract YAML header (between --- markers) from a .qmd file."""
    header_lines = []
    in_yaml = False
    with open(filepath, "r", encoding="utf-8") as f:
        for line in f:
            if line.strip() == "---":
                if not in_yaml:
                    in_yaml = True
                    continue
                else:
                    # End of YAML block
                    break
            if in_yaml:
                header_lines.append(line.rstrip("\n"))
    return "\n".join(header_lines)

# Walk through repo and process all .qmd files
for root, _, files in os.walk(dir):
    for file in files:
        if file.endswith(".qmd"):
            filepath = os.path.join(root, file)
            yaml_header = extract_yaml_header(filepath)
            print("=" * 80)
            print(f"File: {filepath}")
            print("=" * 80)
            if yaml_header:
                print(yaml_header)
            else:
                print("(No YAML header found)")
            print()
