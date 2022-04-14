contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = block.timestamp + 329340
    stor2 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    return code.data[95 len 3698]
}



// =====================  Runtime code  =====================


const name = 'PET Etherium Token'

const decimals = 3

const symbol = 'PETET'


address stor0;
uint256 stor1;
uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalContributors;
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalContributors() {
    return totalContributors
}

function enablePurchasing() {
    require stor0 == msg.sender
    stor2 = 0
}

function disablePurchasing() {
    require stor0 == msg.sender
    stor2 = 1
}

function isIcoActive() {
    if block.timestamp < stor1:
        return block.timestamp >= stor1
    return not bool(stor2)
}

function getStats() {
    if block.timestamp < stor1:
        return totalContribution, totalSupply, totalBonusTokensIssued, block.timestamp >= stor1
    return totalContribution, totalSupply, totalBonusTokensIssued, not bool(stor2)
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

function sub_e1913c0b(?) {
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
    mem[64] = 96
    require block.timestamp >= stor1
    require not stor2
    if msg.value:
        totalContributors++
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        if 2 == totalContributors:
            totalBonusTokensIssued += 11
            if msg.value < 10^16:
                totalSupply = (101 * msg.value) + totalSupply + 11
                balanceOf[address(msg.sender)] = (101 * msg.value) + balanceOf[address(msg.sender)] + 11
                emit Transfer(((101 * msg.value) + 11), this.address, msg.sender);
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
                                                totalBonusTokensIssued += 8 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                    else:
                        if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                else:
                    if '@' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                        if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                    else:
                        if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                        else:
                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                        else:
                                            if not Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                totalSupply = (101 * msg.value) + totalContribution + totalSupply + 11
                                                balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + balanceOf[address(msg.sender)] + 11
                                                emit Transfer(((101 * msg.value) + totalContribution + 11), this.address, msg.sender);
                                            else:
                                                totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
        else:
            if var23001 < var23002:
                require var23001
                var23001 = (totalContributors / var23001) + var23001 / 2
                var23002 = var23001
                continue 
            if var28007 > var23001:
                if totalContributors <= 2:
                    if msg.value < 10^16:
                        totalSupply += 101 * msg.value
                        balanceOf[address(msg.sender)] += 101 * msg.value
                        emit Transfer((101 * msg.value), this.address, msg.sender);
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
                                                        totalBonusTokensIssued += 8 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                            else:
                                if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                        else:
                            if '@' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                            else:
                                if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    if not Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalSupply = (101 * msg.value) + totalContribution + totalSupply
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                                        emit Transfer(((101 * msg.value) + totalContribution), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                else:
                    totalBonusTokensIssued += 11
                    if msg.value < 10^16:
                        totalSupply = (101 * msg.value) + totalSupply + 11
                        balanceOf[address(msg.sender)] = (101 * msg.value) + balanceOf[address(msg.sender)] + 11
                        emit Transfer(((101 * msg.value) + 11), this.address, msg.sender);
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
                                                        totalBonusTokensIssued += 8 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                            else:
                                if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                        else:
                            if '@' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution) + 77
                                                        totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply + 88
                                                        balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)] + 88
                                                        emit Transfer(((808 * msg.value) + (8 * totalContribution) + 88), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                            else:
                                if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution) + 66
                                                        totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply + 77
                                                        balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)] + 77
                                                        emit Transfer(((707 * msg.value) + (7 * totalContribution) + 77), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution) + 55
                                                        totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply + 66
                                                        balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)] + 66
                                                        emit Transfer(((606 * msg.value) + (6 * totalContribution) + 66), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution) + 33
                                                        totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply + 44
                                                        balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)] + 44
                                                        emit Transfer(((404 * msg.value) + (4 * totalContribution) + 44), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                else:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution + 11) + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
                                                else:
                                                    if not Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                        totalSupply = (101 * msg.value) + totalContribution + totalSupply + 11
                                                        balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + balanceOf[address(msg.sender)] + 11
                                                        emit Transfer(((101 * msg.value) + totalContribution + 11), this.address, msg.sender);
                                                    else:
                                                        totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution + 11
                                                        totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply + 22
                                                        balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)] + 22
                                                        emit Transfer(((202 * msg.value) + (2 * totalContribution) + 22), this.address, msg.sender);
            else:
                require var28007
                if totalContributors % var28007:
                    var23001 = totalContributors + 1 / 2
                    var23002 = totalContributors
                    continue 
                if msg.value < 10^16:
                    totalSupply += 101 * msg.value
                    balanceOf[address(msg.sender)] += 101 * msg.value
                    emit Transfer((101 * msg.value), this.address, msg.sender);
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
                                                    totalBonusTokensIssued += 8 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (8 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                        else:
                            if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                    else:
                        if '@' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                            if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (707 * msg.value) + (7 * totalContribution)
                                                    totalSupply = (808 * msg.value) + (8 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (808 * msg.value) + (8 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((808 * msg.value) + (8 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                        else:
                            if ' ' and Mask(8, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (606 * msg.value) + (6 * totalContribution)
                                                    totalSupply = (707 * msg.value) + (7 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (707 * msg.value) + (7 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((707 * msg.value) + (7 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                            else:
                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 260, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (505 * msg.value) + (5 * totalContribution)
                                                    totalSupply = (606 * msg.value) + (6 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (606 * msg.value) + (6 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((606 * msg.value) + (6 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                else:
                                    if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 259, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 4 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (4 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                    else:
                                        if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 258, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (303 * msg.value) + (3 * totalContribution)
                                                    totalSupply = (404 * msg.value) + (4 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (404 * msg.value) + (4 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((404 * msg.value) + (4 * totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                            else:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                        else:
                                            if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 257, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                if Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalBonusTokensIssued += 2 * (101 * msg.value) + totalContribution
                                                    totalSupply = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution + (2 * (101 * msg.value) + totalContribution)), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
                                            else:
                                                if not Mask(1, -(('mask_shl', 160, 0, 93, ('var', 'hash')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('var', 'hash')), 0) - 8:
                                                    totalSupply = (101 * msg.value) + totalContribution + totalSupply
                                                    balanceOf[address(msg.sender)] = (101 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
                                                    emit Transfer(((101 * msg.value) + totalContribution), this.address, msg.sender);
                                                else:
                                                    totalBonusTokensIssued = totalBonusTokensIssued + (101 * msg.value) + totalContribution
                                                    totalSupply = (202 * msg.value) + (2 * totalContribution) + totalSupply
                                                    balanceOf[address(msg.sender)] = (202 * msg.value) + (2 * totalContribution) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((202 * msg.value) + (2 * totalContribution)), this.address, msg.sender);
}



}
