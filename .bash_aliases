alias curl="curl -L"
alias k="kubectl"
kubectl() {
  if [[ $1 == "get" && $2 == "all" ]]; then
    shift 2;
    command kubectl get $(kubectl api-resources --verbs=list --namespaced -o name | tr '\n' ',' | sed 's/,$/\n/') "$@";
  else
    command kubectl "$@";
  fi
}
