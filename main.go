package main

import (
	"log"
	"os/exec"
)

func main() {
	cmd := exec.Command("go", "get", "golang.org/x/net")
	log.Printf("Running get golang.org/x/net")
	err := cmd.Run()
	if err != nil {
		log.Printf("Command finished with error: %v", err)
	}
	cmd = exec.Command("go", "get", "golang.org/x/tools")
	log.Printf("Running get golang.org/x/tools")
	err = cmd.Run()
	if err != nil {
		log.Printf("Command finished with error: %v", err)
	}
	cmd = exec.Command("go", "install", "golang.org/x/tools/cmd/present")
	log.Printf("Running install golang.org/x/tools/cmd/present")
	err = cmd.Run()
	if err != nil {
		log.Printf("Command finished with error: %v", err)
	}
}
