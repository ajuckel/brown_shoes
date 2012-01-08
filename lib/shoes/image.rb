module Shoes
  class Image < Native
    def initialize container, path, opts = {}, &blk
      @container = container
      @image = SWT::Graphics::Image.new @container.display, File.expand_path(path)
      @width = opts['width'] || @image.bounds.width
      @height = opts['height'] || @image.bounds.height
      @native_widget = SWT::Widgets::Canvas.new @container, SWT::NONE
      @native_widget.setSize @width, @height
      @native_widget.addPaintListener do |e|
        e.gc.drawImage @image, 0, 0, @image.bounds.width, @image.bounds.height, 0, 0, @width, @height
      end
      @native_widget.layoutData = SWT::Layouts::RowData.new @width, @height
    end
  end
end
