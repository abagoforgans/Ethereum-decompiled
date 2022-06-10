contract main {




// =====================  Runtime code  =====================


#
#  - sub_c1bc9c18(?)
#
const sub_10b8180c(?) = 200

const sub_7a6d3407(?) = 50


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_61faf1f0;
mapping of uint256 sub_6f8b65a4;
mapping of uint256 sub_7861d22d;
address sub_baed8b4bAddress;
address sub_3971814bAddress;
address sub_15d9c9a0Address;
address sub_df072463Address;
address sub_414504c8Address;
address sub_a1078647Address;
address sub_7cb8b159Address;
address sub_37e05b2fAddress;

function sub_15d9c9a0(?) {
    return sub_15d9c9a0Address
}

function sub_37e05b2f(?) {
    return sub_37e05b2fAddress
}

function sub_3971814b(?) {
    return sub_3971814bAddress
}

function sub_414504c8(?) {
    return sub_414504c8Address
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_61faf1f0(?) {
    return sub_61faf1f0
}

function sub_6f8b65a4(?) {
    return sub_6f8b65a4[arg1]
}

function sub_7861d22d(?) {
    return sub_7861d22d[arg1]
}

function sub_7cb8b159(?) {
    return sub_7cb8b159Address
}

function owner() {
    return owner
}

function sub_a1078647(?) {
    return sub_a1078647Address
}

function sub_baed8b4b(?) {
    return sub_baed8b4bAddress
}

function sub_df072463(?) {
    return sub_df072463Address
}

function _fallback() payable {
    revert
}

function sub_73cd95e5(?) {
    require msg.sender == owner
    sub_61faf1f0 = arg1
}

function sub_2be782bb(?) {
    require msg.sender == owner
    sub_37e05b2fAddress = arg1
}

function sub_31d8a8ac(?) {
    require msg.sender == owner
    sub_7cb8b159Address = arg1
}

function sub_a29a5c74(?) {
    require msg.sender == owner
    sub_3971814bAddress = arg1
}

function sub_a2fc8fa7(?) {
    require msg.sender == owner
    sub_414504c8Address = arg1
}

function sub_c4105627(?) {
    require msg.sender == owner
    sub_df072463Address = arg1
}

function sub_cc495e96(?) {
    require msg.sender == owner
    sub_a1078647Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
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

function sub_212c0a44(?) {
    require msg.sender == owner
    sub_baed8b4bAddress = arg1
    sub_3971814bAddress = arg2
    sub_15d9c9a0Address = arg3
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7e24ef4e(?) {
    require msg.sender == owner
    sub_df072463Address = arg1
    sub_414504c8Address = arg2
    sub_a1078647Address = arg3
    sub_7cb8b159Address = arg4
    sub_37e05b2fAddress = arg5
}

function withdrawBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
