# Modelとは

  データベースを操作する仕組み, データベースとのやり取りを行うクラスのこと
  Controllerからデータの追加や変更、削除の指示を受け実行する
  データベースのテーブルごとにModelが用意されている
  データベースのテーブルはモデルクラスとモデルクラスから生成されたインスタンスによって作られている
  モデルクラスのインスタンスは1つのレコード(行)を表すオブジェクトになりテーブルのカラム(列)に相当する属性を持つ
  
  データベース ===> テーブル ===> Model
  <データベースという大箱の中はテーブルの集合体でできている>
  <Modelはデータベースとやり取りを行うクラス>
  
  <例> 商品情報のモデルクラスがあると, そのインスタンス(オブジェクト)は商品名や価格などの属性を持つ(カラム)
  
                    データベース                                 
  
       商 品 番 号   商 品 名   価 格
            1          時計 　   800     <== レコード
            2         コップ     500

                         ↕︎  
  
       商品情報のModelクラス<データベースとやり取り>
       
       　     ↙︎         　　　  　↘︎
       
            1                     2
          時 計                 コップ
           800                   500
            
       インスタンス<オブジェクト>の属性 = 各カラム<列>    
           
# Modelの命名規約

  RailsではModelに対応するデータベースのテーブル名は「複数形」になる
  しかし, Modelのクラス名は頭文字が大文字の「単数形」になる
  Modelは必ず単数形で作成する<!--複数形にすることは厳禁-->
  
# Modelの作成コマンド

  rails g model モデル名
  
  <例> Memberモデルを作成する場合
       
       rails g model Member
       
# Modelの削除コマンド

  rails destroy model 削除したいモデル名
  
  <例> Memberモデルを削除する場合
  
       rails destroy model Member
       
# データベース ===> membersテーブル(小文字複数形) ===> Memberモデル(大文字単数形)