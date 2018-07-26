package nyaa

import (
	"http"
)

type Client struct {
	client  *http.Client
	BaseUrl *string
}
