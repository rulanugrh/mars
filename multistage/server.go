package main

import (
	"fmt"
	"net/http"
)

func main() {
	// handle route using handler function
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Welcome to new server!")
	})

	// listen to port
	http.ListenAndServe(":5050", nil)
}
