contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint256 stor4;
array of address stor5;

function _fallback() {
    mem[96 len -2476] = code.data[2887 len -2476]
    mem[64] = -2380
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require bool(stor0[mem[(32 * idx) + mem[96] + 140 len 20]]) != 1
        stor4++
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            s = stor5.length + sha3(5) + 1
            while sha3(5) + stor5.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor5[stor5.length] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 0
        stor0[address(mem[(32 * idx) + mem[96] + 128])] = 1
        idx = idx + 1
        continue 
    return code.data[411 len 2476]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct sub_fa2e4268;
mapping of address sub_8146e4b2;
mapping of uint8 sub_55b02b11;
uint256 sub_b72a33f2;
array of address ownerList;
array of uint256 stor6;

function isOwner(address arg1) {
    return bool(stor0[arg1])
}

function sub_55b02b11(?) {
    require sub_55b02b11[arg1] <= 2
    return sub_55b02b11[arg1]
}

function sub_8146e4b2(?) {
    return sub_8146e4b2[arg1]
}

function sub_b72a33f2(?) {
    return sub_b72a33f2
}

function sub_d67abb05(?) {
    require arg1 < stor6.length
    return sub_d67abb05[uint8(arg1)]
}

function ownerList(uint256 arg1) {
    require arg1 < ownerList.length
    return ownerList[arg1]
}

function sub_fa2e4268(?) {
    require sub_fa2e4268[arg1].field_0 <= 2
    return sub_fa2e4268[arg1].field_0, sub_fa2e4268[arg1].field_0, sub_fa2e4268[arg1].field_256
}

function _fallback() payable {
  stop
}

function sub_28732ed8(?) {
    require stor0[address(msg.sender)]
    require sub_55b02b11[arg2 << 224] <= 2
    require sub_55b02b11[arg2 << 224] != 2
    require sub_55b02b11[arg2 << 224] <= 2
    if sub_55b02b11[arg2 << 224] == 1:
        require sub_8146e4b2[arg2 << 224] != msg.sender
    require sub_55b02b11[arg2 << 224] <= 2
    if not sub_55b02b11[arg2 << 224]:
        sub_8146e4b2[arg2 << 224] = msg.sender
        sub_fa2e4268[arg2 << 224].field_0 = 2
        sub_fa2e4268[arg2 << 224].field_8 = arg1
        sub_fa2e4268[arg2 << 224].field_256 = 0
        sub_55b02b11[arg2 << 224] = 1
        stor6.length++
        if not stor6.length <= stor6.length + 1:
            idx = stor6.length + 8 / 8
            while stor6.length + 7 / 8 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor6[stor6.length.field_3].field_0 = !(test266151307() * 256^(4 * stor6.length % 8)) and stor6[stor6.length.field_3].field_0 or 256^(4 * stor6.length % 8) * arg2
    else:
        require sub_fa2e4268[arg2 << 224].field_0 <= 2
        require sub_fa2e4268[arg2 << 224].field_0 <= 2
        require 2 == sub_fa2e4268[arg2 << 224].field_0
        require arg1 == sub_fa2e4268[arg2 << 224].field_0
        require 0 == sub_fa2e4268[arg2 << 224].field_256
        sub_55b02b11[arg2 << 224] = 2
        require sub_fa2e4268[arg2 << 224].field_0 <= 2
        if not sub_fa2e4268[arg2 << 224].field_0:
            call sub_fa2e4268[arg2 << 224].field_8 with:
               value sub_fa2e4268[arg2 << 224].field_256 wei
                 gas gas_remaining - 34050 wei
        else:
            require sub_fa2e4268[arg2 << 224].field_0 <= 2
            if sub_fa2e4268[arg2 << 224].field_0 != 1:
                require sub_fa2e4268[arg2 << 224].field_0 <= 2
                if sub_fa2e4268[arg2 << 224].field_0 == 2:
                    require sub_b72a33f2 > 2
                    require bool(stor0[stor1[arg2 << 224].field_0]) != 0
                    sub_b72a33f2--
                    stor0[address(stor1[arg2 << 224].field_8)] = 0
            else:
                require bool(stor0[stor1[arg2 << 224].field_0]) != 1
                sub_b72a33f2++
                ownerList.length++
                ownerList[ownerList.length] = sub_fa2e4268[arg2 << 224].field_8
                stor0[address(stor1[arg2 << 224].field_8)] = 1
}

function sub_fc97a652(?) {
    require stor0[address(msg.sender)]
    require sub_55b02b11[arg2 << 224] <= 2
    require sub_55b02b11[arg2 << 224] != 2
    require sub_55b02b11[arg2 << 224] <= 2
    if sub_55b02b11[arg2 << 224] == 1:
        require sub_8146e4b2[arg2 << 224] != msg.sender
    require sub_55b02b11[arg2 << 224] <= 2
    if not sub_55b02b11[arg2 << 224]:
        sub_8146e4b2[arg2 << 224] = msg.sender
        sub_fa2e4268[arg2 << 224].field_0 = 1
        sub_fa2e4268[arg2 << 224].field_8 = arg1
        sub_fa2e4268[arg2 << 224].field_256 = 0
        sub_55b02b11[arg2 << 224] = 1
        stor6.length++
        if not stor6.length <= stor6.length + 1:
            idx = stor6.length + 8 / 8
            while stor6.length + 7 / 8 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor6[stor6.length.field_3].field_0 = !(test266151307() * 256^(4 * stor6.length % 8)) and stor6[stor6.length.field_3].field_0 or 256^(4 * stor6.length % 8) * arg2
    else:
        require sub_fa2e4268[arg2 << 224].field_0 <= 2
        require sub_fa2e4268[arg2 << 224].field_0 <= 2
        require 1 == sub_fa2e4268[arg2 << 224].field_0
        require arg1 == sub_fa2e4268[arg2 << 224].field_0
        require 0 == sub_fa2e4268[arg2 << 224].field_256
        sub_55b02b11[arg2 << 224] = 2
        require sub_fa2e4268[arg2 << 224].field_0 <= 2
        if not sub_fa2e4268[arg2 << 224].field_0:
            call sub_fa2e4268[arg2 << 224].field_8 with:
               value sub_fa2e4268[arg2 << 224].field_256 wei
                 gas gas_remaining - 34050 wei
        else:
            require sub_fa2e4268[arg2 << 224].field_0 <= 2
            if sub_fa2e4268[arg2 << 224].field_0 != 1:
                require sub_fa2e4268[arg2 << 224].field_0 <= 2
                if sub_fa2e4268[arg2 << 224].field_0 == 2:
                    require sub_b72a33f2 > 2
                    require bool(stor0[stor1[arg2 << 224].field_0]) != 0
                    sub_b72a33f2--
                    stor0[address(stor1[arg2 << 224].field_8)] = 0
            else:
                require bool(stor0[stor1[arg2 << 224].field_0]) != 1
                sub_b72a33f2++
                ownerList.length++
                ownerList[ownerList.length] = sub_fa2e4268[arg2 << 224].field_8
                stor0[address(stor1[arg2 << 224].field_8)] = 1
}

function sub_695c4d70(?) {
    require stor0[address(msg.sender)]
    require sub_55b02b11[arg3 << 224] <= 2
    require sub_55b02b11[arg3 << 224] != 2
    require sub_55b02b11[arg3 << 224] <= 2
    if sub_55b02b11[arg3 << 224] == 1:
        require sub_8146e4b2[arg3 << 224] != msg.sender
    require sub_55b02b11[arg3 << 224] <= 2
    if not sub_55b02b11[arg3 << 224]:
        sub_8146e4b2[arg3 << 224] = msg.sender
        sub_fa2e4268[arg3 << 224].field_0 = 0
        sub_fa2e4268[arg3 << 224].field_8 = arg1
        sub_fa2e4268[arg3 << 224].field_256 = 0
        sub_fa2e4268[arg3 << 224].field_256 = arg2
        sub_55b02b11[arg3 << 224] = 1
        stor6.length++
        if not stor6.length <= stor6.length + 1:
            idx = stor6.length + 8 / 8
            while stor6.length + 7 / 8 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor6[stor6.length.field_3].field_0 = !(test266151307() * 256^(4 * stor6.length % 8)) and stor6[stor6.length.field_3].field_0 or 256^(4 * stor6.length % 8) * arg3
    else:
        require sub_fa2e4268[arg3 << 224].field_0 <= 2
        require sub_fa2e4268[arg3 << 224].field_0 <= 2
        require 0 == sub_fa2e4268[arg3 << 224].field_0
        require arg1 == sub_fa2e4268[arg3 << 224].field_0
        require arg2 == sub_fa2e4268[arg3 << 224].field_256
        sub_55b02b11[arg3 << 224] = 2
        require sub_fa2e4268[arg3 << 224].field_0 <= 2
        if not sub_fa2e4268[arg3 << 224].field_0:
            call sub_fa2e4268[arg3 << 224].field_8 with:
               value sub_fa2e4268[arg3 << 224].field_256 wei
                 gas gas_remaining - 34050 wei
        else:
            require sub_fa2e4268[arg3 << 224].field_0 <= 2
            if sub_fa2e4268[arg3 << 224].field_0 != 1:
                require sub_fa2e4268[arg3 << 224].field_0 <= 2
                if sub_fa2e4268[arg3 << 224].field_0 == 2:
                    require sub_b72a33f2 > 2
                    require bool(stor0[stor1[arg3 << 224].field_0]) != 0
                    sub_b72a33f2--
                    stor0[address(stor1[arg3 << 224].field_8)] = 0
            else:
                require bool(stor0[stor1[arg3 << 224].field_0]) != 1
                sub_b72a33f2++
                ownerList.length++
                ownerList[ownerList.length] = sub_fa2e4268[arg3 << 224].field_8
                stor0[address(stor1[arg3 << 224].field_8)] = 1
}



}
