contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 416510 * 3600
    stor3 = 416150 * 3600
    require not msg.value
    stor0 = msg.sender
    return code.data[75 len 1407]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 deadline;
uint256 startTime;
uint256 capAmount;

function deadline() {
    return deadline
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function capAmount() {
    return capAmount
}

function acceptOwnership() {
    if stor1 == msg.sender:
        owner = stor1
}

function launch(uint256 arg1) {
    require owner == msg.sender
    capAmount = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    stor1 = arg1
}

function setSoftCapDeadline(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= deadline
    deadline = arg1
}

function setStartTime(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp < startTime
    startTime = arg1
    deadline = arg2
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp < deadline
    if eth.balance(this.address) > capAmount:
        deadline = block.timestamp - 1
}

function withdraw() {
    require owner == msg.sender
    require block.timestamp >= deadline
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function claimTokens(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit logTokenTransfer(address(arg1), address(arg2), ext_call.return_data[0]);
    return 1
}



}
