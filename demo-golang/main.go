package main

import (
    "fmt"
    "net/http"
)

func helloWorld(w http.ResponseWriter, r *http.Request){
    name, err := os.Hostname()
	if err != nil {
		panic(err)
	}

    fmt.Sprintf("Hello students. This is running on ", name)
}

func main() {
    http.HandleFunc("/", helloWorld)
    http.ListenAndServe(":8080", nil)
}