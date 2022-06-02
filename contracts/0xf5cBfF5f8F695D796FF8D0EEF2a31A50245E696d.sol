contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 privateSupply;
address stor2;

function privateSupply() {
    return privateSupply
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3d468a72(?) {
    require msg.sender == owner
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        if 10^18 * arg2 > 0:
            require ext_code.size(stor2)
            call stor2.0x6616bc90 with:
                 gas gas_remaining wei
                args address(arg1), 10^18 * arg2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x10793bff: (10^18 * arg2), msg.sender, arg1
            require privateSupply + (10^18 * arg2) >= privateSupply
            privateSupply += 10^18 * arg2
}



}
