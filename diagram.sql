Table users {
  ID bigint(20)    
  username varchar(191)
  password varchar(191)
  role varchar(191)
  created_at timestamp 
  update_at timestamp
  division_id bigint(20)
}

Table divisions {
  id bigint(20)
  name varchar(191)
  created_at timestamp
  update_at timestamp
}

Table polls {
  id bigint(20)
  title varchar(191)
  description text 
  deadline datetime
  created_by bigint(20)
  created_at timestamp
  update_at timestamp
  delete_at timestamp
}

Table votes {
  id bigint(20)
  choice_id bigint(20)
  user_id bigint(20)
  poll_id bigint(20)
  created_at timestamp
  update_at timestamp
  division_id bigint(20)
}

Table choices {
  id bigint(20)
  choice varchar(191)
  poll_id bigint(20)
  created_at timestamp
  update_at timestamp
}



Ref: "users"."division_id" < "divisions"."id"

Ref: "users"."ID" < "polls"."created_by"

Ref: "users"."ID" < "votes"."user_id"

Ref: "divisions"."id" < "votes"."division_id"

Ref: "polls"."id" < "choices"."poll_id"

Ref: "polls"."title" < "votes"."poll_id"
