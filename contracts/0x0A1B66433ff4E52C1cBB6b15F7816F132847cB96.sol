contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;

function kill() {
    selfdestruct(stor0)
}

function payToContract() payable {
  stop
}

function _fallback() payable {
    revert
}



}
