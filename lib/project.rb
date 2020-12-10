class Project

    attr_accessor :title, :backer, :project_backer

    @@all =[]

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_instances = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end

        project_backer_instances.map do |pbi|
            pbi.backer
        end
    end



end