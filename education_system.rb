module EducationSystem

    def initialize(options = {})
        @phase = options.fetch(:phase, self.class::PHASE)
    end

end