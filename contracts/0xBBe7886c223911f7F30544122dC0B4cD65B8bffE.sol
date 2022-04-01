contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor1 = code.data[646 len 20]
    stor2 = code.data[678 len 20]
    stor0 = msg.sender
    return code.data[118 len 516]
}



// =====================  Runtime code  =====================


address senderAddress;
address owner;
address minerAddress;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function miner() {
    return minerAddress
}

function sender() {
    return senderAddress
}

function owner() {
    return owner
}

function _fallback() {
    balances[stor1] += eth.balance(this.address) / 5
    balances[stor2] = eth.balance(this.address) - (eth.balance(this.address) / 5) + balances[stor2]
}

function sendPayment() {
    balances[stor1] += eth.balance(this.address) / 5
    balances[stor2] = eth.balance(this.address) - (eth.balance(this.address) / 5) + balances[stor2]
}



}
