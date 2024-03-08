Run `docker run -it devopsdockeruh/pull_exercise`.

The command will wait for your input.

Navigate through the Docker hub to find the docs and Dockerfile that was used to create the image.

Read the Dockerfile and/or docs to learn what input will get the application to answer a "secret message".

Submit the secret message and command(s) given to get it as your answer.

```sh
$ docker run -it devopsdockeruh/pull_exercise sh
Unable to find image 'devopsdockeruh/pull_exercise:latest' locally
latest: Pulling from devopsdockeruh/pull_exercise
8e402f1a9c57: Pull complete 
5e2195587d10: Pull complete 
6f595b2fc66d: Pull complete 
165f32bf4e94: Pull complete 
67c4f504c224: Pull complete 
Digest: sha256:7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f
Status: Downloaded newer image for devopsdockeruh/pull_exercise:latest
/usr/app # ls /usr/
app/    bin/    lib/    local/  sbin/   share/
/usr/app # ls /usr/app/
.git/       Dockerfile  README.md   index.js
/usr/app # ls /usr/app/index.js 
/usr/app/index.js
/usr/app # cat /usr/app/index.js 
const readline = require('readline')

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

const close = (version) => () => {
  const message = {
    "close": "Closing now",
    "exit": "Exiting now",
    "quit": "Quitting now",
    "empty": "Empty string was given, quitting now. Input help for more info"
  }
  console.log(message[version])
  return false
}

const help = () => () => {
  console.log('Input exit to exit, quit to quit or close to close. You can also give empty string to quit')
  return true
}

const victory = () => () => {
  console.log('You found the correct password. Secret message is:\n"This is the secret message"')
  return false
}

const KNOWN_INPUTS = {
  "exit": close('exit'),
  "close": close('close'),
  "quit": close('quit'),
  "": close('empty'),
  "help": help(),
  "basics": victory()
}


const handlePassword = (password) => {
  const keepGoing = KNOWN_INPUTS[password.toLowerCase()]
  if (keepGoing === undefined) {
    console.log(`${password} is not the correct password, please try again`)
    return true
  }
  return keepGoing()
}

const askPassword = () => new Promise(resolve => rl.question('Give me the password: ', (p) => resolve(p)))

const passwordLoop = async () => {
  let keepAsking = true
  while (keepAsking) {
    const password = await askPassword()
    keepAsking = handlePassword(password)
    console.log('')
  }
  rl.close()
}

passwordLoop()
/usr/app # 
$ docker run -it devopsdockeruh/pull_exercise
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

From the [DockerFile](https://hub.docker.com/layers/devopsdockeruh/pull_exercise/latest/images/sha256-7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f?context=explore) `/usr/app/index.js` is noted and simply running the image with `sh` and listing it's contents revealed the password as `basics` and the secret message to be `This is the secret message`.
