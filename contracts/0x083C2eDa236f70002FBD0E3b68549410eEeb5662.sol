contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 sub_5745aaa6;
mapping of uint256 userEthBalances;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address beneficiaryAddress;
mapping of address gParent;

function name() {
    return name[0 len name.length]
}

function airDropList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_5745aaa6(?) {
    require calldata.size - 4 >= 32
    return sub_5745aaa6[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function userEthBalances(address arg1) {
    require calldata.size - 4 >= 32
    return userEthBalances[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function gParent(address arg1) {
    require calldata.size - 4 >= 32
    return gParent[arg1]
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setBlack(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == beneficiaryAddress
    stor8[address(arg1)] = uint8(arg2)
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if beneficiaryAddress == msg.sender:
        call arg1 with:
           value 10^18 * arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function close(address arg1) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress == msg.sender:
        stor0 = 1
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    if arg2 == 100:
        if not gParent[address(msg.sender)]:
            gParent[address(msg.sender)] = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    if arg3 == 100:
        if not gParent[address(arg1)]:
            gParent[address(arg1)] = arg2
    return 1
}

function _fallback() payable {
    require not stor0
    require not stor8[address(msg.sender)]
    if msg.value:
        if 10^14 != msg.value:
            require stor7[address(msg.sender)]
            require not userEthBalances[address(msg.sender)]
            require msg.value >= 10^17
            require msg.value <= 10 * 10^18
            sub_5745aaa6[address(msg.sender)] = block.timestamp + (720 * 24 * 3600)
            userEthBalances[address(msg.sender)] = msg.value + (30 * msg.value / 100)
            if not gParent[address(msg.sender)]:
                if not gParent[gParent[address(msg.sender)]]:
                    if not gParent[gParent[gParent[address(msg.sender)]]]:
                        if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                            if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                else:
                                    call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                       value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                            else:
                                call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                   value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                           value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                        else:
                            call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                               value 10^17 * msg.value / 10^17 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                           value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                else:
                                    call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                       value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                    else:
                        call gParent[gParent[gParent[address(msg.sender)]]] with:
                           value 2 * 10^17 * msg.value / 10^17 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                                if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                           value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                else:
                                    call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                       value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                            else:
                                call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                                   value 10^17 * msg.value / 10^17 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                           value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                else:
                    call gParent[gParent[address(msg.sender)]] with:
                       value 5 * 10^17 * msg.value / 10^17 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not gParent[gParent[gParent[address(msg.sender)]]]:
                            if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                                if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                           value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                else:
                                    call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                       value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                            else:
                                call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                                   value 10^17 * msg.value / 10^17 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                           value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                        else:
                            call gParent[gParent[gParent[address(msg.sender)]]] with:
                               value 2 * 10^17 * msg.value / 10^17 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                           value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                else:
                                    call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                                       value 10^17 * msg.value / 10^17 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                               value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
            else:
                call gParent[address(msg.sender)] with:
                   value 10^18 * msg.value / 10^17 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not gParent[gParent[address(msg.sender)]]:
                        if not gParent[gParent[gParent[address(msg.sender)]]]:
                            if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                                if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                           value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                else:
                                    call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                       value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                            else:
                                call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                                   value 10^17 * msg.value / 10^17 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                           value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                        else:
                            call gParent[gParent[gParent[address(msg.sender)]]] with:
                               value 2 * 10^17 * msg.value / 10^17 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                           value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                else:
                                    call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                                       value 10^17 * msg.value / 10^17 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                               value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                    else:
                        call gParent[gParent[address(msg.sender)]] with:
                           value 5 * 10^17 * msg.value / 10^17 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not gParent[gParent[gParent[address(msg.sender)]]]:
                                if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                                    if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                               value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                    else:
                                        call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                           value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                else:
                                    call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                                       value 10^17 * msg.value / 10^17 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                               value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                            else:
                                call gParent[gParent[gParent[address(msg.sender)]]] with:
                                   value 2 * 10^17 * msg.value / 10^17 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not gParent[gParent[gParent[gParent[address(msg.sender)]]]]:
                                        if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                            if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                       value 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                   value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                        else:
                                            call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                               value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                    else:
                                        call gParent[gParent[gParent[gParent[address(msg.sender)]]]] with:
                                           value 10^17 * msg.value / 10^17 / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]:
                                                if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                               value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                           value 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                else:
                                                    call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                       value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                            else:
                                                call gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]] with:
                                                   value 5 * 10^17 * msg.value / 10^17 / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]:
                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                       value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                   value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                               value 10^17 * msg.value / 10^17 / 1000 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                    else:
                                                        call gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]] with:
                                                           value 2 * 10^17 * msg.value / 10^17 / 1000 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]:
                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                               value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                           value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                       value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                            else:
                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]] with:
                                                                   value 10^17 * msg.value / 10^17 / 1000 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]:
                                                                        if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                   value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                               value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                    else:
                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]] with:
                                                                           value 5 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]:
                                                                                if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                else:
                                                                                    call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                       value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                            else:
                                                                                call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]] with:
                                                                                   value 2 * 10^17 * msg.value / 10^17 / 10000 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    if not gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]]:
                                                                                    else:
                                                                                        call gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[gParent[address(msg.sender)]]]]]]]]]] with:
                                                                                           value 10^17 * msg.value / 10^17 / 10000 wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
        else:
            require eth.balance(this.address) >= 1000 * 10^18
            require sub_5745aaa6[address(msg.sender)]
            require block.timestamp > sub_5745aaa6[address(msg.sender)]
            call beneficiaryAddress with:
               value userEthBalances[address(msg.sender)] / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                call msg.sender with:
                   value userEthBalances[address(msg.sender)] - (userEthBalances[address(msg.sender)] / 100) + msg.value wei
                     gas 2300 * is_zero(value) wei
                userEthBalances[address(msg.sender)] = 0
    else:
        require msg.sender
        require balanceOf[address(this.address)] >= 100
        require balanceOf[address(msg.sender)] + 100 > balanceOf[address(msg.sender)]
        balanceOf[address(this.address)] -= 100
        balanceOf[address(msg.sender)] += 100
        emit Transfer(100, this.address, msg.sender);
        require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
        if gParent[address(this.address)]:
            stor7[address(msg.sender)] = 1
        else:
            gParent[address(this.address)] = msg.sender
            stor7[address(msg.sender)] = 1
}



}
