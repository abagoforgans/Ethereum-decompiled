contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 frozenBalanceOf;
address stor5;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenBalanceOf(address arg1) {
    return frozenBalanceOf[arg1]
}

function getBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_feeaaa25(?) {
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if arg1 <= 0:
        revert with 0, 'value must be > 0.'
    if balanceOf[stor5] + arg1 <= balanceOf[stor5]:
        revert with 0, 'data value is overflows.'
    balanceOf[stor5] += arg1
    emit 0xc6f7d8ee: arg1, stor5
    return 1
}

function sub_e549917d(?) {
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if not arg1:
        revert with 0, '_from address is not invaild.'
    if not balanceOf[address(arg1)]:
        revert with 0, '_from balance is already 0.'
    if balanceOf[stor5] + balanceOf[address(arg1)] < balanceOf[stor5]:
        revert with 0, 'data value is overflows.'
    balanceOf[stor5] += balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit Transfer(balanceOf[address(arg1)], arg1, stor5);
    return 1
}

function sub_53c92107(?) {
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender balance is too small,is not enough.'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'sender balance is too small,is not enough to pay value.'
    if not arg1:
        revert with 0, '_to address is not invaild.'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'data value is overflows.'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_c85fe59e(?) {
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender balance is too small,is not enough.'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'sender balance is too small,is not enough to pay value.'
    if not arg1:
        revert with 0, '_to address is not invaild.'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'data value is overflows.'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_24480012(?) {
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if frozenBalanceOf[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_from balance is too small,frozen value must gt zero.'
    if frozenBalanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'sender balance is too small,frozen value must gt value.'
    if not arg1:
        revert with 0, '_from address is not invaild.'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'data value is overflows.'
    frozenBalanceOf[address(arg1)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x51a986bf: arg2, arg1
    return 1
}

function sub_712635d6(?) {
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if balanceOf[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_from balance is too small,frozen value must gt zero.'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'sender balance is too small,frozen value must gt value.'
    if not arg1:
        revert with 0, '_from address is not invaild.'
    if frozenBalanceOf[address(arg1)] + arg2 < frozenBalanceOf[address(arg1)]:
        revert with 0, 'data value is overflows.'
    frozenBalanceOf[address(arg1)] += arg2
    balanceOf[address(arg1)] -= arg2
    emit 0x309dec2e: arg2, arg1
    return 1
}



}
