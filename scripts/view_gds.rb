# Load KLayout's Ruby API
layout = RBA::Layout.new

# Read the input GDS file (passed as the first argument)
input_file = ARGV[0]
layout.read(input_file)

# Create a layout view and load the layout
app = RBA::Application.instance
mw = app.main_window
lv = mw.create_layout(0)
lv.load_layout(input_file, 0)

# Take a screenshot and save it to the output path (passed as the second argument)
output_file = ARGV[1]
lv.screenshot(output_file)
puts "Screenshot saved to: #{output_file}"
