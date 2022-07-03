contract main {




// =====================  Runtime code  =====================


address owner_;
address sub_a286e4c7Address;
mapping of uint256 stor3;

function sub_a286e4c7(?) {
    return sub_a286e4c7Address
}

function owner_() {
    return owner_
}

function _fallback() payable {
    revert
}

function sub_b628ff8f(?) {
    if owner_ != msg.sender:
        revert with 0, 'you are not admin'
    sub_a286e4c7Address = arg1
}

function transferOwnership(address arg1) {
    if owner_ != msg.sender:
        revert with 0, 'you are not admin'
    require arg1
    emit LogOwnershipTransferred(owner_, arg1);
    owner_ = arg1
}

function sub_c7d67d60(?) {
    if sub_a286e4c7Address != msg.sender:
        if 0 < stor2.length:
            return address(stor2.field_0)
    else:
        if stor2.length:
            if block.timestamp - (block.timestamp / stor2.length * stor2.length) < stor2.length:
                return stor[('name', 'stor2', 2) + block.timestamp - (block.timestamp / stor2.length * stor2.length)].field_0
    revert
}

function sub_a33639f6(?) {
    if owner_ != msg.sender:
        revert with 0, 'you are not admin'
    if not arg1:
        revert with 0, 'address is not zero'
    if not arg2:
        revert with 0, 'address is not zero'
    if stor3[address(arg2)]:
        revert with 0, 'sorry, address already exists'
    if not stor3[address(arg1)]:
        revert with 0, 'sorry, address not exists'
    if ext_code.size(arg2):
        revert with 0, 'sorry humans only'
    require stor3[address(arg1)] < stor2.length
    stor2[stor3[address(arg1)]].field_0 = arg2
    stor3[address(arg1)] = 0
    stor3[arg2] = stor3[address(arg1)]
    emit 0xb90c0e68: arg1, arg2
}

function sub_c5298061(?) {
    require msg.sender == owner_
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function sub_4c5e99e6(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner_ != msg.sender:
        revert with 0, 'you are not admin'
    if 20 < arg1.length:
        revert with 0, 'maximum 20 addresses'
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            if not stor3[mem[(32 * idx) + 140 len 20]]:
                if not ext_code.size(mem[(32 * idx) + 128]):
                    require idx < arg1.length
                    stor2.length++
                    stor2[stor2.length].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    stor3[address(mem[(32 * idx) + 128])] = stor2.length - 1
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}



}
