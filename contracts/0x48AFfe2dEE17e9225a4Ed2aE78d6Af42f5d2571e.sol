contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
uint64 stor7;

function _fallback() payable {
    stor2 = 0
    stor5 = 0
    stor7 = 0
    require not msg.value
    mem[96 len -5355] = code.data[6171 len -5355]
    mem[64] = -5259
    stor3 = msg.sender
    stor2 = mem[96]
    if msg.sender == stor3:
        uint256(stor4[]) = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
        stor5 = uint8(stor5 + 1)
        if 31 >= stor4.length:
            stor6[stor5] = stor4.length
            idx = 0
            while stor6[stor5].length + 31 / 32 > idx:
                stor6[stor5][idx] = 0
                idx = idx + 1
                continue 
        else:
            stor6[stor5] = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
            if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                idx = 0
                while stor6[stor5].length + 31 / 32 > idx:
                    stor6[stor5][idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor6[stor5][s] = uint256(stor4[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length + 31 / 32
                while stor6[stor5].length + 31 / 32 > idx:
                    stor6[stor5][idx] = 0
                    idx = idx + 1
                    continue 
    return code.data[816 len 5355]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of struct stor1;
uint256 verificationFee;
address owner;
array of uint256 sub_64837567;
uint8 sub_a2629f9d;
array of uint256 sub_dca92315;
uint64 sub_0a2d61fc;

function sub_0a2d61fc(?) {
    return sub_0a2d61fc
}

function sub_64837567(?) {
    return uint256(sub_64837567[0 len sub_64837567.length])
}

function sub_6c7d51aa(?) {
    return bool(stor1[arg1].field_520)
}

function owner() {
    return owner
}

function sub_a2629f9d(?) {
    return sub_a2629f9d
}

function verificationFee() {
    return verificationFee
}

function sub_dca92315(?) {
    return sub_dca92315[stor5][0 len sub_dca92315[stor5].length]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function sub_d4309f4b(?) {
    if msg.sender == owner:
        verificationFee = arg1
}

function sub_5f835ebf(?) payable {
    require msg.value >= verificationFee
    stor1[arg1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor1[arg1][1][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor1[arg1].field_512 = arg2
    stor1[arg1].field_520 = 1
    stor1[arg1].field_528 = arg5
    emit Verify(arg1);
}

function sub_65487065(?) {
    mem[160] = stor0[arg1][1].field_0
    idx = 160
    s = 0
    while stor0[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1][1].length, data=mem[160 len stor0[arg1][1].length]), stor0[arg1].field_512
}

function withdraw(uint256 arg1) {
    if msg.sender == owner:
        if eth.balance(this.address) >= arg1:
            if eth.balance(this.address) > 0:
                call owner with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if eth.balance(this.address) > 0:
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}

function sub_96fa426a(?) {
    if msg.sender == owner:
        uint256(sub_64837567[]) = Array(len=arg1.length, data=arg1[all])
        sub_a2629f9d = uint8(sub_a2629f9d + 1)
        if 31 >= sub_64837567.length:
            sub_dca92315[stor5] = sub_64837567.length
            idx = 0
            while sub_dca92315[stor5].length + 31 / 32 > idx:
                sub_dca92315[stor5][idx] = 0
                idx = idx + 1
                continue 
        else:
            sub_dca92315[stor5] = Mask(255, 1, (256 * not bool(sub_64837567.length)) - 1 and sub_64837567.length) + 1
            if not Mask(255, 1, (256 * not bool(sub_64837567.length)) - 1 and sub_64837567.length):
                idx = 0
                while sub_dca92315[stor5].length + 31 / 32 > idx:
                    sub_dca92315[stor5][idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_64837567.length + 31 / 32 > idx:
                    sub_dca92315[stor5][s] = uint256(sub_64837567[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_64837567.length + 31 / 32
                while sub_dca92315[stor5].length + 31 / 32 > idx:
                    sub_dca92315[stor5][idx] = 0
                    idx = idx + 1
                    continue 
}

function sub_cb336cf3(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = stor1[arg1].length
    mem[192] = stor1[arg1].field_0
    idx = 192
    s = 0
    while stor1[arg1].length + 160 > idx:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 224
    mem[ceil32(stor1[arg1].length) + 192] = stor1[arg1][1].length
    mem[ceil32(stor1[arg1].length) + 224] = stor1[arg1][1].field_0
    idx = ceil32(stor1[arg1].length) + 224
    s = 0
    while ceil32(stor1[arg1].length) + stor1[arg1][1].length + 192 > idx:
        mem[idx + 32] = stor1[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 1
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 224] = stor1[arg1].field_512
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 320] = stor1[arg1].field_528
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 256] = 128
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 352] = stor1[arg1].length
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 384 len ceil32(stor1[arg1].length)] = mem[192 len ceil32(stor1[arg1].length)]
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 288] = stor1[arg1].length + 160
    mem[stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 384] = stor1[arg1][1].length
    mem[stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 416 len ceil32(stor1[arg1][1].length)] = mem[ceil32(stor1[arg1].length) + 224 len ceil32(stor1[arg1][1].length)]
    if not stor1[arg1][1].length % 32:
        return stor1[arg1].field_512, 
               Array(len=stor1[arg1].length, data=mem[192 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][1].length) + 384 len stor1[arg1][1].length + stor1[arg1].length + -ceil32(stor1[arg1].length) + 32]),
               stor1[arg1].length + 160,
               stor1[arg1].field_512
    mem[floor32(stor1[arg1][1].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 416] = mem[floor32(stor1[arg1][1].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + -stor1[arg1][1].length % 32 + 448 len stor1[arg1][1].length % 32]
    return stor1[arg1].field_512, 
           Array(len=stor1[arg1].length, data=mem[192 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][1].length) + 384 len floor32(stor1[arg1][1].length) + stor1[arg1].length + -ceil32(stor1[arg1].length) + 64]),
           stor1[arg1].length + 160,
           stor1[arg1].field_512
}

function sub_41b8954c(?) {
    if msg.sender == owner:
        if stor1[arg1].field_520:
            if 31 >= stor1[arg1][1].length:
                stor0[arg1].field_256 = stor1[arg1].field_256
                idx = 0
                while stor0[arg1][1].length + 31 / 32 > idx:
                    stor0[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
                stor0[arg1].field_528 = stor1[arg1].field_528
                sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
                stor1[arg1].field_0 = 0
                if 31 < stor1[arg1].length:
                    idx = 0
                    while stor1[arg1].length + 31 / 32 > idx:
                        stor1[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor1[arg1].field_256 = 0
                if 31 < stor1[arg1][1].length:
                    idx = 0
                    while stor1[arg1][1].length + 31 / 32 > idx:
                        stor1[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                stor0[arg1].field_256 = Mask(255, 1, (256 * not stor1[arg1].field_256) - 1 and stor1[arg1].field_256) + 1
                if not Mask(255, 1, (256 * not stor1[arg1].field_256) - 1 and stor1[arg1].field_256):
                    idx = 0
                    while stor0[arg1][1].length + 31 / 32 > idx:
                        stor0[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor1[arg1][1].length + 31 / 32 > idx:
                        stor0[arg1][s + 1].field_0 = stor1[arg1][idx + 1].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor1[arg1][1].length + 31 / 32
                    while stor0[arg1][1].length + 31 / 32 > idx:
                        stor0[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                stor0[arg1].field_528 = stor1[arg1].field_528
                sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
                stor1[arg1].field_0 = 0
                if 31 < stor1[arg1].length:
                    idx = 0
                    while stor1[arg1].length + 31 / 32 > idx:
                        stor1[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor1[arg1].field_256 = 0
                if 31 < stor1[arg1][1].length:
                    idx = 0
                    while stor1[arg1][1].length + 31 / 32 > idx:
                        stor1[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            stor1[arg1].field_512 = 0
            stor1[arg1].field_520 = 0
            stor1[arg1].field_528 = 0
}



}
