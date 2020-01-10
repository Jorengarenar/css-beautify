
from jsbeautifier.core.options import Options as BaseOptions

class BeautifierOptions(BaseOptions):
    def __init__(self, options=None):
        BaseOptions.__init__(self, options, 'css')

        self.selector_separator_newline = self._get_boolean('selector_separator_newline', True)
        self.newline_between_rules = self._get_boolean('newline_between_rules', True)

        # deprecated
        space_around_selector_separator = self._get_boolean('space_around_selector_separator')

        # Continue to accept deprecated option
        self.space_around_combinator = self._get_boolean('space_around_combinator') or \
            space_around_selector_separator
