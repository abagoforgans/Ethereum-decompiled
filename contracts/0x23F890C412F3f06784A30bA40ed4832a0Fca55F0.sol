contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 10^18
    stor2 = 0xbc3a2d9d5cf09013fb6ed85d97b180eaf76000bd
    require not msg.value
    return code.data[191 len 628]
}



// =====================  Runtime code  =====================


address stor0;
uint256 limit;
address stor2;

function Limit() {
    return limit
}

function kill() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function withdrawal() payable {
    if msg.value >= limit:
        delegate stor2 with:
           funct (Mask(32, 224, sha3('logSendEvent()')) >> 224)
             gas gas_remaining - 25710 wei
            args 
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
