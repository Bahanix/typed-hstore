typed-hstore
============

Minimal app about a possible issue with pg hstore and activerecord-typedstore:

```
bundle install
rake db:create
rake db:migrate
rails c

Dog.create toys: ['bone']
 => INSERT INTO "dogs" ("created_at", "properties", "updated_at") VALUES ($1, $2, $3) RETURNING "id"  [["created_at", Tue, 18 Feb 2014 11:21:32 UTC +00:00], ["properties", {"toys"=>["bone"]}], ["updated_at", Tue, 18 Feb 2014 11:21:32 UTC +00:00]]
 => (0.5ms)  COMMIT
 => #<Dog id: 2, name: nil, properties: {"toys"=>["bone"]}, created_at: "2014-02-18 11:21:32", updated_at: "2014-02-18 11:21:32">

Dog.last
 => Dog Load (0.9ms)  SELECT "dogs".* FROM "dogs" ORDER BY "dogs"."id" DESC LIMIT 1
 => #<Dog id: 2, name: nil, properties: {"toys"=>[]}, created_at: "2014-02-18 11:21:32", updated_at: "2014-02-18 11:21:32">
```

https://github.com/byroot/activerecord-typedstore/issues/11
