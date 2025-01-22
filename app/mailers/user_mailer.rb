class UserMailer < ApplicationMailer
  # ユーザー登録完了メールのメソッド
  def welcome
    @user = params[:user]
    mail(to: @user.email, subject: "登録完了") # メール送信
    # インスタンス変数に代入すると次のビューで使える
  end
end
# メイラーメソッド内で定義されたすべてのインスタンス変数はそのままビューで使える