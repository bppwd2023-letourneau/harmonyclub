class Event < ApplicationRecord
    has_one_attached :photo
    validates :title, :eventstart, :eventend, presence: true
    
    validate :has_four



    def has_four
        @events = Event.where(featured: true)
        if self.featured == true && @events.length() >= 4
            self.errors.add(:featured, "already has four featured events")
        end
    end

    def start_time
        self.eventstart ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

    def index
        # Scope your query to the dates being shown:
        start_date = params.fetch(:start_date, Date.today).to_date
        @meetings = Meeting.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
      end


end
