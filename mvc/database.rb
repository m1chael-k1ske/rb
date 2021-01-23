# データベースとは

  整理されたデータの集合体, 必要に応じてデータを作成(Create), 読み取り(Read), 更新(Update), 削除(Delete)する機能がある
  頭文字を取って, CRUD(クラッド)処理と呼ぶ
  データベースは大箱, テーブルの集合でできている
  
# テーブルとは

  1つのデータベースには複数のテーブルを作成できる, テーブルは小箱
  エクセルの表の様に情報を縦横に並べたもの
  テーブルの列(カラム), 行(横)をレコードと呼ぶ
  データベースはテーブルという構造でグループ化し, その中に複数のデータを保存していく
  
  <例> ユーザーのデータ一覧を保存できるUserテーブル, 投稿のデータを保存するTopicテーブル
  
                                       データベース                                                
                                                                                        
                          Userテーブル            　　Topicテーブル                                    
                                                                                        
                        カラム        型            カラム        型                                       
                          id        integer           id        integer     <= レコード                              
                         name       string           image      string                                     
                         email      string        description   string                                               
                                                                                        
# リレーショナルデータベース(RDBMS)

  データベースというとリレーショナルデータベースをを指す
  RDBMSの最大の特徴は, データを表形式のテーブルで表し複数の表にリレーションシップ(関連付け)を結ぶことができること
  RDBMSにはレコード(行)が1つに特定できないといけない, 同じデータを複数のレコードとして保存はできない
  そのため, 必ずデータを一意に特定するためのカラム(列)が必要, この一意のデータで構成されるカラムのことをプライマリキー(主キー)と呼ぶ
  例として, メールアドレスであれば一意が保証されているためプライマリキーとして扱える, 名前であれば同姓同名がありえる
  パスワードも同じに設定するユーザーがいる可能性があるため駄目, 一意のデータで構成されるカラムは必ず必要