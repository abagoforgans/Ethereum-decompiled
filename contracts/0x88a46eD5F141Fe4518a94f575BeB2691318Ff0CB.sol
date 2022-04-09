contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - update(uint256 arg1)
#
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
array of address stor9;
address stor10;
uint256 sub_353d090b;
mapping of struct sub_477230b2;

function name() {
    return name[0 len name.length]
}

function sub_353d090b(?) {
    return sub_353d090b
}

function sub_477230b2(?) {
    return sub_477230b2[arg1].field_0, 
           sub_477230b2[arg1].field_256,
           sub_477230b2[arg1].field_512,
           sub_477230b2[arg1].field_768,
           sub_477230b2[arg1].field_1024
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function kill() {
    if stor10 != msg.sender:
    selfdestruct(msg.sender)
}

function sub_e624ae2e(?) payable {
  stop
}

function setOwner(address arg1) {
    if msg.sender == stor10:
        stor10 = arg1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2, uint256 arg3) {
    if msg.sender == stor10:
        sub_477230b2[address(arg1)].field_0 = stor10
        sub_477230b2[address(arg1)].field_256 = arg1
        sub_477230b2[address(arg1)].field_512 = arg2
        sub_477230b2[address(arg1)].field_768 = arg3
        sub_477230b2[address(arg1)].field_1024 = 0
}

function approve(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if msg.sender == stor10:
        sub_477230b2[address(arg1)].field_0 = stor10
        sub_477230b2[address(arg1)].field_256 = arg2
        sub_477230b2[address(arg1)].field_512 = arg3
        sub_477230b2[address(arg1)].field_768 = arg4
        sub_477230b2[address(arg1)].field_1024 = 0
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    if not balanceOf[address(arg1)]:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        require stor9.length - 1 < stor9.length
        address(stor9[stor9.length]) = arg1
    balanceOf[address(arg1)] += arg2
    return 1
}

function sub_6be28ea8(?) {
    if msg.sender == stor10:
        s = 0
        idx = 0
        while idx < stor9.length:
            mem[100] = address(stor9[idx])
            mem[132] = balanceOf[address(stor9[idx])] * arg2
            require ext_code.size(arg1)
            call arg1.transferFromOwner(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(stor9[idx]), balanceOf[address(stor9[idx])] * arg2
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            mem[0] = address(stor9[idx])
            mem[32] = 8
            balanceOf[address(stor9[idx])] = 0
            s = address(stor9[idx])
            idx = idx + 1
            continue 
}

function _fallback() payable {
    require sub_353d090b
    require sub_477230b2[address(msg.sender)].field_0
    require sub_477230b2[address(msg.sender)].field_512
    if (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) >= msg.value * sub_353d090b / 10^18:
        if balanceOf[stor10] >= msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512:
            require msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512
            sub_477230b2[address(msg.sender)].field_1024 += msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512
            require balanceOf[stor10] >= msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512
            require balanceOf[stor12[address(msg.sender)].field_256] + (msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512) >= balanceOf[stor12[address(msg.sender)].field_256]
            balanceOf[stor10] -= msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512
            if not balanceOf[stor12[address(msg.sender)].field_256]:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    idx = stor9.length + 1
                    while stor9.length > idx:
                        uint256(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                require stor9.length - 1 < stor9.length
                address(stor9[stor9.length]) = sub_477230b2[address(msg.sender)].field_256
            balanceOf[stor12[address(msg.sender)].field_256] += msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512
            require sub_353d090b
            call sub_477230b2[address(msg.sender)].field_0 with:
               value 10^18 * msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512 * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value msg.value - (10^18 * msg.value * sub_353d090b / 10^18 / sub_477230b2[address(msg.sender)].field_512 * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b) wei
                 gas 2300 * is_zero(value) wei
        else:
            require balanceOf[stor10]
            sub_477230b2[address(msg.sender)].field_1024 += balanceOf[stor10]
            require balanceOf[stor10] >= balanceOf[stor10]
            require balanceOf[stor12[address(msg.sender)].field_256] + balanceOf[stor10] >= balanceOf[stor12[address(msg.sender)].field_256]
            balanceOf[stor10] = 0
            if not balanceOf[stor12[address(msg.sender)].field_256]:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    idx = stor9.length + 1
                    while stor9.length > idx:
                        uint256(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                require stor9.length - 1 < stor9.length
                address(stor9[stor9.length]) = sub_477230b2[address(msg.sender)].field_256
            balanceOf[stor12[address(msg.sender)].field_256] += balanceOf[stor10]
            require sub_353d090b
            call sub_477230b2[address(msg.sender)].field_0 with:
               value 10^18 * balanceOf[stor10] * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value msg.value - (10^18 * balanceOf[stor10] * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b) wei
                 gas 2300 * is_zero(value) wei
    else:
        if balanceOf[stor10] >= (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512:
            require (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512
            sub_477230b2[address(msg.sender)].field_1024 += (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512
            require balanceOf[stor10] >= (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512
            require balanceOf[stor12[address(msg.sender)].field_256] + ((sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512) >= balanceOf[stor12[address(msg.sender)].field_256]
            balanceOf[stor10] -= (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512
            if not balanceOf[stor12[address(msg.sender)].field_256]:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    idx = stor9.length + 1
                    while stor9.length > idx:
                        uint256(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                require stor9.length - 1 < stor9.length
                address(stor9[stor9.length]) = sub_477230b2[address(msg.sender)].field_256
            balanceOf[stor12[address(msg.sender)].field_256] += (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512
            require sub_353d090b
            call sub_477230b2[address(msg.sender)].field_0 with:
               value 10^18 * (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512 * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value msg.value - (10^18 * (sub_477230b2[address(msg.sender)].field_768 * sub_477230b2[address(msg.sender)].field_512) - (sub_477230b2[address(msg.sender)].field_1024 * sub_477230b2[address(msg.sender)].field_512) / sub_477230b2[address(msg.sender)].field_512 * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b) wei
                 gas 2300 * is_zero(value) wei
        else:
            require balanceOf[stor10]
            sub_477230b2[address(msg.sender)].field_1024 += balanceOf[stor10]
            require balanceOf[stor10] >= balanceOf[stor10]
            require balanceOf[stor12[address(msg.sender)].field_256] + balanceOf[stor10] >= balanceOf[stor12[address(msg.sender)].field_256]
            balanceOf[stor10] = 0
            if not balanceOf[stor12[address(msg.sender)].field_256]:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    idx = stor9.length + 1
                    while stor9.length > idx:
                        uint256(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                require stor9.length - 1 < stor9.length
                address(stor9[stor9.length]) = sub_477230b2[address(msg.sender)].field_256
            balanceOf[stor12[address(msg.sender)].field_256] += balanceOf[stor10]
            require sub_353d090b
            call sub_477230b2[address(msg.sender)].field_0 with:
               value 10^18 * balanceOf[stor10] * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value msg.value - (10^18 * balanceOf[stor10] * sub_477230b2[address(msg.sender)].field_512 / sub_353d090b) wei
                 gas 2300 * is_zero(value) wei
}



}
