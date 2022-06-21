contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 sub_95266f70;
uint256 stor3;
mapping of uint8 stor4;
array of struct stor5;
array of struct stor6;
mapping of uint256 firstBalance;
mapping of uint256 secondBalance;
address adminAddress;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

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
    if stor4[address(arg1)]:
        revert with 0, 'account exist'
    stor5.length++
    stor36B6[stor5.length] = arg1
    stor4[address(arg1)] = 1
}

function sub_31ad510d(?) {
    require msg.sender == stor0
    if stor4[address(arg1)] != 1:
        revert with 0, 'parent not exist'
    stor6[address(arg1)].field_0++
    address(stor6[address(arg1)][stor6[address(arg1)].field_0].field_0) = arg2
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
    if stor4[address(arg1)] != 1:
        revert with 0, 'parent not exist'
    stor6[address(arg1)].field_0 = 0
    idx = 0
    while stor6[address(arg1)].field_0 > idx:
        stor6[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        mem[32] = 6
        require idx < arg2.length
        stor6[address(arg1)].field_0++
        mem[0] = sha3(address(arg1), 6)
        address(stor6[address(arg1)][stor6[address(arg1)].field_0].field_0) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_860f6022(?) {
    require msg.sender == stor0
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = address(stor5[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function sub_a18775ad(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    idx = 0
    while idx < stor5.length:
        stor6[address(stor5[idx].field_0)].field_0 = 0
        s = sha3(sha3(address(stor5[idx].field_0), 6))
        while sha3(sha3(address(stor5[idx].field_0), 6)) + stor6[address(stor5[idx].field_0)].field_0 > s:
            stor[s] = 0
            s = s + 1
            continue 
        require idx < stor5.length
        mem[0] = address(stor5[idx].field_0)
        mem[32] = 4
        stor4[address(stor5[idx].field_0)] = 0
        idx = idx + 1
        continue 
    stor5.length = 0
    idx = 0
    while stor5.length > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor5.length++
        address(stor5[stor5.length].field_0) = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_f7ae7acf(?) {
    if adminAddress != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'need owner or admin'
    s = 0
    idx = 0
    while uint8(idx) < stor5.length:
        mem[0] = address(stor5[uint8(idx)].field_0)
        mem[32] = 6
        s = 0
        while uint8(s) < stor6[address(stor5[uint8(idx)].field_0)].field_0:
            require uint8(s) < stor6[address(stor5[uint8(idx)].field_0)].field_0
            mem[100] = address(stor6[address(stor5[uint8(idx)].field_0)][uint8(s)].field_0)
            mem[132] = stor3
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor6[address(stor5[uint8(idx)].field_0)][uint8(s)].field_0), stor3
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(stor5[uint8(idx)].field_0)
            mem[32] = 6
            s = s + 1
            continue 
        s = address(stor5[uint8(idx)].field_0)
        idx = idx + 1
        continue 
}

function sub_ddf8ad9e(?) {
    require msg.sender == stor0
    if not stor6[address(arg1)].field_0:
        mem[(32 * stor6[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor6[address(arg1)].field_0) + 160] = stor6[address(arg1)].field_0
        mem[(32 * stor6[address(arg1)].field_0) + 192 len floor32(stor6[address(arg1)].field_0)] = mem[128 len floor32(stor6[address(arg1)].field_0)]
        return memory
          from (32 * stor6[address(arg1)].field_0) + 128
           len (96 * stor6[address(arg1)].field_0) + 64
    mem[128] = address(stor6[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * stor6[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = address(stor6[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6[address(arg1)].field_0) + 192 len floor32(stor6[address(arg1)].field_0)] = mem[128 len floor32(stor6[address(arg1)].field_0)]
    return Array(len=stor6[address(arg1)].field_0, data=mem[128 len floor32(stor6[address(arg1)].field_0)], mem[(32 * stor6[address(arg1)].field_0) + floor32(stor6[address(arg1)].field_0) + 192 len (32 * stor6[address(arg1)].field_0) - floor32(stor6[address(arg1)].field_0)]), 
}

function _fallback() payable {
    if stor5.length > 0:
        require stor5.length
        s = 0
        t = 0
        idx = 0
        while uint8(idx) < stor5.length:
            if stor6[address(stor5[uint8(idx)].field_0)].field_0 <= 0:
                mem[0] = address(stor5[uint8(idx)].field_0)
                mem[32] = 7
                firstBalance[address(stor5[uint8(idx)].field_0)] += msg.value / stor5.length
                s = s
                t = address(stor5[uint8(idx)].field_0)
                idx = idx + 1
                continue 
            require stor6[address(stor5[uint8(idx)].field_0)].field_0
            firstBalance[address(stor5[uint8(idx)].field_0)] = 0
            mem[0] = address(stor5[uint8(idx)].field_0)
            mem[32] = 6
            s = 0
            while uint8(s) < stor6[address(stor5[uint8(idx)].field_0)].field_0:
                require uint8(s) < stor6[address(stor5[uint8(idx)].field_0)].field_0
                secondBalance[address(stor6[address(stor5[uint8(idx)].field_0)][uint8(s)].field_0)] += (msg.value / stor5.length) + firstBalance[address(stor5[uint8(idx)].field_0)] / stor6[address(stor5[uint8(idx)].field_0)].field_0
                if sub_95266f70 <= ((msg.value / stor5.length) + firstBalance[address(stor5[uint8(idx)].field_0)] / stor6[address(stor5[uint8(idx)].field_0)].field_0) + secondBalance[address(stor6[address(stor5[uint8(idx)].field_0)][uint8(s)].field_0)]:
                    secondBalance[address(stor6[address(stor5[uint8(idx)].field_0)][uint8(s)].field_0)] = 0
                    call address(stor6[address(stor5[uint8(idx)].field_0)][uint8(s)].field_0) with:
                       value secondBalance[address(stor6[address(stor5[uint8(idx)].field_0)][uint8(s)].field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(stor5[uint8(idx)].field_0)
                mem[32] = 6
                s = s + 1
                continue 
            s = (msg.value / stor5.length) + firstBalance[address(stor5[uint8(idx)].field_0)] / stor6[address(stor5[uint8(idx)].field_0)].field_0
            t = address(stor5[uint8(idx)].field_0)
            idx = idx + 1
            continue 
}



}
