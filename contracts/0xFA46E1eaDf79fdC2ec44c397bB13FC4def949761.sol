contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    require not msg.value
    stor1 = code.data[2803 len 20]
    stor2 = code.data[2823 len 32]
    stor3 = code.data[2823 len 32] + (24 * 3600 * code.data[2855 len 32])
    stor4 = code.data[2823 len 32] + (24 * 3600 * 2 * code.data[2855 len 32])
    stor5 = 10^18 * code.data[2887 len 32]
    return code.data[295 len 2496]
}



// =====================  Runtime code  =====================


address owner;
address LCAddress;
uint256 startTime;
uint256 endTime1;
uint256 endTime2;
uint256 tranche;

function LC() {
    return LCAddress
}

function endTime2() {
    return endTime2
}

function tranche() {
    return tranche
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function endTime1() {
    return endTime1
}

function _fallback() {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function lcBalance() {
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw2(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp > endTime2
    require ext_code.size(LCAddress)
    call LCAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
}

function withdraw1(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp > endTime1
    require arg1 <= tranche
    require ext_code.size(LCAddress)
    call LCAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    require arg1 <= tranche
    tranche -= arg1
}



}
