# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_117_133_323) do # rubocop:disable Metrics/BlockLength
  create_table 'parents', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'mobile'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'payment_by_students', force: :cascade do |t|
    t.integer 'student_id', null: false
    t.integer 'payment_id', null: false
    t.decimal 'amount_usd', precision: 5, scale: 2
    t.decimal 'amount_bs', precision: 8, scale: 2
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['payment_id'], name: 'index_payment_by_students_on_payment_id'
    t.index ['student_id'], name: 'index_payment_by_students_on_student_id'
  end

  create_table 'payments', force: :cascade do |t|
    t.date 'date'
    t.decimal 'amount_usd', precision: 5, scale: 2
    t.decimal 'amount_bs', precision: 8, scale: 2
    t.integer 'parent_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['parent_id'], name: 'index_payments_on_parent_id'
  end

  create_table 'students', force: :cascade do |t|
    t.string 'name'
    t.string 'college'
    t.integer 'year'
    t.string 'email'
    t.string 'mobile'
    t.integer 'parent_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['parent_id'], name: 'index_students_on_parent_id'
  end

  create_table 'tutorings', force: :cascade do |t|
    t.date 'date'
    t.time 'start'
    t.time 'end'
    t.integer 'tutor_id', null: false
    t.integer 'student_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['student_id'], name: 'index_tutorings_on_student_id'
    t.index ['tutor_id'], name: 'index_tutorings_on_tutor_id'
  end

  create_table 'tutors', force: :cascade do |t|
    t.string 'name'
    t.string 'subject'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'payment_by_students', 'payments'
  add_foreign_key 'payment_by_students', 'students'
  add_foreign_key 'payments', 'parents'
  add_foreign_key 'students', 'parents'
  add_foreign_key 'tutorings', 'students'
  add_foreign_key 'tutorings', 'tutors'
end
