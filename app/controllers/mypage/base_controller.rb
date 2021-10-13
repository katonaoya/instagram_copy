class Mypage::BaseController < ApplicationController
  layout 'mypage'
# デフォルトでは、application.html.slimが呼び出され、yieldの部分にルーティングによって指定されたファイルが入って、レスポンスが入るが、layoutを設定するとlayoutフォルダの指定のファイルがレイアウトファイルとして設定される。
end