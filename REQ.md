* В сидах должныйы генерироваться статьи для пользователя
* В миграции у статьи должны быть указаны необходимые ограничения (null: false)
* В ArticlesController должен быть приватный метод для scope
* В ArticleDecorator не виден наружу user
* Верстка вывода статей должны быть семантичная
* UserArticlesController для создания и обновления статей
* В спеке использовать fill_form с attributes_for(:article)
* Обязательно передавать список всех объектов в партиал
* Не нужно декорировать объект, когда не нужно
* Ну нежно экспоузить объект, когда не нужно его иметь во view
* Use `#by_article` instead of article.comments to eleminate unsaved Comment object from collection after `comments.new`
