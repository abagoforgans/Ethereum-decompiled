contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor3 = 2 * 10^15
    stor4 = 2 * 10^10
    stor8 = 0
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[89 len 2025]
}



// =====================  Runtime code  =====================


address owner;
address publisherAddress;
address sub_6b633568Address;
uint256 fee;
uint256 sub_eae04149;
uint256 sub_7751a7d2;
uint256 sub_ce56f84a;
uint256 sub_d7502942;
uint256 stor8;
uint8 isActive;

function isActive() {
    return bool(isActive)
}

function getGasPrice() {
    return sub_eae04149
}

function sub_6b633568(?) {
    return sub_6b633568Address
}

function sub_7751a7d2(?) {
    return sub_7751a7d2
}

function publisher() {
    return publisherAddress
}

function owner() {
    return owner
}

function sub_ce56f84a(?) {
    return sub_ce56f84a
}

function getFee() {
    return fee
}

function sub_d7502942(?) {
    return sub_d7502942
}

function fee() {
    return fee
}

function sub_eae04149(?) {
    return sub_eae04149
}

function sub_a263a81c(?) {
  stop
}

function _fallback() payable {
    revert 
}

function activate() {
    require owner == msg.sender
    isActive = 1
}

function getPrice(uint256 arg1) {
    return ((arg1 * sub_eae04149) + fee)
}

function sub_fc903d1c(?) {
    require owner == msg.sender
    sub_d7502942 = arg1
}

function updateOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_de899b1a(?) {
    require owner == msg.sender
    sub_6b633568Address = arg1
}

function setPublisher(address arg1) {
    require owner == msg.sender
    publisherAddress = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
}

function deactivate() {
    if owner != msg.sender:
        if sub_6b633568Address != msg.sender:
            require publisherAddress == msg.sender
    isActive = 0
}

function setFee(uint256 arg1) {
    require owner == msg.sender
    if arg1 > fee:
        require block.timestamp - sub_ce56f84a >= 24 * 3600
        sub_ce56f84a = block.timestamp
        require arg1 <= 2 * fee
    fee = arg1
}

function setGasPrice(uint256 arg1) {
    require owner == msg.sender
    if arg1 > sub_eae04149:
        require block.timestamp - sub_7751a7d2 >= 24 * 3600
        sub_7751a7d2 = block.timestamp
        require arg1 <= 2 * sub_eae04149
    sub_eae04149 = arg1
}

function sub_df5c1571(?) payable {
    require msg.value >= fee
    require arg1 <= arg2
    require isActive
    require sub_eae04149
    stor8++
    emit 0x8d8f4fad: arg3, arg4, arg1, arg2, stor8 + 1, msg.value - fee / sub_eae04149, sub_d7502942, sha3(address(msg.sender), address(arg3), arg4, arg1, arg2, stor8 + 1, msg.value - fee / sub_eae04149, sub_d7502942, block.number, block.timestamp), msg.sender
    return sha3(address(msg.sender), address(arg3), arg4, arg1, arg2, stor8 + 1, msg.value - fee / sub_eae04149, sub_d7502942, block.number, block.timestamp)
}



}
