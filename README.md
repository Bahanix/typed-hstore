typed-hstore
============

Minimal app about a possible issue with pg hstore and activerecord-typedstore:

```
bundle install
rake db:create
rake db:migrate
rails c
Dog.create properties: { is_fat: true }
 =>  INSERT INTO "dogs" ("created_at", "properties", "updated_at") VALUES ($1, $2, $3) RETURNING "id"  [["created_at", Mon, 17 Feb 2014 09:20:47 UTC +00:00], ["properties", "--- !ruby/hash:Dog::PropertiesHash\nis_fat: true\n"], ["updated_at", Mon, 17 Feb 2014 09:20:47 UTC +00:00]]
```

https://github.com/byroot/activerecord-typedstore/issues/11
