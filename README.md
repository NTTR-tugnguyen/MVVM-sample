# MVVM-CアーキテクチャのiOSsample project

## MVVMーC(Coordinator）というアーキテクチャを利用してサンプルのプロジェクトを作りました。

Senceの中のTopというフォダルだけを参考して、他のファイルは無視してください。

ファイルの構築：

Root Project
  - Extension
   - UIViewControllerExtension.swift ..vv
  - Service
    - ApiClient
    - vv..
  - Resource
  - Sence
    - TopScreen
     - TopScrenViewController.swift
     - TopScreenModel.swift
     - TopScreenViewControllerViewModel.swift
     - TopScreenEntity.swift 
    - Detail Screen
    - Setting Screen


MVVM-Cは何の建築ですか？
MVVMはModel-View-ViewModelです、CはCoordinatorという部分です。



### View
Viewは全てUIKitの子クラスです。例えば、UIViewController, UIButton, UILabel..など.Viewの役割はユーザーからタッチエベントとか動作エベントをうけるの役割です。
他の役割は画面に内容を表示する役割です

### Model

ModelはAPI, Data僧などに操作する部分です。

### ViewModel

ViewModelは ViewとModelの間のブリッジです。
ビジネスロジックは ViewModelの役割です。

### Coordinator
Coordinatorの役割は各画面の間に移転する役割です。

 


