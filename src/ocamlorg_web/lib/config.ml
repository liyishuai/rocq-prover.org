let env_with_default k v = Sys.getenv_opt k |> Option.value ~default:v

let to_bool s =
  match String.lowercase_ascii s with "true" | "1" -> true | _ -> false

let http_port = env_with_default "ROCQPROVERORG_HTTP_PORT" "8080" |> int_of_string
let doc_path = env_with_default "DOC_PATH" "../doc"
