contract main {


// =======================  Init code  ======================


address stor0;
uint64 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[136 len 16064]
}



// =====================  Runtime code  =====================


#
#  - sub_931dd80f(?)
#
const ONE_YEAR = (8784 * 24 * 3600)


address owner;
uint256 ownerBalance;
mapping of struct stor2;
mapping of struct sub_75d2c1ce;
mapping of struct stor4;
array of struct sub_f182954c;
uint64 sub_0a2d61fc;

function sub_0a2d61fc(?) {
    return sub_0a2d61fc
}

function sub_75d2c1ce(?) {
    mem[160] = sub_75d2c1ce[arg1].field_0
    idx = 160
    s = 0
    while sub_75d2c1ce[arg1].length + 128 > idx:
        mem[idx + 32] = sub_75d2c1ce[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_75d2c1ce[arg1].length, data=mem[160 len sub_75d2c1ce[arg1].length]), 
           sub_75d2c1ce[arg1].field_512,
           bool(sub_75d2c1ce[arg1].field_768),
           sub_75d2c1ce[arg1].field_768,
           sub_75d2c1ce[arg1].field_1024
}

function owner() {
    return owner
}

function ownerBalance() {
    return ownerBalance
}

function sub_f182954c(?) {
    require arg1 < sub_f182954c.length
    return sub_f182954c[arg1].field_0
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function sub_1bc0750c(?) {
    if msg.sender == owner:
        stor2[address(arg1)].field_3584 = 0
}

function sub_845e9288(?) {
    if msg.sender == owner:
        if stor2[address(arg1)].field_1288:
            stor2[address(arg1)].field_3584 = 1
}

function sub_eb9018dc(?) {
    if msg.sender == owner:
        stor2[address(arg1)].field_2048 = arg2
        stor2[address(arg1)].field_2304 = arg3
}

function sub_6c7d51aa(?) {
    if sub_75d2c1ce[arg1].field_256:
        if not sub_75d2c1ce[arg1].field_768:
            return not bool(sub_75d2c1ce[arg1].field_768)
    return bool(stor4[arg1].field_512)
}

function withdraw() {
    if msg.sender == owner:
        if ownerBalance > 0:
            ownerBalance = 0
            call owner with:
               value ownerBalance wei
                 gas 2300 * is_zero(value) wei
}

function sub_c4a2e833(?) {
    if stor2[address(msg.sender)].field_1288:
        stor2[address(msg.sender)].field_1536 = arg1
        stor2[address(msg.sender)].field_1600 = 0
        stor2[address(msg.sender)].field_1792 = arg2
        stor2[address(msg.sender)].field_1856 = 0
}

function withdrawBalance() {
    if stor2[address(msg.sender)].field_1288:
        stor2[address(msg.sender)].field_2560 = 0
        if stor2[address(msg.sender)].field_2560 > 0:
            call msg.sender with:
               value stor2[address(msg.sender)].field_2560 wei
                 gas 2300 * is_zero(value) wei
}

function sub_671e1a58(?) {
    if sub_75d2c1ce[arg1].field_768:
        mem[160] = stor4[arg1].field_0
        idx = 160
        s = 0
        while stor4[arg1].length + 128 > idx:
            mem[idx + 32] = stor4[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor4[arg1].length, data=mem[160 len stor4[arg1].length]), stor4[arg1].field_256, stor4[arg1].field_512
    mem[160] = sub_75d2c1ce[arg1].field_0
    idx = 160
    s = 0
    while sub_75d2c1ce[arg1].length + 128 > idx:
        mem[idx + 32] = sub_75d2c1ce[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_75d2c1ce[arg1].length, data=mem[160 len sub_75d2c1ce[arg1].length]), 
           sub_75d2c1ce[arg1].field_512,
           sub_75d2c1ce[arg1].field_768
}

function sub_7972200c(?) {
    if not sub_f182954c.length:
        mem[(32 * sub_f182954c.length) + 160] = 32
        mem[(32 * sub_f182954c.length) + 192] = sub_f182954c.length
        mem[(32 * sub_f182954c.length) + 224 len floor32(sub_f182954c.length)] = mem[160 len floor32(sub_f182954c.length)]
        return memory
          from (32 * sub_f182954c.length) + 160
           len (96 * sub_f182954c.length) + 64
    mem[160] = address(sub_f182954c.field_0)
    idx = 160
    s = 0
    while (32 * sub_f182954c.length) + 128 > idx:
        mem[idx + 32] = sub_f182954c[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_f182954c.length) + 224 len floor32(sub_f182954c.length)] = mem[160 len floor32(sub_f182954c.length)]
    return Array(len=sub_f182954c.length, data=mem[160 len floor32(sub_f182954c.length)], mem[(32 * sub_f182954c.length) + floor32(sub_f182954c.length) + 224 len (32 * sub_f182954c.length) - floor32(sub_f182954c.length)]), 
}

function sub_357ea141(?) {
    if msg.sender == owner:
        stor2[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor2[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor2[address(arg1)].field_512 = arg4
        stor2[address(arg1)].field_768 = 0
        stor2[address(arg1)].field_1024 = arg5
        stor2[address(arg1)].field_1280 = 0
        stor2[address(arg1)].field_1288 = 1
        stor2[address(arg1)].field_1536 = 0
        stor2[address(arg1)].field_1792 = 0
        stor2[address(arg1)].field_2048 = arg6
        stor2[address(arg1)].field_2304 = arg7
        stor2[address(arg1)].field_2560 = 0
        stor2[address(arg1)].field_2816 = 0
        stor2[address(arg1)].field_3072 = 0
        stor2[address(arg1)].field_3328 = 0
        stor2[address(arg1)].field_3584 = 0
        sub_f182954c.length++
        if not sub_f182954c.length <= sub_f182954c.length + 1:
            idx = sub_f182954c.length + 1
            while sub_f182954c.length > idx:
                sub_f182954c[idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_f182954c[sub_f182954c.length].field_0 = arg1
}

function sub_4c47629f(?) payable {
    if stor2[address(msg.sender)].field_1288:
        if msg.value <= stor2[address(msg.sender)].field_2048:
            if msg.value >= stor2[address(msg.sender)].field_2048:
                if stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_512:
                    stor2[address(msg.sender)].field_2816 = block.timestamp
                    if not stor2[address(msg.sender)].field_3584:
                        stor2[address(msg.sender)].field_1280 = 1
        else:
            ownerBalance += stor2[address(msg.sender)].field_2048
            if msg.value >= stor2[address(msg.sender)].field_2048:
                if stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_512:
                    stor2[address(msg.sender)].field_2816 = block.timestamp
                    if not stor2[address(msg.sender)].field_3584:
                        stor2[address(msg.sender)].field_1280 = 1
            if msg.value - stor2[address(msg.sender)].field_2048 > 0:
                call msg.sender with:
                   value msg.value - stor2[address(msg.sender)].field_2048 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}

function sub_b8c8590f(?) payable {
    if not sub_75d2c1ce[arg1].field_256:
        require msg.value >= stor2[address(arg4)].field_1536
        sub_75d2c1ce[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_75d2c1ce[arg1].field_512 = arg3
        sub_75d2c1ce[arg1].field_256 = 1
        sub_75d2c1ce[arg1].field_776 = arg4
    else:
        if not sub_75d2c1ce[arg1].field_768:
            require msg.value >= stor2[address(arg4)].field_1536
            sub_75d2c1ce[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            sub_75d2c1ce[arg1].field_512 = arg3
            sub_75d2c1ce[arg1].field_256 = 1
            sub_75d2c1ce[arg1].field_776 = arg4
        else:
            if sub_75d2c1ce[arg1].field_776:
                require msg.value >= stor2[address(arg4)].field_1792
                stor4[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                stor4[arg1].field_256 = arg3
                stor4[arg1].field_512 = 1
                stor4[arg1].field_520 = arg4
            else:
                require msg.value >= stor2[address(arg4)].field_1536
                sub_75d2c1ce[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                sub_75d2c1ce[arg1].field_512 = arg3
                sub_75d2c1ce[arg1].field_256 = 1
                sub_75d2c1ce[arg1].field_776 = arg4
    if stor2[address(arg4)].field_1288:
        ownerBalance += msg.value * stor2[address(arg4)].field_2304 / 100
        stor2[address(arg4)].field_2560 = stor2[address(arg4)].field_2560 + msg.value - (msg.value * stor2[address(arg4)].field_2304 / 100)
    emit 0xb9ae2c90: arg1, arg4
}

function sub_0f9e63fd(?) {
    if msg.sender == owner:
        stor2[address(arg1)].field_768 = 0
        stor2[address(arg1)].field_1280 = 0
        call arg1 with:
           value stor2[address(arg1)].field_768 - (stor2[address(arg1)].field_768 * stor2[address(arg1)].field_2304 / 100) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            ownerBalance += stor2[address(arg1)].field_768 * stor2[address(arg1)].field_2304 / 100
            require stor2[address(arg1)].field_3328 < sub_f182954c.length
            sub_f182954c[stor2[address(arg1)].field_3328].field_0 = 0
            stor2[address(arg1)].field_0 = 0
            if 31 < stor2[address(arg1)].length:
                idx = 0
                while stor2[address(arg1)].length + 31 / 32 > idx:
                    stor2[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor2[address(arg1)].field_256 = 0
            if 31 < stor2[address(arg1)][1].length:
                idx = 0
                while stor2[address(arg1)][1].length + 31 / 32 > idx:
                    stor2[address(arg1)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            stor2[address(arg1)].field_512 = 0
            stor2[address(arg1)].field_768 = 0
            stor2[address(arg1)].field_1024 = 0
            stor2[address(arg1)].field_1280 = 0
            stor2[address(arg1)].field_1288 = 0
            stor2[address(arg1)].field_1536 = 0
            stor2[address(arg1)].field_1792 = 0
            stor2[address(arg1)].field_2048 = 0
            stor2[address(arg1)].field_2304 = 0
            stor2[address(arg1)].field_2560 = 0
            stor2[address(arg1)].field_2816 = 0
            stor2[address(arg1)].field_3072 = 0
            stor2[address(arg1)].field_3328 = 0
            stor2[address(arg1)].field_3584 = 0
}

function sub_9a91a8b4(?) payable {
    if stor2[address(msg.sender)].field_1288:
        stor2[address(msg.sender)].field_768 += msg.value
        if not arg1:
            if stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_512:
                stor2[address(msg.sender)].field_768 = stor2[address(msg.sender)].field_512
                stor2[address(msg.sender)].field_3072 = block.timestamp
                if arg1:
                    stor2[address(msg.sender)].field_2816 = block.timestamp
                    ownerBalance += stor2[address(msg.sender)].field_2048
                    if not stor2[address(msg.sender)].field_3584:
                        stor2[address(msg.sender)].field_1280 = 1
                if stor2[address(msg.sender)].field_768 - stor2[address(msg.sender)].field_512 > 0:
                    call msg.sender with:
                       value stor2[address(msg.sender)].field_768 - stor2[address(msg.sender)].field_512 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_512 + stor2[address(msg.sender)].field_2048:
                stor2[address(msg.sender)].field_768 = stor2[address(msg.sender)].field_512
                stor2[address(msg.sender)].field_3072 = block.timestamp
                if arg1:
                    stor2[address(msg.sender)].field_2816 = block.timestamp
                    ownerBalance += stor2[address(msg.sender)].field_2048
                    if not stor2[address(msg.sender)].field_3584:
                        stor2[address(msg.sender)].field_1280 = 1
                if stor2[address(msg.sender)].field_768 - stor2[address(msg.sender)].field_512 - stor2[address(msg.sender)].field_2048 > 0:
                    call msg.sender with:
                       value stor2[address(msg.sender)].field_768 - stor2[address(msg.sender)].field_512 - stor2[address(msg.sender)].field_2048 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function sub_12e16467(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = stor2[address(arg1)].length
    mem[192] = stor2[address(arg1)].field_0
    idx = 192
    s = 0
    while stor2[address(arg1)].length + 160 > idx:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[64] = ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 224
    mem[ceil32(stor2[address(arg1)].length) + 192] = stor2[address(arg1)][1].length
    mem[ceil32(stor2[address(arg1)].length) + 224] = stor2[address(arg1)][1].field_0
    idx = ceil32(stor2[address(arg1)].length) + 224
    s = 0
    while ceil32(stor2[address(arg1)].length) + stor2[address(arg1)][1].length + 192 > idx:
        mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 2
    mem[ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 288] = bool(stor2[address(arg1)].field_1280)
    mem[ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 320] = stor2[address(arg1)].field_1536
    mem[ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 352] = stor2[address(arg1)].field_1792
    mem[ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 224] = 160
    mem[ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 384] = stor2[address(arg1)].length
    mem[ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 416 len ceil32(stor2[address(arg1)].length)] = mem[192 len ceil32(stor2[address(arg1)].length)]
    mem[ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 256] = stor2[address(arg1)].length + 192
    mem[stor2[address(arg1)].length + ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 416] = stor2[address(arg1)][1].length
    mem[stor2[address(arg1)].length + ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 448 len ceil32(stor2[address(arg1)][1].length)] = mem[ceil32(stor2[address(arg1)].length) + 224 len ceil32(stor2[address(arg1)][1].length)]
    if not stor2[address(arg1)][1].length % 32:
        return Array(len=stor2[address(arg1)].length, data=mem[192 len ceil32(stor2[address(arg1)].length)], mem[(2 * ceil32(stor2[address(arg1)].length)) + ceil32(stor2[address(arg1)][1].length) + 416 len stor2[address(arg1)][1].length + stor2[address(arg1)].length + -ceil32(stor2[address(arg1)].length) + 32]), 
               stor2[address(arg1)].length + 192,
               bool(stor2[address(arg1)].field_1280),
               stor2[address(arg1)].field_1536,
               stor2[address(arg1)].field_1792
    mem[floor32(stor2[address(arg1)][1].length) + stor2[address(arg1)].length + ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + 448] = mem[floor32(stor2[address(arg1)][1].length) + stor2[address(arg1)].length + ceil32(stor2[address(arg1)].length) + ceil32(stor2[address(arg1)][1].length) + -stor2[address(arg1)][1].length % 32 + 480 len stor2[address(arg1)][1].length % 32]
    return Array(len=stor2[address(arg1)].length, data=mem[192 len ceil32(stor2[address(arg1)].length)], mem[(2 * ceil32(stor2[address(arg1)].length)) + ceil32(stor2[address(arg1)][1].length) + 416 len floor32(stor2[address(arg1)][1].length) + stor2[address(arg1)].length + -ceil32(stor2[address(arg1)].length) + 64]), 
           stor2[address(arg1)].length + 192,
           bool(stor2[address(arg1)].field_1280),
           stor2[address(arg1)].field_1536,
           stor2[address(arg1)].field_1792
}

function sub_9c9b8953(?) {
    if stor2[address(msg.sender)].field_1288:
        stor2[address(msg.sender)].field_768 = 0
        stor2[address(msg.sender)].field_1280 = 0
        if block.timestamp > stor2[address(msg.sender)].field_3072 + stor2[address(msg.sender)].field_1024:
            call msg.sender with:
               value stor2[address(msg.sender)].field_768 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require stor2[address(msg.sender)].field_3328 < sub_f182954c.length
                sub_f182954c[stor2[address(msg.sender)].field_3328].field_0 = 0
                stor2[address(msg.sender)].field_0 = 0
                if 31 < stor2[address(msg.sender)].length:
                    idx = 0
                    while stor2[address(msg.sender)].length + 31 / 32 > idx:
                        stor2[address(msg.sender)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor2[address(msg.sender)].field_256 = 0
                if 31 < stor2[address(msg.sender)][1].length:
                    idx = 0
                    while stor2[address(msg.sender)][1].length + 31 / 32 > idx:
                        stor2[address(msg.sender)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                stor2[address(msg.sender)].field_512 = 0
                stor2[address(msg.sender)].field_768 = 0
                stor2[address(msg.sender)].field_1024 = 0
                stor2[address(msg.sender)].field_1280 = 0
                stor2[address(msg.sender)].field_1288 = 0
                stor2[address(msg.sender)].field_1536 = 0
                stor2[address(msg.sender)].field_1792 = 0
                stor2[address(msg.sender)].field_2048 = 0
                stor2[address(msg.sender)].field_2304 = 0
                stor2[address(msg.sender)].field_2560 = 0
                stor2[address(msg.sender)].field_2816 = 0
                stor2[address(msg.sender)].field_3072 = 0
                stor2[address(msg.sender)].field_3328 = 0
                stor2[address(msg.sender)].field_3584 = 0
        else:
            call msg.sender with:
               value stor2[address(msg.sender)].field_768 - (stor2[address(msg.sender)].field_768 * stor2[address(msg.sender)].field_2304 / 100) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                ownerBalance += stor2[address(msg.sender)].field_768 * stor2[address(msg.sender)].field_2304 / 100
                require stor2[address(msg.sender)].field_3328 < sub_f182954c.length
                sub_f182954c[stor2[address(msg.sender)].field_3328].field_0 = 0
                stor2[address(msg.sender)].field_0 = 0
                if 31 < stor2[address(msg.sender)].length:
                    idx = 0
                    while stor2[address(msg.sender)].length + 31 / 32 > idx:
                        stor2[address(msg.sender)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor2[address(msg.sender)].field_256 = 0
                if 31 < stor2[address(msg.sender)][1].length:
                    idx = 0
                    while stor2[address(msg.sender)][1].length + 31 / 32 > idx:
                        stor2[address(msg.sender)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                stor2[address(msg.sender)].field_512 = 0
                stor2[address(msg.sender)].field_768 = 0
                stor2[address(msg.sender)].field_1024 = 0
                stor2[address(msg.sender)].field_1280 = 0
                stor2[address(msg.sender)].field_1288 = 0
                stor2[address(msg.sender)].field_1536 = 0
                stor2[address(msg.sender)].field_1792 = 0
                stor2[address(msg.sender)].field_2048 = 0
                stor2[address(msg.sender)].field_2304 = 0
                stor2[address(msg.sender)].field_2560 = 0
                stor2[address(msg.sender)].field_2816 = 0
                stor2[address(msg.sender)].field_3072 = 0
                stor2[address(msg.sender)].field_3328 = 0
                stor2[address(msg.sender)].field_3584 = 0
}

function verify(uint256 arg1) {
    if stor2[address(msg.sender)].field_1288:
        if not stor2[address(msg.sender)].field_3584:
            if stor2[address(msg.sender)].field_1280:
                if stor2[address(msg.sender)].field_2816 + (8784 * 24 * 3600) > block.timestamp:
                    if not sub_75d2c1ce[arg1].field_256:
                        if sub_75d2c1ce[arg1].field_768:
                            if stor4[arg1].field_520 == msg.sender:
                                if 31 >= stor4[arg1].length:
                                    sub_75d2c1ce[arg1].field_0 = stor4[arg1].field_0
                                    idx = 0
                                    while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                        sub_75d2c1ce[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    sub_75d2c1ce[arg1].field_512 = stor4[arg1].field_256
                                    sub_75d2c1ce[arg1].field_776 = msg.sender
                                    sub_75d2c1ce[arg1].field_1024 = block.timestamp
                                    stor4[arg1].field_0 = 0
                                    if 31 < stor4[arg1].length:
                                        idx = 0
                                        while stor4[arg1].length + 31 / 32 > idx:
                                            stor4[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_75d2c1ce[arg1].field_0 = Mask(255, 1, (256 * not stor4[arg1].field_0) - 1 and stor4[arg1].field_0) + 1
                                    if not Mask(255, 1, (256 * not stor4[arg1].field_0) - 1 and stor4[arg1].field_0):
                                        idx = 0
                                        while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                            sub_75d2c1ce[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor4[arg1].length + 31 / 32 > idx:
                                            sub_75d2c1ce[arg1][s].field_0 = stor4[arg1][idx].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor4[arg1].length + 31 / 32
                                        while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                            sub_75d2c1ce[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    sub_75d2c1ce[arg1].field_512 = stor4[arg1].field_256
                                    sub_75d2c1ce[arg1].field_776 = msg.sender
                                    sub_75d2c1ce[arg1].field_1024 = block.timestamp
                                    stor4[arg1].field_0 = 0
                                    if 31 < stor4[arg1].length:
                                        idx = 0
                                        while stor4[arg1].length + 31 / 32 > idx:
                                            stor4[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                stor4[arg1].field_256 = 0
                                stor4[arg1].field_512 = 0
                                stor4[arg1].field_520 = 0
                    else:
                        if sub_75d2c1ce[arg1].field_768:
                            if sub_75d2c1ce[arg1].field_768:
                                if stor4[arg1].field_520 == msg.sender:
                                    if 31 >= stor4[arg1].length:
                                        sub_75d2c1ce[arg1].field_0 = stor4[arg1].field_0
                                        idx = 0
                                        while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                            sub_75d2c1ce[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                        sub_75d2c1ce[arg1].field_512 = stor4[arg1].field_256
                                        sub_75d2c1ce[arg1].field_776 = msg.sender
                                        sub_75d2c1ce[arg1].field_1024 = block.timestamp
                                        stor4[arg1].field_0 = 0
                                        if 31 < stor4[arg1].length:
                                            idx = 0
                                            while stor4[arg1].length + 31 / 32 > idx:
                                                stor4[arg1][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        sub_75d2c1ce[arg1].field_0 = Mask(255, 1, (256 * not stor4[arg1].field_0) - 1 and stor4[arg1].field_0) + 1
                                        if not Mask(255, 1, (256 * not stor4[arg1].field_0) - 1 and stor4[arg1].field_0):
                                            idx = 0
                                            while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                                sub_75d2c1ce[arg1][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 0
                                            while stor4[arg1].length + 31 / 32 > idx:
                                                sub_75d2c1ce[arg1][s].field_0 = stor4[arg1][idx].field_0
                                                s = s + 1
                                                idx = idx + 1
                                                continue 
                                            idx = stor4[arg1].length + 31 / 32
                                            while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                                sub_75d2c1ce[arg1][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        sub_75d2c1ce[arg1].field_512 = stor4[arg1].field_256
                                        sub_75d2c1ce[arg1].field_776 = msg.sender
                                        sub_75d2c1ce[arg1].field_1024 = block.timestamp
                                        stor4[arg1].field_0 = 0
                                        if 31 < stor4[arg1].length:
                                            idx = 0
                                            while stor4[arg1].length + 31 / 32 > idx:
                                                stor4[arg1][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    stor4[arg1].field_256 = 0
                                    stor4[arg1].field_512 = 0
                                    stor4[arg1].field_520 = 0
                        else:
                            if sub_75d2c1ce[arg1].field_776 == msg.sender:
                                sub_75d2c1ce[arg1].field_768 = 1
                                sub_75d2c1ce[arg1].field_1024 = block.timestamp
                                sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
                            else:
                                if sub_75d2c1ce[arg1].field_768:
                                    if stor4[arg1].field_520 == msg.sender:
                                        if 31 >= stor4[arg1].length:
                                            sub_75d2c1ce[arg1].field_0 = stor4[arg1].field_0
                                            idx = 0
                                            while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                                sub_75d2c1ce[arg1][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                            sub_75d2c1ce[arg1].field_512 = stor4[arg1].field_256
                                            sub_75d2c1ce[arg1].field_776 = msg.sender
                                            sub_75d2c1ce[arg1].field_1024 = block.timestamp
                                            stor4[arg1].field_0 = 0
                                            if 31 < stor4[arg1].length:
                                                idx = 0
                                                while stor4[arg1].length + 31 / 32 > idx:
                                                    stor4[arg1][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            sub_75d2c1ce[arg1].field_0 = Mask(255, 1, (256 * not stor4[arg1].field_0) - 1 and stor4[arg1].field_0) + 1
                                            if not Mask(255, 1, (256 * not stor4[arg1].field_0) - 1 and stor4[arg1].field_0):
                                                idx = 0
                                                while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                                    sub_75d2c1ce[arg1][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 0
                                                while stor4[arg1].length + 31 / 32 > idx:
                                                    sub_75d2c1ce[arg1][s].field_0 = stor4[arg1][idx].field_0
                                                    s = s + 1
                                                    idx = idx + 1
                                                    continue 
                                                idx = stor4[arg1].length + 31 / 32
                                                while sub_75d2c1ce[arg1].length + 31 / 32 > idx:
                                                    sub_75d2c1ce[arg1][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            sub_75d2c1ce[arg1].field_512 = stor4[arg1].field_256
                                            sub_75d2c1ce[arg1].field_776 = msg.sender
                                            sub_75d2c1ce[arg1].field_1024 = block.timestamp
                                            stor4[arg1].field_0 = 0
                                            if 31 < stor4[arg1].length:
                                                idx = 0
                                                while stor4[arg1].length + 31 / 32 > idx:
                                                    stor4[arg1][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        stor4[arg1].field_256 = 0
                                        stor4[arg1].field_512 = 0
                                        stor4[arg1].field_520 = 0
}



}
