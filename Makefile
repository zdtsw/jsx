all: deps

deps:
	rebar3 get-deps
	rebar3 compile

app:
	rebar3 compile

tests:
	rebar3 eunit

clean:
	rebar3 clean

distclean: clean
	rebar3 delete-deps

.PHONY: all deps app tests clean distclean
