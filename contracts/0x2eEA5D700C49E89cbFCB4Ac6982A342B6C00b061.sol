contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 price;
uint8 pumpRate;
uint8 inviteRate; offset 8
uint8 winRate; offset 16
address mRandomUtilAddress; offset 24
address mInviteDataAddress;

function isLock() {
    return bool(uint8(stor0.field_160))
}

function getWinRate(uint8 arg1) {
    return winRate
}

function getInviteRate() {
    return inviteRate
}

function owner() {
    return owner
}

function mRandomUtil() {
    return mRandomUtilAddress
}

function mInviteData() {
    return mInviteDataAddress
}

function getPrice() {
    return price
}

function getPumpRate() {
    return pumpRate
}

function _fallback() payable {
    revert
}

function loseHandler(address arg1, uint8 arg2) {
  stop
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this function'
    if arg1:
        owner = arg1
}

function getOverRate(uint8 arg1) {
    if arg1 <= 1:
        return 50
    if arg1 <= 2:
        return 55
    if arg1 <= 3:
        return 60
    if arg1 <= 4:
        return 65
    if arg1 <= 5:
        return 70
    if arg1 > 6:
        return 80
    return 75
}

function getRandom(bytes32 arg1) {
    require ext_code.size(mRandomUtilAddress)
    call mRandomUtilAddress.0xb737ed1b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function GetAddressByName(bytes32 arg1) {
    if not mInviteDataAddress:
        return 0
    require ext_code.size(mInviteDataAddress)
    call mInviteDataAddress.0xba9d407a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function updateLock(bool arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this function'
    if arg1 == bool(uint8(stor0.field_160)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' updateLock new status == old status'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function transferToOwner() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this function'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'address must is not contract'
    if msg.sender != tx.origin:
        revert with 0, 'msg.sender must equipt tx.origin'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit transferToOwnerEvent(eth.balance(this.address));
}



}
