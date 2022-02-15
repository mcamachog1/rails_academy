#Primero se crean los modelos

#Modelo Parent
rails g scaffold Parent name:string email:string mobile:string

#Modelo Tutor
rails g scaffold Tutor name:string subject:string

#Modelo Student
rails g scaffold Student name:string college:string year:integer email:string mobile:string parent:references

#Modelo Tutoring
rails g scaffold Tutoring date:date start:time end:time tutor:references student:references

#Modelo Payment
rails g scaffold Payment date:date 'amount_usd:decimal{5,2}' 'amount_bs:decimal{8,2}' parent:references 

#Modelo PaymentByStudent
rails g scaffold PaymentByStudent 'amount_usd:decimal{5,2}' 'amount_bs:decimal{8,2}' student:references payment:references

#Correr el modelo
rails db:migrate



#Validaciones del modelo Parent
has_many :students
validates :name, presence: true

#Validaciones del modelo Tutor
has_many :students
validates :name, presence: true

#Validaciones del modelo Student
belongs_to :parent
validates :name, :year, presence: true

#Validaciones del modelo Tutoring
belongs_to :student
belongs_to :tutor
#validates :name, :year, presence: true

