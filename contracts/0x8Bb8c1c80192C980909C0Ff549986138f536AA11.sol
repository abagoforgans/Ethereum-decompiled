contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    stor3 = code.data[1779 len 20]
    return code.data[109 len 1658]
}



// =====================  Runtime code  =====================


address owner;
address adminAddress;
address proposedOwner;
address ethereumLotteryAddress;

function ethereumLottery() {
    return ethereumLotteryAddress
}

function owner() {
    return owner
}

function proposedOwner() {
    return proposedOwner
}

function admin() {
    return adminAddress
}

function destruct() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    emit Deposit(msg.value, msg.sender);
}

function setAdmin(address arg1) {
    require owner == msg.sender
    adminAddress = arg1
}

function proposeOwner(address arg1) {
    require owner == msg.sender
    proposedOwner = arg1
}

function setLottery(address arg1) {
    require owner == msg.sender
    ethereumLotteryAddress = arg1
}

function acceptOwnership() {
    require proposedOwner
    require proposedOwner == msg.sender
    owner = proposedOwner
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function administrate(uint256 arg1) {
    require ext_code.size(ethereumLotteryAddress)
    call ethereumLotteryAddress.0xea7f7a59 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function initLottery(uint256 arg1, uint256 arg2, uint256 arg3, int256 arg4) {
    if owner != msg.sender:
        require adminAddress == msg.sender
    require ext_code.size(ethereumLotteryAddress)
    call ethereumLotteryAddress.0xb105126f with:
       value arg1 wei
         gas gas_remaining - 9710 wei
        args 0, uint32(arg1), arg2, arg3, arg4
    require ext_call.success
}

function needsAdministration() {
    require ext_code.size(ethereumLotteryAddress)
    call ethereumLotteryAddress.0xf851a440 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        return 0
    require ext_code.size(ethereumLotteryAddress)
    call ethereumLotteryAddress.0xbca7e96b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
