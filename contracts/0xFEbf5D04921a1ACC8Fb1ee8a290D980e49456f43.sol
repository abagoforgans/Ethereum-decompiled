contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
uint256 stor2;
mapping of struct pendingBalance;
array of address addressIndexes;
array of struct plans;

function getPendingBalance(address arg1) {
    return pendingBalance[address(arg1)].field_512
}

function addressIndexes(uint256 arg1) {
    require arg1 < addressIndexes.length
    return address(addressIndexes[arg1])
}

function plans(uint256 arg1) {
    require arg1 < plans.length
    return plans[arg1].field_0, plans[arg1].field_32
}

function getTotalBalance(address arg1) {
    return pendingBalance[address(arg1)].field_768
}

function _fallback() payable {
    revert
}

function sub_de2f93ef(?) {
    if address(stor1.length) != msg.sender:
        return 0
    plans.length++
    plans[plans.length].field_0 = arg1
    plans[plans.length].field_32 = arg2
    return (plans.length - 1)
}

function sub_bc0828b4(?) {
    if address(stor1.length) != msg.sender:
        return 0
    require not pendingBalance[address(arg1)].field_1792
    require arg3 < plans.length
    pendingBalance[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    pendingBalance[address(arg1)].field_256 = plans[arg3].field_0
    pendingBalance[address(arg1)].field_288 = plans[arg3].field_0
    pendingBalance[address(arg1)].field_512 = 0
    pendingBalance[address(arg1)].field_768 = 0
    pendingBalance[address(arg1)].field_1024 = 0
    pendingBalance[address(arg1)].field_1280 = arg4
    pendingBalance[address(arg1)].field_1536 = addressIndexes.length - 1
    pendingBalance[address(arg1)].field_1792 = 1
    addressIndexes.length++
    address(addressIndexes[addressIndexes.length]) = arg1
    emit 0x5000c0ca: arg4, arg1, arg3
    return 1
}

function sub_f98cf07c(?) {
    if address(stor1.length) != msg.sender:
        return 0
    require pendingBalance[address(arg1)].field_512 > 0
    if not pendingBalance[address(arg1)].field_512:
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args address(stor1.length), address(arg1), 0
    else:
        require pendingBalance[address(arg1)].field_512
        require 100 * 10^6 * pendingBalance[address(arg1)].field_512 / pendingBalance[address(arg1)].field_512 == 100 * 10^6
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args address(stor1.length), address(arg1), 100 * 10^6 * pendingBalance[address(arg1)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    pendingBalance[address(arg1)].field_512 = 0
    emit Payment(pendingBalance[address(arg1)].field_512, arg2, arg1);
    return 1
}

function sub_c548e0d7(?) {
    if address(stor1.length) != msg.sender:
        return 0
    require pendingBalance[address(arg1)].field_1792
    idx = 736
    s = 0
    while pendingBalance[address(arg1)].length + 704 > idx:
        mem[idx + 32] = pendingBalance[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if pendingBalance[address(arg1)].field_1536 != addressIndexes.length - 1:
        require addressIndexes.length - 1 < addressIndexes.length
        require pendingBalance[address(arg1)].field_1536 < addressIndexes.length
        address(addressIndexes[stor3[address(arg1)].field_1536]) = address(addressIndexes[addressIndexes.length])
        pendingBalance[address(stor4[stor4.length])].field_1536 = pendingBalance[address(arg1)].field_1536
    pendingBalance[address(arg1)].field_0 = 0
    if 31 < pendingBalance[address(arg1)].length:
        idx = 0
        while pendingBalance[address(arg1)].length + 31 / 32 > idx:
            pendingBalance[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    pendingBalance[address(arg1)].field_256 = 0
    pendingBalance[address(arg1)].field_288 = 0
    pendingBalance[address(arg1)].field_512 = 0
    pendingBalance[address(arg1)].field_768 = 0
    pendingBalance[address(arg1)].field_1024 = 0
    pendingBalance[address(arg1)].field_1280 = 0
    pendingBalance[address(arg1)].field_1536 = 0
    pendingBalance[address(arg1)].field_1792 = 0
    addressIndexes.length--
    if addressIndexes.length > addressIndexes.length - 1:
        idx = addressIndexes.length - 1
        while addressIndexes.length > idx:
            uint256(addressIndexes[idx]) = 0
            idx = idx + 1
            continue 
    emit 0x1d6f6174: arg2, arg1
    return 1
}

function sub_c251923e(?) {
    mem[64] = 448
    if address(stor1.length) != msg.sender:
        return 0
    require arg1 >= 0
    require arg2 > arg1
    require arg2 <= addressIndexes.length
    s = 96
    s = 0
    idx = arg1
    while idx < arg2:
        require idx < addressIndexes.length
        mem[0] = address(addressIndexes[idx])
        mem[32] = 3
        _62 = mem[64]
        mem[64] = mem[64] + 256
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(pendingBalance[address(stor4[idx])].length) + 32
        mem[_63] = pendingBalance[address(stor4[idx])].length
        mem[0] = sha3(address(addressIndexes[idx]), 3)
        mem[_63 + 32] = pendingBalance[address(stor4[idx])].field_0
        s = _63 + 32
        t = sha3(mem[0])
        while _63 + pendingBalance[address(stor4[idx])].length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_62] = _63
        _115 = mem[64]
        mem[64] = mem[64] + 64
        mem[_115] = pendingBalance[address(stor4[idx])].field_256
        mem[_115 + 32] = pendingBalance[address(stor4[idx])].field_288
        mem[_62 + 32] = _115
        mem[_62 + 64] = pendingBalance[address(stor4[idx])].field_512
        mem[_62 + 96] = pendingBalance[address(stor4[idx])].field_768
        mem[_62 + 128] = pendingBalance[address(stor4[idx])].field_1024
        mem[_62 + 160] = pendingBalance[address(stor4[idx])].field_1280
        mem[_62 + 192] = pendingBalance[address(stor4[idx])].field_1536
        mem[_62 + 224] = bool(pendingBalance[address(stor4[idx])].field_1792)
        if pendingBalance[address(stor4[idx])].field_1792:
            if pendingBalance[address(stor4[idx])].field_1024 < pendingBalance[address(stor4[idx])].field_256:
                pendingBalance[address(stor4[idx])].field_512 += pendingBalance[address(stor4[idx])].field_288
                pendingBalance[address(stor4[idx])].field_768 += pendingBalance[address(stor4[idx])].field_256
                pendingBalance[address(stor4[idx])].field_1024++
                mem[mem[64]] = arg3
                emit 0xb00f4177: arg3, stor2, address(addressIndexes[idx])
                mem[0] = address(addressIndexes[idx])
                mem[32] = 3
                if pendingBalance[address(stor4[idx])].field_1024 >= pendingBalance[address(stor4[idx])].field_256:
                    mem[0] = address(addressIndexes[idx])
                    mem[32] = 3
                    pendingBalance[address(stor4[idx])].field_1792 = 0
        s = _62
        s = address(addressIndexes[idx])
        idx = idx + 1
        continue 
    stor2++
    return 1
}



}
