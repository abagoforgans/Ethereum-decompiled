contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_e78e0362;
mapping of uint8 stor2;

function jackpotSize() {
    return sub_e78e0362
}

function owner() {
    return owner
}

function sub_b4ddb371(?) {
    return bool(stor2[arg1])
}

function sub_e78e0362(?) {
    return sub_e78e0362
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function addCaller(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
}

function deleteCaller(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if bool(stor2[address(arg1)]) == 1:
        stor2[address(arg1)] = 0
}

function sub_62b686fc(?) {
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'onlyCaller methods called by non-caller.'
    call arg1 with:
       value sub_e78e0362 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e78e0362 = 0
}

function increaseJackpot(uint256 arg1) payable {
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'onlyCaller methods called by non-caller.'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    require arg1 == msg.value
    sub_e78e0362 += arg1
}



}
