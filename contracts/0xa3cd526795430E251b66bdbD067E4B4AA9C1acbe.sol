contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = stor0
    stor2 = 0
    return code.data[210 len 753]
}



// =====================  Runtime code  =====================


address stor0;
array of address stor1;
uint256 stor2;

function _fallback() {
  stop
}

function setMaster(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function withdrawFee() {
    if stor0 != msg.sender:
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function join() payable {
    require msg.value >= 10^17
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = msg.sender
    if 1 == bool(stor1.length):
        require stor2 < stor1.length
        stor2++
        call address(stor1[stor2]) with:
           value 5 * 10^13 * 3600 wei
             gas 0 wei
    emit 0x7073afa6: msg.sender
    if msg.value > 10^17:
        call msg.sender with:
           value msg.value - 10^17 wei
             gas 2300 * is_zero(value) wei
}



}
