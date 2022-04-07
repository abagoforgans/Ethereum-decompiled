contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 123123
    stor4 = 336 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor2 = stor3 + stor4
    return code.data[83 len 1504]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 deadline;
uint256 startTime;
uint256 saleTime;
uint256 capAmount;

function saleTime() {
    return saleTime
}

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

function changeOwner(address arg1) {
    require owner == msg.sender
    stor1 = arg1
}

function setSoftCapDeadline(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= deadline
    deadline = arg1
}

function launch(uint256 arg1) {
    require owner == msg.sender
    require eth.balance(this.address) <= 0
    capAmount = arg1
}

function setStartTime(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 >= arg1
    startTime = arg1
    deadline = arg2
}

function withdraw() {
    require owner == msg.sender
    require block.timestamp >= deadline
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp < deadline
    require eth.balance(this.address) < capAmount
    if msg.value + eth.balance(this.address) >= capAmount:
        deadline = block.timestamp
}

function claimTokens(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit logTokenTransfer(address(arg1), address(arg2), ext_call.return_data[0]);
    return 1
}



}
