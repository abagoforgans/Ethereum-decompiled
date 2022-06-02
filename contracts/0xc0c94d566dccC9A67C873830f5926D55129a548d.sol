contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalAmount;

function totalAmount() {
    return totalAmount
}

function owner() {
    return owner
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    totalAmount = msg.value
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

function sub_4445dff2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    if totalAmount < _27 * arg2.length:
        revert with 0, 'No enough ether'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    s = 0
    while arg1.length < 32 * arg1.length:
        mem[(34 * arg1.length) + (32 * arg2.length) + 256] = mem[arg1.length + 128]
        s = arg1.length + 32
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 256] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0x4347b0a9: Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 256 len (32 * arg1.length) + (32 * arg2.length) + 32]), (32 * arg1.length) + 96
}



}
