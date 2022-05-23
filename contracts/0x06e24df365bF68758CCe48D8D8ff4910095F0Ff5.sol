contract main {




// =====================  Runtime code  =====================


#
#  - sub_5427f111(?)
#
address owner;
mapping of uint256 sub_4951d507;

function sub_4951d507(?) {
    require calldata.size - 4 >= 32
    return sub_4951d507[arg1]
}

function owner() {
    return owner
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4d539562(?) {
    call 0x53062a2cb2402919f257a3d520bbef73c3d57673 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mk_contract_address(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if 0 < arg2:
        if arg2 < 128:
            if 0 >= arg2:
                return address(sha3(Mask(184, 72, (address(arg1) << 80) + (arg2 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
            if arg2 >= 128:
                return address(sha3(Mask(184, 72, (address(arg1) << 80) + (arg2 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
            return address(sha3(Mask(184, 72, (address(arg1) << 80) + (arg2 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
    idx = 1
    s = 0
    while arg2 >= idx:
        idx = 256 * idx
        s = s + 1
        continue 
    if 0 >= arg2:
        mem[96] = (s + 214 << 248) + (address(arg1) << 80) + (s + 128 << 72) + (arg2 * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
    else:
        if arg2 >= 128:
            mem[96] = (s + 214 << 248) + (address(arg1) << 80) + (s + 128 << 72) + (arg2 * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
        else:
            mem[96] = (s + 214 << 248) + (address(arg1) << 80) + (arg2 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
    mem[128] = address(sha3(mem[96 len s + 23]))
    return memory
      from 128
       len 32
}



}
