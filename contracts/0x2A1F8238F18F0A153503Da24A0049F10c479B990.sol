contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 8
    stor4.length.field_8 = 'POWToken' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'POW' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 11 * 10^10
    require not msg.value
    stor1 = stor7
    stor0[address(msg.sender)] = stor7
    stor3 = block.timestamp + (26208 * 24 * 3600)
    stor9 = msg.sender
    stor8 = 300000
    return code.data[656 len 4059]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint256 endTime;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint256 price;
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require msg.value < 1
    if totalSupply < 10^10:
        if totalSupply + 10^10 >= totalSupply:
            totalSupply += 10^10
            if balanceOf[address(arg1)] + 10^10 >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] += 10^10
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if totalSupply < 2 * 10^10:
            if totalSupply + 10^9 >= totalSupply:
                totalSupply += 10^9
                if balanceOf[address(arg1)] + 10^9 >= balanceOf[address(arg1)]:
                    balanceOf[address(arg1)] += 10^9
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
        else:
            if totalSupply < 3 * 10^10:
                if totalSupply + 10 * 10^6 >= totalSupply:
                    totalSupply += 10 * 10^6
                    if balanceOf[address(arg1)] + 10 * 10^6 >= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] += 10 * 10^6
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                if totalSupply < 4 * 10^10:
                    if totalSupply + 10^6 >= totalSupply:
                        totalSupply += 10^6
                        if balanceOf[address(arg1)] + 10^6 >= balanceOf[address(arg1)]:
                            balanceOf[address(arg1)] += 10^6
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                else:
                    if totalSupply < 5 * 10^10:
                        if totalSupply + 100000 >= totalSupply:
                            totalSupply += 100000
                            if balanceOf[address(arg1)] + 100000 >= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)] += 100000
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                    else:
                        if totalSupply < 6 * 10^10:
                            if totalSupply + 10000 >= totalSupply:
                                totalSupply += 10000
                                if balanceOf[address(arg1)] + 10000 >= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)] += 10000
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                        else:
                            if totalSupply < 7 * 10^10:
                                if totalSupply + 1000 >= totalSupply:
                                    totalSupply += 1000
                                    if balanceOf[address(arg1)] + 1000 >= balanceOf[address(arg1)]:
                                        balanceOf[address(arg1)] += 1000
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                            else:
                                if totalSupply < 8 * 10^10:
                                    if totalSupply + 100 >= totalSupply:
                                        totalSupply += 100
                                        if balanceOf[address(arg1)] + 100 >= balanceOf[address(arg1)]:
                                            balanceOf[address(arg1)] += 100
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                else:
                                    if totalSupply < 25 * 10^6 * 3600:
                                        if totalSupply + 10 >= totalSupply:
                                            totalSupply += 10
                                            if balanceOf[address(arg1)] + 10 >= balanceOf[address(arg1)]:
                                                balanceOf[address(arg1)] += 10
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                    else:
                                        if totalSupply >= 10^11:
                                            if balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                        else:
                                            if totalSupply + 1 >= totalSupply:
                                                totalSupply++
                                                if balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]:
                                                    balanceOf[address(arg1)]++
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
    revert 
}

function _fallback() payable {
    require block.timestamp < endTime
    require msg.value < 1
    if totalSupply < 10^10:
        if totalSupply + 10^10 >= totalSupply:
            totalSupply += 10^10
            if balanceOf[address(msg.sender)] + 10^10 >= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] += 10^10
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if totalSupply < 2 * 10^10:
            if totalSupply + 10^9 >= totalSupply:
                totalSupply += 10^9
                if balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] += 10^9
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
        else:
            if totalSupply < 3 * 10^10:
                if totalSupply + 10 * 10^6 >= totalSupply:
                    totalSupply += 10 * 10^6
                    if balanceOf[address(msg.sender)] + 10 * 10^6 >= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += 10 * 10^6
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                if totalSupply < 4 * 10^10:
                    if totalSupply + 10^6 >= totalSupply:
                        totalSupply += 10^6
                        if balanceOf[address(msg.sender)] + 10^6 >= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] += 10^6
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                else:
                    if totalSupply < 5 * 10^10:
                        if totalSupply + 100000 >= totalSupply:
                            totalSupply += 100000
                            if balanceOf[address(msg.sender)] + 100000 >= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] += 100000
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                    else:
                        if totalSupply < 6 * 10^10:
                            if totalSupply + 10000 >= totalSupply:
                                totalSupply += 10000
                                if balanceOf[address(msg.sender)] + 10000 >= balanceOf[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] += 10000
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                        else:
                            if totalSupply < 7 * 10^10:
                                if totalSupply + 1000 >= totalSupply:
                                    totalSupply += 1000
                                    if balanceOf[address(msg.sender)] + 1000 >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += 1000
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                            else:
                                if totalSupply < 8 * 10^10:
                                    if totalSupply + 100 >= totalSupply:
                                        totalSupply += 100
                                        if balanceOf[address(msg.sender)] + 100 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 100
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                else:
                                    if totalSupply < 25 * 10^6 * 3600:
                                        if totalSupply + 10 >= totalSupply:
                                            totalSupply += 10
                                            if balanceOf[address(msg.sender)] + 10 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 10
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                    else:
                                        if totalSupply >= 10^11:
                                            if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                        else:
                                            if totalSupply + 1 >= totalSupply:
                                                totalSupply++
                                                if balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]:
                                                    balanceOf[address(msg.sender)]++
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
    revert 
}



}
