package main

import (
	"fmt"
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	port := os.Getenv("PORT") // read the port number from an environment variable
	if port == "" {
		port = "8080" // default to port 8080 if the environment variable is not set
	}

	r := gin.Default()
	r.GET("/health", func(c *gin.Context) {
		c.JSON(200, "success")
	})

	err := r.Run(fmt.Sprintf(":%s", port))
	if err != nil {
		panic(err)
	}
}
