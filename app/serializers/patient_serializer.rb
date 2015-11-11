class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender, :date_birth, :country, :city, :street, :title, :color, :url, :blog, :height, :weight, :email, :frequence, :money, :phone
end
