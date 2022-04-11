contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    return code.data[81 len 3522]
}



// =====================  Runtime code  =====================


const name = 'Worthless Ethereum Token'

const decimals = 18

const symbol = 'WET'


uint8 purchasingAllowed; offset 160
address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalContribution;
uint256 totalBonusTokensIssued;
uint256 totalSupply;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalBonusTokensIssued() {
    return totalBonusTokensIssued
}

function purchasingAllowed() {
    return bool(purchasingAllowed)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function enablePurchasing() {
    require stor0 == msg.sender
    purchasingAllowed = 1
}

function disablePurchasing() {
    require stor0 == msg.sender
    purchasingAllowed = 0
}

function getStats() {
    return totalContribution, totalSupply, totalBonusTokensIssued, bool(purchasingAllowed)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require purchasingAllowed
    if msg.value:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        if msg.value < 10^16:
            totalSupply += 100 * msg.value
            balanceOf[address(msg.sender)] += 100 * msg.value
            emit Transfer((100 * msg.value), this.address, msg.sender);
        else:
            hash = ripemd160hash(block.coinbase, block.number, block.timestamp) 
            require ripemd160hash.result
            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 263, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                if '@' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                    if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 8 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (8 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (8 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (8 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                    else:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                else:
                    if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                    else:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
            else:
                if '@' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                    if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 700 * msg.value
                                            totalSupply = (800 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (800 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((800 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                    else:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
                else:
                    if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 600 * msg.value
                                            totalSupply = (700 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (700 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((700 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
                    else:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 500 * msg.value
                                            totalSupply = (600 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (600 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((600 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 4 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 300 * msg.value
                                            totalSupply = (400 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (400 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((400 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalBonusTokensIssued += 2 * 100 * msg.value
                                            totalSupply = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
                                    else:
                                        if not Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            totalSupply = (100 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (100 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((100 * msg.value) + totalContribution), this.address, msg.sender);
                                        else:
                                            totalBonusTokensIssued += 100 * msg.value
                                            totalSupply = (200 * msg.value) + totalContribution + totalSupply
                                            balanceOf[address(msg.sender)] = (200 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                            emit Transfer(((200 * msg.value) + totalContribution), this.address, msg.sender);
}



}
