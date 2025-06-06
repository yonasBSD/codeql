package main

import (
	"encoding/json"
	"fmt"
	"io"
	"net/http"
)

func encode(s string) ([]byte, error) {
	return json.Marshal(s)
}

func ServeJsonIndirect(w http.ResponseWriter, r http.Request) {
	tainted := r.Header.Get("Origin")
	noLongerTainted, _ := encode(tainted)
	w.Write(noLongerTainted)
}

func ServeJsonDirect(w http.ResponseWriter, r http.Request) {
	tainted := r.Header.Get("Origin")
	noLongerTainted, _ := json.Marshal(tainted)
	w.Write(noLongerTainted)
}

func ErrTest(w http.ResponseWriter, r http.Request) {
	cookie, err := r.Cookie("somecookie")
	w.Write([]byte(fmt.Sprintf("Cookie result: %v", cookie)))    // GOOD: Cookie's value is not user-controlled in reflected xss.
	w.Write([]byte(fmt.Sprintf("Cookie check error: %v", err)))  // GOOD: Cookie's err return is harmless
	http.Error(w, fmt.Sprintf("Cookie result: %v", cookie), 500) // Good: only plain text is written.
	file, header, err := r.FormFile("someFile")                  // $ Source[go/reflected-xss]
	content, err2 := io.ReadAll(file)
	w.Write([]byte(fmt.Sprintf("File content: %v", content)))      // $ Alert[go/reflected-xss] // BAD: file content is user-controlled
	w.Write([]byte(fmt.Sprintf("File name: %v", header.Filename))) // $ Alert[go/reflected-xss] // BAD: file header is user-controlled
	w.Write([]byte(fmt.Sprintf("FormFile error: %v", err)))        // GOOD: FormFile's err return is harmless
	w.Write([]byte(fmt.Sprintf("FormFile error: %v", err2)))       // GOOD: ReadAll's err return is harmless

	reader, err := r.MultipartReader() // $ Source[go/reflected-xss]
	part, err2 := reader.NextPart()
	partName := part.FileName()
	byteSlice := make([]byte, 100)
	part.Read(byteSlice)

	w.Write([]byte(fmt.Sprintf("Part name: %v", partName)))         // $ Alert[go/reflected-xss] // BAD: part name is user-controlled
	w.Write(byteSlice)                                              // $ Alert[go/reflected-xss] // BAD: part contents are user-controlled
	w.Write([]byte(fmt.Sprintf("MultipartReader error: %v", err)))  // GOOD: MultipartReader's err return is harmless
	w.Write([]byte(fmt.Sprintf("MultipartReader error: %v", err2))) // GOOD: NextPart's err return is harmless
}

func QueryMapTest(w http.ResponseWriter, r http.Request) {
	keys, ok := r.URL.Query()["data_id"] // $ Source[go/reflected-xss]
	if ok && len(keys[0]) > 0 {
		key := keys[0]
		w.Write([]byte(key)) // $ Alert[go/reflected-xss] // BAD: query string is user-controlled
	}
}
