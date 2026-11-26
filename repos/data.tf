data "terraform_remote_state" "base" {
  backend = "pg"

  config = {
    conn_str = "postgres://tfstate:tf@localhost/base?sslmode=disable"
  }
}