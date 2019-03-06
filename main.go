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
fmt.Fprintln(w, "<h1> This is the human readable response </h1>  The J2 app can respond to this <a href=/json>/json</a> url with HTTP JSON data.  Deployed Probes and Sensors push data to <a href=/write>/write</a>  ")
}

func jso(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintln(w, "{\"response\":\"this is J2 http response\"}")
}

func hstat(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintln(w, "<a href=/>Home</a></br> The /write URL is for receiving updates via http from Deployed Sensors in the field")
}


func main() {
  addr, err := determineListenAddress()
  if err != nil {
    log.Fatal(err)
  }
  http.HandleFunc("/write", hstat)
  http.HandleFunc("/", hola)
  http.HandleFunc("/json", jso)
  log.Printf("Listening on %s...\n", addr)
  if err := http.ListenAndServe(addr, nil); err != nil {
    panic(err)
  }
}
