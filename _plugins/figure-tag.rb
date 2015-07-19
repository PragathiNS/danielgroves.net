class FigureBlock < Liquid::Block
	ExtraClasses = /(\S+(\s+\S+){0,})/i

	def initialize(tag, text, tokens)
    super
	end

	def render(context)
    contents = super.strip
		"<figure>#{contents}</figure>"
	end
end

Liquid::Template.register_tag('figure', FigureBlock)
