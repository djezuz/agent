# Channels combine communication—the exchange of a value—with synchronization—guaranteeing
# that two calculations (goroutines) are in a known state.
# - http://golang.org/doc/effective_go.html#channels

module Go
  class Channel
    def initialize()
      @state = :active
    end

    def close; @state = :closed; end
    def closed?; @state == :closed; end
  end
end