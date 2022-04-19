contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2284 len 20]
    return code.data[104 len 2168]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint256 stor2;
array of struct stor3;
uint8 stor4;
uint256 block;
uint256 stor6; offset 1
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;

function getBlock() {
    return block
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_e5da03ea(?) {
    if stor0 == msg.sender:
        stor1 = arg2
        stor0 = arg1
}

function isListed(address arg1) {
    if not stor3.length:
        return 0
    require stor2[address(arg1)] < stor3.length
    return (stor3[stor2[address(arg1)]].field_0 == arg1)
}

function getAmount() {
    if not stor3.length:
        stor7 = 0
    else:
        if bool(stor3.length) != 1:
            uint256(stor6.field_0) = stor3.length
        else:
            uint256(stor6.field_0) = stor3.length + 1
        require uint256(stor6.field_0)
        require uint255(stor6.field_1)
        stor7 = eth.balance(this.address) - (eth.balance(this.address) % uint256(stor6.field_0)) / uint255(stor6.field_1)
    return stor7
}

function getList() {
    if not stor3.length:
        mem[(32 * stor3.length) + 160] = 32
        mem[(32 * stor3.length) + 192] = stor3.length
        mem[(32 * stor3.length) + 224 len floor32(stor3.length)] = mem[160 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 160
           len (96 * stor3.length) + 64
    mem[160] = address(stor3.field_0)
    idx = 160
    s = 0
    while (32 * stor3.length) + 128 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 224 len floor32(stor3.length)] = mem[160 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[160 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 224 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function deposit() payable {
    if not stor3.length:
        if msg.value < 25 * 10^15:
            stor4 = 0
        else:
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor3[stor3.length].field_0 = msg.sender
            stor2[address(msg.sender)] = stor3.length
            stor4 = 1
    else:
        require stor2[address(msg.sender)] < stor3.length
        if stor3[stor2[address(msg.sender)]].field_0 == msg.sender:
            stor4 = 0
        else:
            if msg.value < 25 * 10^15:
                stor4 = 0
            else:
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length + 1
                    while stor3.length > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor3[stor3.length].field_0 = msg.sender
                stor2[address(msg.sender)] = stor3.length
                stor4 = 1
    emit 0xac1c8f89: msg.value, bool(stor4)
}

function _fallback() payable {
    if not stor3.length:
        if msg.value < 25 * 10^15:
            stor4 = 0
        else:
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor3[stor3.length].field_0 = msg.sender
            stor2[address(msg.sender)] = stor3.length
            stor4 = 1
    else:
        require stor2[address(msg.sender)] < stor3.length
        if stor3[stor2[address(msg.sender)]].field_0 == msg.sender:
            stor4 = 0
        else:
            if msg.value < 25 * 10^15:
                stor4 = 0
            else:
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length + 1
                    while stor3.length > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor3[stor3.length].field_0 = msg.sender
                stor2[address(msg.sender)] = stor3.length
                stor4 = 1
    emit 0xac1c8f89: msg.value, bool(stor4)
}

function sub_52838ab4(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    block = block.number
    stor8 = 25 * 10^14 * arg1.length
    stor9 = 25 * 10^14 * stor3.length
    stor10 = eth.balance(this.address) - (25 * 10^14 * arg1.length) - (25 * 10^14 * stor3.length)
    require arg1.length
    require arg1.length
    stor11 = stor10 - (stor10 % arg1.length) / arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value stor11 wei
             gas 2300 * is_zero(value) wei
        stor12 = uint8(bool(ext_call.success))
        require idx < stor3.length
        mem[0] = stor3[idx].field_0
        mem[32] = 2
        stor2[stor3[idx].field_0] = 0
        idx = idx + 1
        continue 
    stor3.length = 0
    idx = 0
    while stor3.length > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit 0xea0a5363: stor11, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 224 len (32 * arg1.length) - floor32(arg1.length)])
    call stor1 with:
       value stor9 wei
         gas 2300 * is_zero(value) wei
    call stor0 with:
       value stor8 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success), bool(ext_call.success), bool(stor12)
}



}
