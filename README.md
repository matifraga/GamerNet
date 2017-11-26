# GamerNet Crowdsale

Special assignment for Bitcoin course at [ITBA](https://www.itba.edu.ar) 

To try this out, follow the steps below...

## Install

To run this you first need to download testrpc and truffle, to do so run

```
$ npm install -g ethereumjs-testrpc
$ npm install -g truffle
```

Then you need to download solidity to compile the contracts, so run

```
$ npm install zeppelin-solidity
```

Once you have all this, you can open a console and run

```
$ testrpc -u 0
```

That will use a development network to try this out.

To deploy our contracts we need to build them first and then migrate them using trufle, so run

```
$ truffle compile
$ truffle migrate
```

Nice! You've deployed your (first?) contract.

Now you can open a truffle console and play arount like this

```
$ truffle console

truffle> account0 = web3.eth.accounts[0]
truffle> account1 = web3.eth.accounts[1]
truffle> crowdsaleInstance = TGCCrowdsale.at(TGCCrowdsale.address)
truffle> crowdsaleInstance.token().then(function(token) { tgc = TGCToken.at(token) })
truffle> tgc.balanceOf(account1).then(balance => balance.toString(10))
truffle> crowdsaleInstance.sendTransaction({ from: account1, value: web3.toWei(5, "ether")})
truffle> tgc.balanceOf(account1).then(balance => {myBalance = balance.toString(10)})
truffle> web3.fromWei(myBalance, "ether")
truffle> crowdsaleInstance.finalize()
```

## Credits

* [Soncini, Lucas](https://github.com/lsoncini)
* [Fraga, Matias](https://github.com/matifraga)

</br>