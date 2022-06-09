contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor1 = 0x7e3cb5dc6ef37259eb95ebad983a88789e95c70b
    stor2 = 430120 * 3600
    address(stor0.field_0) = msg.sender
    return code.data[202 len 4001]
}



// =====================  Runtime code  =====================


const name = 'Intelligence Chain Token in Lock'

const decimals = 18

const symbol = 'ICTL'

const token = 0x283640b9a2bba66a294c9b19cc4404cafd35c7cc


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address targetAddress;
uint256 unlockTime;

function unlockTime() {
    return unlockTime
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function getUnlockTime() {
    return unlockTime
}

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function getTarget() {
    return targetAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function balanceOf(address arg1) {
    if arg1 != targetAddress:
        return 0
    require ext_code.size(0x283640b9a2bba66a294c9b19cc4404cafd35c7cc)
    call 0x283640b9a2bba66a294c9b19cc4404cafd35c7cc.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function send(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    require ext_code.size(0x283640b9a2bba66a294c9b19cc4404cafd35c7cc)
    call 0x283640b9a2bba66a294c9b19cc4404cafd35c7cc.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(0x283640b9a2bba66a294c9b19cc4404cafd35c7cc)
    call 0x283640b9a2bba66a294c9b19cc4404cafd35c7cc.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require block.timestamp > unlockTime
    if owner != msg.sender:
        require msg.sender == targetAddress
    require ext_code.size(0x283640b9a2bba66a294c9b19cc4404cafd35c7cc)
    call 0x283640b9a2bba66a294c9b19cc4404cafd35c7cc.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(0x283640b9a2bba66a294c9b19cc4404cafd35c7cc)
    call 0x283640b9a2bba66a294c9b19cc4404cafd35c7cc.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args targetAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}
