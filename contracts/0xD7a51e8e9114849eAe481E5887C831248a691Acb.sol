contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    address(stor1.field_0) = msg.sender
    uint8(stor1.field_160) = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor0 = msg.sender
    return code.data[101 len 3627]
}



// =====================  Runtime code  =====================


const name = 'Pump Token'

const decimals = 5

const symbol = 'PTK'


address owner;
uint8 stor1; offset 160
address stor1;
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

function owner() {
    return owner
}

function totalBonusTokensIssued() {
    return totalBonusTokensIssued
}

function purchasingAllowed() {
    return bool(uint8(stor1.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function enablePurchasing() {
    require address(stor1.field_0) == msg.sender
    uint8(stor1.field_160) = 1
}

function disablePurchasing() {
    require address(stor1.field_0) == msg.sender
    uint8(stor1.field_160) = 0
}

function getStats() {
    return totalContribution, totalSupply, totalBonusTokensIssued, bool(uint8(stor1.field_160))
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    totalSupply -= arg2
    emit Transfer(arg2, 0, address(stor1.field_0));
    emit Transfer(arg2, address(stor1.field_0), arg1);
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
    require address(stor1.field_0) == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor1.field_0), ext_call.return_data[0]
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
    require uint8(stor1.field_160)
    if msg.value:
        call address(stor1.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        if msg.value < 10^16:
            totalSupply += 20 * msg.value
            balanceOf[address(msg.sender)] += 20 * msg.value
            emit Transfer((20 * msg.value), this.address, msg.sender);
        else:
            hash = ripemd160hash(block.coinbase, block.number, block.timestamp) 
            require ripemd160hash.result
            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalBonusTokensIssued += 4 * 100 * msg.value
                            totalSupply = (20 * msg.value) + totalContribution + (4 * 100 * msg.value) + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + (4 * 100 * msg.value) + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution + (4 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 300 * msg.value
                            totalSupply = (320 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (320 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((320 * msg.value) + totalContribution), this.address, msg.sender);
                    else:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalBonusTokensIssued += 300 * msg.value
                            totalSupply = (320 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (320 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((320 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 2 * 100 * msg.value
                            totalSupply = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                else:
                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalBonusTokensIssued += 300 * msg.value
                            totalSupply = (320 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (320 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((320 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 2 * 100 * msg.value
                            totalSupply = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                    else:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalBonusTokensIssued += 2 * 100 * msg.value
                            totalSupply = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 100 * msg.value
                            totalSupply = (120 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (120 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((120 * msg.value) + totalContribution), this.address, msg.sender);
            else:
                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalBonusTokensIssued += 300 * msg.value
                            totalSupply = (320 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (320 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((320 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 2 * 100 * msg.value
                            totalSupply = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                    else:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalBonusTokensIssued += 2 * 100 * msg.value
                            totalSupply = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 100 * msg.value
                            totalSupply = (120 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (120 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((120 * msg.value) + totalContribution), this.address, msg.sender);
                else:
                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalBonusTokensIssued += 2 * 100 * msg.value
                            totalSupply = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + (2 * 100 * msg.value) + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution + (2 * 100 * msg.value)), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 100 * msg.value
                            totalSupply = (120 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (120 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((120 * msg.value) + totalContribution), this.address, msg.sender);
                    else:
                        if not Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            totalSupply = (20 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (20 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((20 * msg.value) + totalContribution), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += 100 * msg.value
                            totalSupply = (120 * msg.value) + totalContribution + totalSupply
                            balanceOf[address(msg.sender)] = (120 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                            emit Transfer(((120 * msg.value) + totalContribution), this.address, msg.sender);
}



}
