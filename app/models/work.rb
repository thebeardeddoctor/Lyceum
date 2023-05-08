# == Schema Information
#
# Table name: works
#
#  id          :integer          not null, primary key
#  body        :text
#  description :text
#  goal        :string
#  specialty   :string
#  timeline    :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_works_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Work < ApplicationRecord
 belongs_to :user
 validates :title, presence: true
 validates :goal, presence: true
 validates :timeline, presence: true
 has_rich_text :body
 has_many :comments, dependent: :destroy
 has_noticed_notifications model_name: 'Notification'
 has_many :notifications, through: :user, dependent: :destroy
 Specialty = ["Allergy and Immunology",
  "Anesthesiology",
  "Colon and Rectal Surgery", 
  "Dermatology",
  "Emergency Medicine",
  "Family Medicine",
  "Internal Medicine - General",
  "Internal Medicine - Cardiology",
  "Internal Medicine - Endocrinology and Metabolism",
  "Internal Medicine - Gastroenterology",
  "Internal Medicine - Hematology",
  "Internal Medicine - Infectious Diseases",
  "Internal Medicine - Medical Oncology",
  "Internal Medicine - Nephrology",
  "Internal Medicine - Pulmonary Disease",
  "Internal Medicine - Rheumatology",
  "Interventional Radiology",
  "Medical Genetics",
  "Neurological Surgery",
  "Neurology",
  "Nuclear Medicine",
  "Obstetrics and Gynecology",
  "Ophthalmology",
  "Orthopaedic Surgery",
  "Otolaryngology - Head and Neck Surgery",
  "Pathology",
  "Pediatrics",
  "Physical Medicine and Rehabilitation",
  "Plastic Surgery",
  "Preventative Medicine - Aerospace",
  "Preventative Medicine - Occupational",
  "Preventative Medicine - Public Health and General",
  "Psychiatry",
  "Radiology - Diagnostic",
  "Radiology - Radiation Oncology",
  "Surgery - General",
  "Thoracic Surgery",
  "Urology"
  ]
end
