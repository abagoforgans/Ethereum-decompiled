contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xa019729ce49fbb45ab0df78962c2d4cd60b45c60
    return code.data[70 len 302]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    if eth.balance(this.address) > 0:
        call stor0 with:
             gas 0 wei
    else:
        if stor1 == msg.sender:
            selfdestruct(stor1)
        if stor0 == msg.sender:
            call stor0 with:
                 gas 0 wei
        else:
            if msg.value >= eth.balance(this.address):
                call msg.sender with:
                     gas 0 wei
            if bool(sha3(block.timestamp) + sha3(gas_remaining)):
                call msg.sender with:
                     gas 0 wei
}



}
