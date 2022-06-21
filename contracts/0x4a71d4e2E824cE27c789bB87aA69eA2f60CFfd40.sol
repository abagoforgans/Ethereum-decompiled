contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_95266f70;
mapping of uint8 stor2;
array of struct stor3;
array of struct stor4;
mapping of uint256 firstBalance;
mapping of uint256 secondBalance;
address adminAddress;

function getAdmin() {
    require msg.sender == stor0
    return adminAddress
}

function firstBalance(address arg1) {
    return firstBalance[arg1]
}

function sub_95266f70(?) {
    return sub_95266f70
}

function secondBalance(address arg1) {
    return secondBalance[arg1]
}

function setAdmin(address arg1) {
    require msg.sender == stor0
    adminAddress = arg1
}

function setThreshold(uint256 arg1) {
    require msg.sender == stor0
    sub_95266f70 = arg1
}

function sub_63921870(?) {
    require msg.sender == stor0
    if stor2[address(arg1)]:
        revert with 0, 'account exist'
    stor3.length++
    address(stor3[stor3.length].field_0) = arg1
    stor2[address(arg1)] = 1
}

function sub_31ad510d(?) {
    require msg.sender == stor0
    if stor2[address(arg1)] != 1:
        revert with 0, 'parent not exist'
    stor4[address(arg1)].field_0++
    address(stor4[address(arg1)][stor4[address(arg1)].field_0].field_0) = arg2
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f6001c73(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    if stor2[address(arg1)] != 1:
        revert with 0, 'parent not exist'
    stor4[address(arg1)].field_0 = 0
    idx = 0
    while stor4[address(arg1)].field_0 > idx:
        stor4[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        mem[32] = 4
        require idx < arg2.length
        stor4[address(arg1)].field_0++
        mem[0] = sha3(address(arg1), 4)
        address(stor4[address(arg1)][stor4[address(arg1)].field_0].field_0) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_860f6022(?) {
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = address(stor3[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function sub_a18775ad(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    idx = 0
    while idx < stor3.length:
        stor4[address(stor3[idx].field_0)].field_0 = 0
        s = sha3(sha3(address(stor3[idx].field_0), 4))
        while sha3(sha3(address(stor3[idx].field_0), 4)) + stor4[address(stor3[idx].field_0)].field_0 > s:
            stor[s] = 0
            s = s + 1
            continue 
        require idx < stor3.length
        mem[0] = address(stor3[idx].field_0)
        mem[32] = 2
        stor2[address(stor3[idx].field_0)] = 0
        idx = idx + 1
        continue 
    stor3.length = 0
    idx = 0
    while stor3.length > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor3.length++
        address(stor3[stor3.length].field_0) = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_ddf8ad9e(?) {
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
        mem[(32 * stor4[address(arg1)].field_0) + 192 len floor32(stor4[address(arg1)].field_0)] = mem[128 len floor32(stor4[address(arg1)].field_0)]
        return memory
          from (32 * stor4[address(arg1)].field_0) + 128
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[128] = address(stor4[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = address(stor4[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 192 len floor32(stor4[address(arg1)].field_0)] = mem[128 len floor32(stor4[address(arg1)].field_0)]
    return Array(len=stor4[address(arg1)].field_0, data=mem[128 len floor32(stor4[address(arg1)].field_0)], mem[(32 * stor4[address(arg1)].field_0) + floor32(stor4[address(arg1)].field_0) + 192 len (32 * stor4[address(arg1)].field_0) - floor32(stor4[address(arg1)].field_0)]), 
}

function _fallback() payable {
    if stor3.length > 0:
        require stor3.length
        s = 0
        t = 0
        idx = 0
        while uint8(idx) < stor3.length:
            if stor4[address(stor3[uint8(idx)].field_0)].field_0 <= 0:
                mem[0] = address(stor3[uint8(idx)].field_0)
                mem[32] = 5
                firstBalance[address(stor3[uint8(idx)].field_0)] += msg.value / stor3.length
                s = s
                t = address(stor3[uint8(idx)].field_0)
                idx = idx + 1
                continue 
            require stor4[address(stor3[uint8(idx)].field_0)].field_0
            firstBalance[address(stor3[uint8(idx)].field_0)] = 0
            mem[0] = address(stor3[uint8(idx)].field_0)
            mem[32] = 4
            s = 0
            while uint8(s) < stor4[address(stor3[uint8(idx)].field_0)].field_0:
                require uint8(s) < stor4[address(stor3[uint8(idx)].field_0)].field_0
                secondBalance[address(stor4[address(stor3[uint8(idx)].field_0)][uint8(s)].field_0)] += (msg.value / stor3.length) + firstBalance[address(stor3[uint8(idx)].field_0)] / stor4[address(stor3[uint8(idx)].field_0)].field_0
                if sub_95266f70 <= ((msg.value / stor3.length) + firstBalance[address(stor3[uint8(idx)].field_0)] / stor4[address(stor3[uint8(idx)].field_0)].field_0) + secondBalance[address(stor4[address(stor3[uint8(idx)].field_0)][uint8(s)].field_0)]:
                    secondBalance[address(stor4[address(stor3[uint8(idx)].field_0)][uint8(s)].field_0)] = 0
                    call address(stor4[address(stor3[uint8(idx)].field_0)][uint8(s)].field_0) with:
                       value secondBalance[address(stor4[address(stor3[uint8(idx)].field_0)][uint8(s)].field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(stor3[uint8(idx)].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            s = (msg.value / stor3.length) + firstBalance[address(stor3[uint8(idx)].field_0)] / stor4[address(stor3[uint8(idx)].field_0)].field_0
            t = address(stor3[uint8(idx)].field_0)
            idx = idx + 1
            continue 
}



}
