contract main {




// =====================  Runtime code  =====================


#
#  - sub_ca1a70be(?)
#
const sub_8b582712(?) = 'short_desc'

const sub_ac5c6e12(?) = 'long_desc'

const sub_b07b3c78(?) = 'update_confirm'

const sub_d30f6e20(?) = 'update'

const MAX_MINTABLE = 'max_mintable'

const AMOUNT = 'amount'


address owner;
array of uint256 stor99;

function owner() {
    return owner
}

function sub_f65a5c1b(?) {
    return stor[_74][0 len stor[_74].length]
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
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ed3487fe(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = 1
    _24 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 192] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 192] = _24
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][] = Array(len=arg3.length, data=arg3[all])
}



}
