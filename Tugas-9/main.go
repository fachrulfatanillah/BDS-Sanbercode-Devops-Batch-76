package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Halo! Server ini berjalan di port 8080.")
	})

	fmt.Println("Server dimulai di http://localhost:8080")
	
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		fmt.Printf("Gagal menjalankan server: %s\n", err)
	}
}