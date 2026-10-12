augroup filetype_sql
au!
au FileType sql nnoremap <leader>s :r! cat ~/dev/sql_snippets/
au FileType sql vnoremap <leader>r :w !psql $DATABASE_URL > sql.out <cr>

au FileType sql nnoremap <leader>c mq0i-- <esc>`q
au FileType sql vnoremap <leader>c :normal 0i-- <cr>

au FileType sql :iabbrev <buffer> ja ->>
au FileType sql :iabbrev <buffer> is is
au FileType sql :iabbrev <buffer> as as
au FileType sql :iabbrev <buffer> in in
au FileType sql :iabbrev <buffer> or or
au FileType sql :iabbrev <buffer> on on
au FileType sql :iabbrev <buffer> and and
au FileType sql :iabbrev <buffer> add add
au FileType sql :iabbrev <buffer> not not
au FileType sql :iabbrev <buffer> set set
au FileType sql :iabbrev <buffer> key key
au FileType sql :iabbrev <buffer> for for
au FileType sql :iabbrev <buffer> new new
au FileType sql :iabbrev <buffer> old old
au FileType sql :iabbrev <buffer> end end

au FileType sql :iabbrev <buffer> foreign foreign

au FileType sql :iabbrev <buffer> domain domain
au FileType sql :iabbrev <buffer> dom domain

au FileType sql :iabbrev <buffer> stored stored
au FileType sql :iabbrev <buffer> sto stored

au FileType sql :iabbrev <buffer> always always
au FileType sql :iabbrev <buffer> alw always

au FileType sql :iabbrev <buffer> generated generated
au FileType sql :iabbrev <buffer> gen generated

au FileType sql :iabbrev <buffer> before before
au FileType sql :iabbrev <buffer> bef before

au FileType sql :iabbrev <buffer> after after
au FileType sql :iabbrev <buffer> aft after

au FileType sql :iabbrev <buffer> then then
au FileType sql :iabbrev <buffer> the then

au FileType sql :iabbrev <buffer> when when
au FileType sql :iabbrev <buffer> whe when

au FileType sql :iabbrev <buffer> case case
au FileType sql :iabbrev <buffer> cas case

au FileType sql :iabbrev <buffer> trigger trigger
au FileType sql :iabbrev <buffer> tri trigger

au FileType sql :iabbrev <buffer> with with
au FileType sql :iabbrev <buffer> wit with

au FileType sql :iabbrev <buffer> join join
au FileType sql :iabbrev <buffer> joi join

au FileType sql :iabbrev <buffer> returns returns
au FileType sql :iabbrev <buffer> ret returns

au FileType sql :iabbrev <buffer> language language
au FileType sql :iabbrev <buffer> lan language

au FileType sql :iabbrev <buffer> uuid uuid
au FileType sql :iabbrev <buffer> uui uuid

au FileType sql :iabbrev <buffer> jsonb jsonb
au FileType sql :iabbrev <buffer> jso jsonb

au FileType sql :iabbrev <buffer> primary primary
au FileType sql :iabbrev <buffer> pri primary

au FileType sql :iabbrev <buffer> column column
au FileType sql :iabbrev <buffer> col column

au FileType sql :iabbrev <buffer> select select
au FileType sql :iabbrev <buffer> sel select

au FileType sql :iabbrev <buffer> from from
au FileType sql :iabbrev <buffer> fro from

au FileType sql :iabbrev <buffer> where where
au FileType sql :iabbrev <buffer> whe where

au FileType sql :iabbrev <buffer> exists exists
au FileType sql :iabbrev <buffer> exi exists

au FileType sql :iabbrev <buffer> update update
au FileType sql :iabbrev <buffer> upd update

au FileType sql :iabbrev <buffer> alter alter
au FileType sql :iabbrev <buffer> alt alter

au FileType sql :iabbrev <buffer> table table
au FileType sql :iabbrev <buffer> tab table

au FileType sql :iabbrev <buffer> type type
au FileType sql :iabbrev <buffer> typ type

au FileType sql :iabbrev <buffer> create create
au FileType sql :iabbrev <buffer> cre create

au FileType sql :iabbrev <buffer> insert insert
au FileType sql :iabbrev <buffer> ins insert

au FileType sql :iabbrev <buffer> into into
au FileType sql :iabbrev <buffer> int into

au FileType sql :iabbrev <buffer> enable enable
au FileType sql :iabbrev <buffer> ena enable

au FileType sql :iabbrev <buffer> drop drop
au FileType sql :iabbrev <buffer> dro drop

au FileType sql :iabbrev <buffer> cascade cascade
au FileType sql :iabbrev <buffer> cas cascade

au FileType sql :iabbrev <buffer> unique unique
au FileType sql :iabbrev <buffer> uni unique

au FileType sql :iabbrev <buffer> null null
au FileType sql :iabbrev <buffer> nul null

au FileType sql :iabbrev <buffer> references references
au FileType sql :iabbrev <buffer> ref references

au FileType sql :iabbrev <buffer> default default
au FileType sql :iabbrev <buffer> def default

au FileType sql :iabbrev <buffer> true true
au FileType sql :iabbrev <buffer> tru true

au FileType sql :iabbrev <buffer> false false
au FileType sql :iabbrev <buffer> fal false

au FileType sql :iabbrev <buffer> bool bool
au FileType sql :iabbrev <buffer> boo bool

au FileType sql :iabbrev <buffer> between between
au FileType sql :iabbrev <buffer> bet between

au FileType sql :iabbrev <buffer> function function
au FileType sql :iabbrev <buffer> fun function

au FileType sql :iabbrev <buffer> replace replace
au FileType sql :iabbrev <buffer> rep replace

au FileType sql :iabbrev <buffer> index index
au FileType sql :iabbrev <buffer> ind index

au FileType sql :iabbrev <buffer> check check
au FileType sql :iabbrev <buffer> che check

au FileType sql :iabbrev <buffer> constraint constraint
au FileType sql :iabbrev <buffer> con constraint

au FileType sql :iabbrev <buffer> rls row level security
augroup END
