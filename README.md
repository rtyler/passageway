# Passageway -- instant public tunnel to your local web server

## Install

Now you can install Passageway with RubyGems:

    % gem install passageway

or to get the source:

    git clone http://github.com/rtyler/passageway.git

## Usage

    passageway [options] <localport>
      -k, --key FILE    upload a public key for authentication

Passageway is a client to a free and open source reverse tunneling
service made specifically for web traffic. It's intended to be used to
temporarily expose local web servers to the greater Internet for
debugging, unit tests, demos, etc.

This is how you make your local port 8080 public:

    $ passageway 8080
    Port 8080 is now publicly accessible from http://8bv2.localtunnel.com ...

    $ passageway 8080
    Port 8080 is now publicly accessible from http://8bv2.localtunnel.com ...

Using Passageway is comparable to using SSH reverse/remote port
forwarding on a remote host that has GatewayPorts enabled, but without
all the configuration or the need of a host. The localtunnel command
works with a server component that is running on localtunnel.com,
which is provided as a free service.

If you have never run localtunnel before, you'll need to upload a public
key to authenticate. You do this once:

    $ passageway  -k ~/.ssh/id_rsa.pub 8080

After that, you shouldn't have to use -k again.

Passageway can be started before or after the local web server.   It
tunnels through to the url given in that status message "publicly
accessible from..." for as long as the command is running.  The tunnel
is closed if the command exits.

Passageway will search for the file `.localtunnel_callback` in the current
working directory.  If it exists, it will execute the file with one argument,
the public endpoint, when the tunnel is opened. This is useful for starting
other tools or processes that need the name of the endpoint.

## Contributors

    andyl (andy@r210.com)
    Charles Merriam (charles.merriam@gmail.com)
    Hunter Gillane (hunter.gillane@gmail.com)
    Michael Sofaer (msofaer@pivotallabs.com)
    Jeff Lindsay (progrium@gmail.com)

## License

MIT
