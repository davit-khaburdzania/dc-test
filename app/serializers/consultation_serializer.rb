class ConsultationSerializer < ActiveModel::Serializer
  attributes :id, :name, :pain_site, :pain_note, :age, :location, :examination_notes, :date
  has_one :patient
end
