contract main {




// =====================  Runtime code  =====================


#
#  - settleBet()
#
address stor0;
uint256 sub_13485ff0;
uint256 sub_10169ca4;
uint256 sub_38ecb707;
uint256 sub_eb0e81d4;
array of struct stor5;
mapping of uint8 stor6;

function sub_10169ca4(?) {
    return sub_10169ca4
}

function sub_13485ff0(?) {
    return sub_13485ff0
}

function sub_38ecb707(?) {
    return sub_38ecb707
}

function sub_eb0e81d4(?) {
    return sub_eb0e81d4
}

function _fallback() payable {
    stor6[address(msg.sender)] = 1
}

function setCroupier(address arg1) {
    if stor0 != msg.sender:
        revert with 0, 'access denied'
    stor6[address(arg1)] = 1
}

function sub_2c689404(?) {
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    sub_13485ff0 = arg1
}

function setMaxWin(uint256 arg1) {
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    sub_10169ca4 = arg1
}

function withdraw(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        revert with 0, 'access denied'
    if eth.balance(this.address) < arg2:
        revert with 0, 'no enough balance'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b2daebb7(?) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < sub_13485ff0:
        revert with 0, 'too little wager'
    if arg1.length != arg2.length:
        revert with 0, 'wrong params'
    if eth.balance(this.address) < sub_10169ca4:
        revert with 0, 'out of balance'
    idx = 0
    s = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        if mem[(32 * uint8(idx)) + 159 len 1] < 0:
            revert with 0, 'wrong index'
        if mem[(32 * uint8(idx)) + 159 len 1] >= 50:
            revert with 0, 'wrong index'
        require uint8(idx) < arg2.length
        idx = idx + 1
        s = mem[(32 * uint8(idx)) + 128]
        s = s + mem[(32 * uint8(idx)) + (32 * arg1.length) + 190 len 2]
        continue 
    require sub_13485ff0
    if msg.value / sub_13485ff0 != s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None:
        revert with 0, 'wrong bet'
    sub_38ecb707++
    stor5[stor3].field_0 = block.number
    address(stor5[stor3].field_256) = msg.sender
    stor5[stor3].field_512 = arg1.length
    if not arg1.length:
        idx = 0
        while stor5[stor3].field_512 + 31 / 32 > idx:
            uint8(stor5[stor3][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor5[stor3][2].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor5[stor3][2].field_0
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        s = sha3(sha3(sub_38ecb707, 5) + 2)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
        while stor5[stor3].field_512 + 31 / 32 > idx:
            uint8(stor5[stor3][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    stor5[stor3].field_768 = arg2.length
    if not arg2.length:
        idx = 0
        while stor5[stor3].field_768 + 15 / 16 > idx:
            uint16(stor5[stor3][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            stor5[stor3][3].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor5[stor3][3].field_0
            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
            idx = idx + 32
            continue 
        idx = floor32(arg2.length) >> 4
        s = sha3(sha3(sub_38ecb707, 5) + 3)
        while idx:
            stor[s] = !(65535 * 256^idx) and stor[s]
            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
            s = (idx + 3 / 32) + s
            continue 
        idx = (floor32(arg2.length) >> 4) + Mask(254, 1, None + -(floor32(arg2.length) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(arg2.length) >> 4) + 3) >> 1
        while stor5[stor3].field_768 + 15 / 16 > idx:
            uint16(stor5[stor3][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
}



}
