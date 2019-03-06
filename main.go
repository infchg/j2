package main
import (
  "log"
  "fmt"
  "net/http"
  "os"
)
func determineListenAddress() (string, error) {
  port := os.Getenv("PORT")
  if port == "" {
    return "", fmt.Errorf("$PORT not set")
  }
  return ":" + port, nil
}

func hola(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintln(w, "Hi this is J2 http response")
}

func hstat(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintln(w, "<a href=/>.</a> this URL for receiving updates vias http response")
}


func main() {
  addr, err := determineListenAddress()
  if err != nil {
    log.Fatal(err)
  }
  http.HandleFunc("/write", hstat)
  http.HandleFunc("/", hola)
  log.Printf("Listening on %s...\n", addr)
  if err := http.ListenAndServe(addr, nil); err != nil {
    panic(err)
  }
}
