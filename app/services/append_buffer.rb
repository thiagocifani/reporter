class AppendBuffer
  attr_reader :id, :page

  def initialize(id, page, store: Report)
    @page   = Marshal.dump(page)
    @buffer = store.find(id)
  end

  def add_to_collection
    @buffer.pages << page
    @buffer.save
    @buffer
  end
end
