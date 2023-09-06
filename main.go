package main

import "net/http"

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("<h1>TESTE LAB ARGO CD/h1>"))
	})
	http.ListenAndServe(":8081", nil)

}
