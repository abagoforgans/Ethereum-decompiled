contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0 = 0x46feeb381e90f7e30635b4f33ce3f6fa8ea6ed9b
    stor2 = 1000000000000000001
    stor3 = 0x4aebf5e0c47a6e1f4c4ffb5dd0cfbf675f0d5b19
    require not msg.value
    return code.data[210 len 1161]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 limit;
address stor3;

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

function changeOwner(address arg1) {
  stop
}

function logEvent() payable {
    stor1 = this.address
}

function Update(address arg1, uint256 arg2) {
    require msg.sender == stor0
    limit = arg2
    stor3 = arg1
}

function withdrawal() payable {
    stor1 = msg.sender
    if msg.value > limit:
        delegate stor3 with:
           funct (Mask(32, 224, sha3('logEvent()')) >> 224)
             gas gas_remaining - 710 wei
            args 
        require delegate.return_code
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
