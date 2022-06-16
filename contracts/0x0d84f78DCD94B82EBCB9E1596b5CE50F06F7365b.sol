contract main {




// =====================  Runtime code  =====================


address owner;
address crowdsaleAddress;
mapping of struct bonusPercent;

function crowdsaleAddress() {
    return crowdsaleAddress
}

function owner() {
    return owner
}

function getBonusPercent(address arg1) {
    return bonusPercent[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function setCrowdsale(address arg1) {
    require msg.sender == owner
    require arg1
    crowdsaleAddress = arg1
}

function sub_57f8f2f3(?) {
    require msg.sender == owner
    require arg1
    bonusPercent[address(arg1)].field_256 = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fc7d3e5c(?) {
    require msg.sender == owner
    require arg1
    bonusPercent[address(arg1)].field_0 = arg2
    bonusPercent[address(arg1)].field_256 = arg3
}

function recordPurchase(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleAddress
    require bonusPercent[address(arg1)].field_512 + arg2 >= bonusPercent[address(arg1)].field_512
    bonusPercent[address(arg1)].field_512 += arg2
}

function sub_75b74e4a(?) {
    require arg1
    if not bonusPercent[address(arg1)].field_256:
        return 0
    require bonusPercent[address(arg1)].field_512 + arg2 >= bonusPercent[address(arg1)].field_512
    return bonusPercent[address(arg1)].field_512 + arg2 <= bonusPercent[address(arg1)].field_256
}

function sub_4251252e(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        require address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        bonusPercent[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
        idx = idx + 1
        continue 
}

function sub_2e79bab1(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        require address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        bonusPercent[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = cd[36]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        bonusPercent[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[68]
        idx = idx + 1
        continue 
}



}
