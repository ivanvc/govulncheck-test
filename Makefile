default: run-govulncheck

.PHONY: run-govulncheck
run-govulncheck:
ifeq (, $(shell which govulncheck))
	$(shell go install golang.org/x/vuln/cmd/govulncheck@latest)
endif
	govulncheck -show verbose ./...
