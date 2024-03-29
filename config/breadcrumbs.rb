crumb :admin_dashboard do
  link '<i class="fa fa-dashboard"></i> Home'.html_safe, admin_root_path
end

crumb :edit_admin_site do
  link '設定', edit_admin_site_path
  parent :admin_dashboard
end

crumb :admin_users do
  link 'ユーザー', admin_users_path
  parent :admin_dashboard
end

crumb :admin_user do |user|
  link 'ユーザー詳細', admin_user_path(user)
  parent :admin_users
end

crumb :edit_admin_user_path do |user|
  link 'ユーザー編集', admin_user_path(user.id)
  parent :admin_users
end

crumb :new_admin_user do
  link 'ユーザーの作成', new_admin_user_path
  parent :admin_users
end

crumb :admin_categories do
  link 'カテゴリー', admin_categories_path
  parent :admin_dashboard
end

crumb :edit_admin_category do |category|
  link 'カテゴリー編集', edit_admin_category_path(category)
  parent :admin_categories
end

crumb :admin_authors do
  link '著者', admin_authors_path
  parent :admin_dashboard
end

crumb :edit_admin_author do |author|
  link '著者編集', edit_admin_author_path(author)
  parent :admin_authors
end

crumb :admin_manuals do
  link 'マニュアル一覧', admin_manuals_path
  parent :admin_dashboard
end

crumb :new_admin_manual do
  link 'マニュアル作成', new_admin_manual_path
  parent :admin_manuals
end

crumb :admin_manual_path do |manual|
  link 'マニュアル詳細', admin_manual_path(manual.id)
  parent :admin_manuals
end

crumb :edit_admin_manual do |manual|
  link 'マニュアル編集', edit_admin_manual_path(manual.id)
  parent :admin_manuals
end

crumb :new_admin_quiz do
  link 'クイズ作成', new_admin_quiz_path
  parent :admin_manuals
end

crumb :admin_quizzes do
  link 'クイズ一覧', admin_quizzes_path
  parent :admin_dashboard
end

crumb :admin_quiz_path do |quiz|
  link 'クイズ詳細', admin_quiz_path(quiz.id)
  parent :admin_manuals
end

crumb :edit_admin_quiz do |quiz|
  link 'クイズ編集', edit_admin_quiz_path(quiz.id)
  parent :admin_quizzes
end

crumb :new_admin_quiz_question_path do
  link '問題を作る', new_admin_quiz_question_path
  parent :admin_quizzes
end

crumb :edit_admin_quiz_question_path do  |question|
  link '問題を編集', edit_admin_quiz_question_path(question.id)
  parent :admin_quiz_path
end

# ノーマル

crumb :categories_path do
  link '<i class="fa fa-dashboard"></i> Home'.html_safe, categories_path
end


crumb :manual_path do |manual|
  link '内容', manual_path(manual.id)
  parent :categories_path
end

crumb :manuals_path do 
  link 'マニュアル検索', manuals_path
  parent :categories_path
end

crumb :category_manuals_path do |category|
  link 'タイトル', category_manuals_path(category.id)
  parent :categories_path
end

crumb :quizzes_path do 
  link 'クイズ', quizzes_path
  parent :categories_path
end

crumb :quiz_path do  |quiz|
  link '問題', quiz_path(quiz.id)
  parent :quizzes_path
end