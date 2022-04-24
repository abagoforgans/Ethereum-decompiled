contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = 200000
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[1221 len 20] > 0
    stor1 = code.data[1221 len 20]
    return code.data[153 len 1056]
}



// =====================  Runtime code  =====================


address owner;
address targetContractAddress;
uint256 buyGasLimit;
uint8 stor3;
uint256 totalWeiVolume;

function totalWeiVolume() {
    return totalWeiVolume
}

function buyGasLimit() {
    return buyGasLimit
}

function stopped() {
    return bool(stor3)
}

function owner() {
    return owner
}

function targetContract() {
    return targetContractAddress
}

function resume() {
    require owner == msg.sender
    require stor3
    stor3 = 0
}

function stop() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function changeGasLimit(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    buyGasLimit = arg1
}

function changeTargetAddress(address arg1) {
    require owner == msg.sender
    require arg1 > 0
    targetContractAddress = arg1
}

function _fallback() payable {
    require msg.value > 0
    require not stor3
    totalWeiVolume += msg.value
    require ext_code.size(targetContractAddress)
    call targetContractAddress.0xf088d547 with:
       value msg.value wei
         gas buyGasLimit wei
        args msg.sender
    require ext_call.success
}



}
