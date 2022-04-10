contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor1 = 10^16
    stor2 = 0xdaacea0a84dd973f389f57a724223f9255903aa0
    stor3 = 0xe4d1fba4e14864a226a4ac1a054814f63e2ddddf
    stor4 = 0x7413f90ac41e37f91ae55c1d757b19d3db53964d
    stor5 = 4020400
    stor6 = 4026160
    return code.data[386 len 9085]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


address owner;
uint256 crowdfundingTarget;
address staAddress;
address stbAddress;
address beneficiaryAddress;
uint256 icoStartBlock;
uint256 icoEndBlock;
uint8 icoFinished;
uint8 sub_5cbb8cd9; offset 8
uint256 stor7; offset 8
uint256 receivedStaAmount;
mapping of struct sub_90cb0db1;
uint256 donationNum;
mapping of struct receivedSta;
uint256 minerNum;
uint256 totalFunded;
uint8 isDonatedEthTransferred;
uint8 stor14; offset 8
uint256 stor14; offset 8
uint256 ownersEth;

function donationNum() {
    return donationNum
}

function icoStartBlock() {
    return icoStartBlock
}

function icoFinished() {
    return bool(icoFinished)
}

function beneficiary() {
    return beneficiaryAddress
}

function crowdfundingTarget() {
    return crowdfundingTarget
}

function icoEndBlock() {
    return icoEndBlock
}

function sta() {
    return staAddress
}

function sub_5cbb8cd9(?) {
    return bool(sub_5cbb8cd9)
}

function minerNum() {
    return minerNum
}

function isDonatedEthTransferred() {
    return bool(isDonatedEthTransferred)
}

function owner() {
    return owner
}

function sub_90cb0db1(?) {
    return sub_90cb0db1[arg1].field_0, 
           sub_90cb0db1[arg1].field_256,
           sub_90cb0db1[arg1].field_512,
           bool(sub_90cb0db1[arg1].field_768),
           sub_90cb0db1[arg1].field_1024
}

function receivedSta(uint256 arg1) {
    return receivedSta[arg1].field_0, 
           receivedSta[arg1].field_256,
           receivedSta[arg1].field_512,
           bool(receivedSta[arg1].field_768),
           receivedSta[arg1].field_1024
}

function receivedStaAmount() {
    return receivedStaAmount
}

function totalFunded() {
    return totalFunded
}

function stb() {
    return stbAddress
}

function ownersEth() {
    return ownersEth
}

function selfDestroy() {
    require msg.sender == owner
    selfdestruct(this.address)
}

function claimMiningReward() {
    require msg.sender == owner
    require ext_code.size(staAddress)
    call staAddress.0xd588acc4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function backup_finishIcoVars() {
    require msg.sender == owner
    require block.number > icoEndBlock
    require not icoFinished
    icoFinished = 1
    if totalFunded >= crowdfundingTarget:
        stor7 = 1
}

function transferToOwner() {
    require msg.sender == owner
    require icoFinished
    require ownersEth > 0
    call owner with:
       value ownersEth wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    ownersEth = 0
}

function backup_drawdown() {
    require msg.sender == owner
    require sub_5cbb8cd9
    require not isDonatedEthTransferred
    call beneficiaryAddress with:
       value totalFunded wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    isDonatedEthTransferred = 1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    if staAddress != msg.sender:
        require msg.sender == stbAddress
        emit 0xa290e233: address(arg1), arg2, block.number
    else:
        require arg2 >= 50 * 10^6
        require block.number < icoEndBlock + (16 * 3600)
        receivedSta[stor12].field_0 = arg1
        receivedSta[stor12].field_256 = arg2
        receivedSta[stor12].field_512 = block.number
        receivedSta[stor12].field_768 = 0
        receivedSta[stor12].field_1024 = 0
        minerNum++
        require receivedStaAmount <= -arg2 - 1
        receivedStaAmount += arg2
        emit MessageReceiveSta(address(arg1), arg2, block.number);
}

function backup_refund(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require icoFinished
    require not sub_5cbb8cd9
    if arg1 < arg2:
        idx = arg1
        while idx < arg2:
            mem[0] = idx
            mem[32] = 9
            if not sub_90cb0db1[idx].field_768:
                call sub_90cb0db1[idx].field_0 with:
                   value sub_90cb0db1[idx].field_256 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                sub_90cb0db1[idx].field_768 = 1
                mem[0] = idx
                mem[32] = 9
                mem[96] = sub_90cb0db1[idx].field_0
                mem[128] = sub_90cb0db1[idx].field_256
                emit MessageRefundEth(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256);
            idx = idx + 1
            continue 
}

function backup_exchangeStaStb(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require sub_5cbb8cd9
    if arg1 >= arg2:
    if uint8(stor14.field_8):
        idx = arg1
        while idx < arg2:
            mem[0] = idx
            mem[32] = 11
            if not receivedSta[idx].field_768:
                require ext_code.size(stbAddress)
                call stbAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args receivedSta[idx].field_0, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                require ext_call.success
                receivedSta[idx].field_768 = 1
                receivedSta[idx].field_1024 = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                mem[0] = idx
                mem[32] = 11
                mem[mem[64]] = receivedSta[idx].field_0
                mem[mem[64] + 32] = receivedSta[idx].field_256
                mem[mem[64] + 64] = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                emit MessageExchangeStaStb(receivedSta[idx].field_0, receivedSta[idx].field_256, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000);
            idx = idx + 1
            continue 
        if ext_code.size(staAddress):
            call staAddress.0x9dc29fac with:
                 gas gas_remaining - 710 wei
                args address(this.address), 0
            if ext_call.success:
    else:
        if ext_code.size(stbAddress):
            call stbAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(this.address), 50 * totalFunded / 1000 / 10^14
            if ext_call.success:
                Mask(248, 0, stor14.field_8) = 1
                idx = arg1
                while idx < arg2:
                    mem[0] = idx
                    mem[32] = 11
                    if not receivedSta[idx].field_768:
                        require ext_code.size(stbAddress)
                        call stbAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args receivedSta[idx].field_0, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                        require ext_call.success
                        receivedSta[idx].field_768 = 1
                        receivedSta[idx].field_1024 = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                        mem[0] = idx
                        mem[32] = 11
                        mem[mem[64]] = receivedSta[idx].field_0
                        mem[mem[64] + 32] = receivedSta[idx].field_256
                        mem[mem[64] + 64] = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                        emit MessageExchangeStaStb(receivedSta[idx].field_0, receivedSta[idx].field_256, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000);
                    idx = idx + 1
                    continue 
                if ext_code.size(staAddress):
                    call staAddress.0x9dc29fac with:
                         gas gas_remaining - 710 wei
                        args address(this.address), 0
                    if ext_call.success:
    revert
}

function backup_exchangeEthStb(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require sub_5cbb8cd9
    if arg1 < arg2:
        idx = arg1
        while idx < arg2:
            mem[0] = idx
            mem[32] = 9
            if not sub_90cb0db1[idx].field_768:
                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                    if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                            mem[0] = idx
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                        else:
                            if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                mem[0] = idx
                                mem[32] = 9
                                idx = idx + 1
                                continue 
                            else:
                                mem[0] = idx
                                mem[32] = 9
                                idx = idx + 1
                                continue 
                    else:
                        if sub_90cb0db1[idx].field_512 >= icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                mem[0] = idx
                                mem[32] = 9
                                idx = idx + 1
                                continue 
                            else:
                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                    mem[0] = idx
                                    mem[32] = 9
                                    idx = idx + 1
                                    continue 
                                else:
                                    mem[0] = idx
                                    mem[32] = 9
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[0] = idx
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = idx
                    mem[32] = 9
                    idx = idx + 1
                    continue 
            else:
                idx = idx + 1
                continue 
        require ext_code.size(stbAddress)
        call stbAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(this.address), 0
        require ext_call.success
        idx = arg1
        while idx < arg2:
            mem[0] = idx
            mem[32] = 9
            if not sub_90cb0db1[idx].field_768:
                require ext_code.size(stbAddress)
                if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                    call stbAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args sub_90cb0db1[idx].field_0, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                    require ext_call.success
                    sub_90cb0db1[idx].field_768 = 1
                    sub_90cb0db1[idx].field_1024 = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                    mem[0] = idx
                    mem[32] = 9
                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                    mem[mem[64] + 64] = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                else:
                    if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                            call stbAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                            require ext_call.success
                            sub_90cb0db1[idx].field_768 = 1
                            sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                            mem[0] = idx
                            mem[32] = 9
                            mem[mem[64]] = sub_90cb0db1[idx].field_0
                            mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                            mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                            emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                        else:
                            if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                call stbAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                require ext_call.success
                                sub_90cb0db1[idx].field_768 = 1
                                sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                mem[0] = idx
                                mem[32] = 9
                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                            else:
                                call stbAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                require ext_call.success
                                sub_90cb0db1[idx].field_768 = 1
                                sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                mem[0] = idx
                                mem[32] = 9
                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                    else:
                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                            call stbAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args sub_90cb0db1[idx].field_0, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                            require ext_call.success
                            sub_90cb0db1[idx].field_768 = 1
                            sub_90cb0db1[idx].field_1024 = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                            mem[0] = idx
                            mem[32] = 9
                            mem[mem[64]] = sub_90cb0db1[idx].field_0
                            mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                            mem[mem[64] + 64] = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                            emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                        else:
                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                call stbAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                require ext_call.success
                                sub_90cb0db1[idx].field_768 = 1
                                sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                mem[0] = idx
                                mem[32] = 9
                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                            else:
                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                    call stbAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    require ext_call.success
                                    sub_90cb0db1[idx].field_768 = 1
                                    sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    mem[0] = idx
                                    mem[32] = 9
                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                    mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                else:
                                    call stbAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    require ext_call.success
                                    sub_90cb0db1[idx].field_768 = 1
                                    sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    mem[0] = idx
                                    mem[32] = 9
                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                    mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
            idx = idx + 1
            continue 
}

function _fallback() payable {
    mem[64] = 96
    require msg.value >= 10^16
    if block.number >= icoStartBlock:
        if block.number <= icoEndBlock:
            if msg.sender == owner:
                ownersEth += msg.value
            else:
                require totalFunded <= -msg.value - 1
                totalFunded += msg.value
                sub_90cb0db1[stor10].field_0 = msg.sender
                sub_90cb0db1[stor10].field_256 = msg.value
                sub_90cb0db1[stor10].field_512 = block.number
                sub_90cb0db1[stor10].field_768 = 0
                sub_90cb0db1[stor10].field_1024 = 0
                donationNum++
                emit MessageReceiveEth(msg.sender, msg.value, block.number);
        else:
            if icoFinished:
                require msg.sender == owner
                ownersEth += msg.value
            else:
                icoFinished = 1
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if totalFunded < crowdfundingTarget:
                    require icoFinished
                    require not sub_5cbb8cd9
                    if 0 < donationNum:
                        idx = 0
                        while idx < donationNum:
                            mem[0] = idx
                            mem[32] = 9
                            if not sub_90cb0db1[idx].field_768:
                                call sub_90cb0db1[idx].field_0 with:
                                   value sub_90cb0db1[idx].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                sub_90cb0db1[idx].field_768 = 1
                                mem[0] = idx
                                mem[32] = 9
                                mem[96] = sub_90cb0db1[idx].field_0
                                mem[128] = sub_90cb0db1[idx].field_256
                                emit MessageRefundEth(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256);
                            idx = idx + 1
                            continue 
                else:
                    stor7 = 1
                    require sub_5cbb8cd9
                    if 0 < minerNum:
                        if not uint8(stor14.field_8):
                            require ext_code.size(stbAddress)
                            call stbAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(this.address), 50 * totalFunded / 1000 / 10^14
                            require ext_call.success
                            Mask(248, 0, stor14.field_8) = 1
                        idx = 0
                        while idx < minerNum:
                            mem[0] = idx
                            mem[32] = 11
                            if not receivedSta[idx].field_768:
                                require ext_code.size(stbAddress)
                                call stbAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args receivedSta[idx].field_0, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                require ext_call.success
                                receivedSta[idx].field_768 = 1
                                receivedSta[idx].field_1024 = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                mem[0] = idx
                                mem[32] = 11
                                mem[mem[64]] = receivedSta[idx].field_0
                                mem[mem[64] + 32] = receivedSta[idx].field_256
                                mem[mem[64] + 64] = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                emit MessageExchangeStaStb(receivedSta[idx].field_0, receivedSta[idx].field_256, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000);
                            idx = idx + 1
                            continue 
                        require ext_code.size(staAddress)
                        call staAddress.0x9dc29fac with:
                             gas gas_remaining - 710 wei
                            args address(this.address), 0
                        require ext_call.success
                    require sub_5cbb8cd9
                    if 0 < donationNum:
                        idx = 0
                        while idx < donationNum:
                            mem[0] = idx
                            mem[32] = 9
                            if not sub_90cb0db1[idx].field_768:
                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                    if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                            mem[0] = idx
                                            mem[32] = 9
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                mem[0] = idx
                                                mem[32] = 9
                                                idx = idx + 1
                                                continue 
                                            else:
                                                mem[0] = idx
                                                mem[32] = 9
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if sub_90cb0db1[idx].field_512 >= icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                mem[0] = idx
                                                mem[32] = 9
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[0] = idx
                                            mem[32] = 9
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[0] = idx
                                    mem[32] = 9
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
                        require ext_code.size(stbAddress)
                        call stbAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(this.address), 0
                        require ext_call.success
                        idx = 0
                        while idx < donationNum:
                            mem[0] = idx
                            mem[32] = 9
                            if not sub_90cb0db1[idx].field_768:
                                require ext_code.size(stbAddress)
                                if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                    call stbAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args sub_90cb0db1[idx].field_0, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    require ext_call.success
                                    sub_90cb0db1[idx].field_768 = 1
                                    sub_90cb0db1[idx].field_1024 = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    mem[0] = idx
                                    mem[32] = 9
                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                    mem[mem[64] + 64] = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                else:
                                    if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                            call stbAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            require ext_call.success
                                            sub_90cb0db1[idx].field_768 = 1
                                            sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            mem[0] = idx
                                            mem[32] = 9
                                            mem[mem[64]] = sub_90cb0db1[idx].field_0
                                            mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                            mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                        else:
                                            if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                call stbAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                require ext_call.success
                                                sub_90cb0db1[idx].field_768 = 1
                                                sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                mem[0] = idx
                                                mem[32] = 9
                                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                            else:
                                                call stbAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                require ext_call.success
                                                sub_90cb0db1[idx].field_768 = 1
                                                sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                mem[0] = idx
                                                mem[32] = 9
                                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                    else:
                                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                            call stbAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args sub_90cb0db1[idx].field_0, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            require ext_call.success
                                            sub_90cb0db1[idx].field_768 = 1
                                            sub_90cb0db1[idx].field_1024 = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            mem[0] = idx
                                            mem[32] = 9
                                            mem[mem[64]] = sub_90cb0db1[idx].field_0
                                            mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                            mem[mem[64] + 64] = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                        else:
                                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                call stbAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                require ext_call.success
                                                sub_90cb0db1[idx].field_768 = 1
                                                sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                mem[0] = idx
                                                mem[32] = 9
                                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                            else:
                                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                    call stbAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    require ext_call.success
                                                    sub_90cb0db1[idx].field_768 = 1
                                                    sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                    mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                else:
                                                    call stbAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    require ext_call.success
                                                    sub_90cb0db1[idx].field_768 = 1
                                                    sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                    mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                            idx = idx + 1
                            continue 
                    require sub_5cbb8cd9
                    require not isDonatedEthTransferred
                    call beneficiaryAddress with:
                       value totalFunded wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    isDonatedEthTransferred = 1
    else:
        if msg.sender == owner:
            ownersEth += msg.value
        else:
            if block.number < icoStartBlock:
                require block.number > icoEndBlock
                if icoFinished:
                    require msg.sender == owner
                    ownersEth += msg.value
                else:
                    icoFinished = 1
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if totalFunded < crowdfundingTarget:
                        require icoFinished
                        require not sub_5cbb8cd9
                        if 0 < donationNum:
                            idx = 0
                            while idx < donationNum:
                                mem[0] = idx
                                mem[32] = 9
                                if not sub_90cb0db1[idx].field_768:
                                    call sub_90cb0db1[idx].field_0 with:
                                       value sub_90cb0db1[idx].field_256 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    sub_90cb0db1[idx].field_768 = 1
                                    mem[0] = idx
                                    mem[32] = 9
                                    mem[96] = sub_90cb0db1[idx].field_0
                                    mem[128] = sub_90cb0db1[idx].field_256
                                    emit MessageRefundEth(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256);
                                idx = idx + 1
                                continue 
                    else:
                        stor7 = 1
                        require sub_5cbb8cd9
                        if 0 < minerNum:
                            if not uint8(stor14.field_8):
                                require ext_code.size(stbAddress)
                                call stbAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(this.address), 50 * totalFunded / 1000 / 10^14
                                require ext_call.success
                                Mask(248, 0, stor14.field_8) = 1
                            idx = 0
                            while idx < minerNum:
                                mem[0] = idx
                                mem[32] = 11
                                if not receivedSta[idx].field_768:
                                    require ext_code.size(stbAddress)
                                    call stbAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args receivedSta[idx].field_0, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                    require ext_call.success
                                    receivedSta[idx].field_768 = 1
                                    receivedSta[idx].field_1024 = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                    mem[0] = idx
                                    mem[32] = 11
                                    mem[mem[64]] = receivedSta[idx].field_0
                                    mem[mem[64] + 32] = receivedSta[idx].field_256
                                    mem[mem[64] + 64] = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                    emit MessageExchangeStaStb(receivedSta[idx].field_0, receivedSta[idx].field_256, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000);
                                idx = idx + 1
                                continue 
                            require ext_code.size(staAddress)
                            call staAddress.0x9dc29fac with:
                                 gas gas_remaining - 710 wei
                                args address(this.address), 0
                            require ext_call.success
                        require sub_5cbb8cd9
                        if 0 < donationNum:
                            idx = 0
                            while idx < donationNum:
                                mem[0] = idx
                                mem[32] = 9
                                if not sub_90cb0db1[idx].field_768:
                                    if sub_90cb0db1[idx].field_512 >= icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                mem[0] = idx
                                                mem[32] = 9
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if sub_90cb0db1[idx].field_512 >= icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                mem[0] = idx
                                                mem[32] = 9
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[0] = idx
                                        mem[32] = 9
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            require ext_code.size(stbAddress)
                            call stbAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(this.address), 0
                            require ext_call.success
                            idx = 0
                            while idx < donationNum:
                                mem[0] = idx
                                mem[32] = 9
                                if not sub_90cb0db1[idx].field_768:
                                    require ext_code.size(stbAddress)
                                    if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                        call stbAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args sub_90cb0db1[idx].field_0, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                        require ext_call.success
                                        sub_90cb0db1[idx].field_768 = 1
                                        sub_90cb0db1[idx].field_1024 = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                        mem[0] = idx
                                        mem[32] = 9
                                        mem[mem[64]] = sub_90cb0db1[idx].field_0
                                        mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                        mem[mem[64] + 64] = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                        emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                    else:
                                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                call stbAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                require ext_call.success
                                                sub_90cb0db1[idx].field_768 = 1
                                                sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                mem[0] = idx
                                                mem[32] = 9
                                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                            else:
                                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                    call stbAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    require ext_call.success
                                                    sub_90cb0db1[idx].field_768 = 1
                                                    sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                    mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                else:
                                                    call stbAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    require ext_call.success
                                                    sub_90cb0db1[idx].field_768 = 1
                                                    sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                    mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                        else:
                                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                call stbAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args sub_90cb0db1[idx].field_0, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                require ext_call.success
                                                sub_90cb0db1[idx].field_768 = 1
                                                sub_90cb0db1[idx].field_1024 = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                mem[0] = idx
                                                mem[32] = 9
                                                mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                mem[mem[64] + 64] = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                            else:
                                                if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                    call stbAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    require ext_call.success
                                                    sub_90cb0db1[idx].field_768 = 1
                                                    sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                    mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                else:
                                                    if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                        call stbAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        require ext_call.success
                                                        sub_90cb0db1[idx].field_768 = 1
                                                        sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                        mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                        mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                    else:
                                                        call stbAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        require ext_call.success
                                                        sub_90cb0db1[idx].field_768 = 1
                                                        sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                        mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                        mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                idx = idx + 1
                                continue 
                        require sub_5cbb8cd9
                        require not isDonatedEthTransferred
                        call beneficiaryAddress with:
                           value totalFunded wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        isDonatedEthTransferred = 1
            else:
                if block.number <= icoEndBlock:
                    if msg.sender == owner:
                        ownersEth += msg.value
                    else:
                        require totalFunded <= -msg.value - 1
                        totalFunded += msg.value
                        sub_90cb0db1[stor10].field_0 = msg.sender
                        sub_90cb0db1[stor10].field_256 = msg.value
                        sub_90cb0db1[stor10].field_512 = block.number
                        sub_90cb0db1[stor10].field_768 = 0
                        sub_90cb0db1[stor10].field_1024 = 0
                        donationNum++
                        emit MessageReceiveEth(msg.sender, msg.value, block.number);
                else:
                    if icoFinished:
                        require msg.sender == owner
                        ownersEth += msg.value
                    else:
                        icoFinished = 1
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if totalFunded < crowdfundingTarget:
                            require icoFinished
                            require not sub_5cbb8cd9
                            if 0 < donationNum:
                                idx = 0
                                while idx < donationNum:
                                    mem[0] = idx
                                    mem[32] = 9
                                    if not sub_90cb0db1[idx].field_768:
                                        call sub_90cb0db1[idx].field_0 with:
                                           value sub_90cb0db1[idx].field_256 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        sub_90cb0db1[idx].field_768 = 1
                                        mem[0] = idx
                                        mem[32] = 9
                                        mem[96] = sub_90cb0db1[idx].field_0
                                        mem[128] = sub_90cb0db1[idx].field_256
                                        emit MessageRefundEth(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256);
                                    idx = idx + 1
                                    continue 
                        else:
                            stor7 = 1
                            require sub_5cbb8cd9
                            if 0 < minerNum:
                                if not uint8(stor14.field_8):
                                    require ext_code.size(stbAddress)
                                    call stbAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(this.address), 50 * totalFunded / 1000 / 10^14
                                    require ext_call.success
                                    Mask(248, 0, stor14.field_8) = 1
                                idx = 0
                                while idx < minerNum:
                                    mem[0] = idx
                                    mem[32] = 11
                                    if not receivedSta[idx].field_768:
                                        require ext_code.size(stbAddress)
                                        call stbAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args receivedSta[idx].field_0, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                        require ext_call.success
                                        receivedSta[idx].field_768 = 1
                                        receivedSta[idx].field_1024 = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                        mem[0] = idx
                                        mem[32] = 11
                                        mem[mem[64]] = receivedSta[idx].field_0
                                        mem[mem[64] + 32] = receivedSta[idx].field_256
                                        mem[mem[64] + 64] = receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000
                                        emit MessageExchangeStaStb(receivedSta[idx].field_0, receivedSta[idx].field_256, receivedSta[idx].field_256 / 10000 * 50 * totalFunded / 1000 / 10^14 / 100 / 10000);
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(staAddress)
                                call staAddress.0x9dc29fac with:
                                     gas gas_remaining - 710 wei
                                    args address(this.address), 0
                                require ext_call.success
                            require sub_5cbb8cd9
                            if 0 < donationNum:
                                idx = 0
                                while idx < donationNum:
                                    mem[0] = idx
                                    mem[32] = 9
                                    if not sub_90cb0db1[idx].field_768:
                                        if sub_90cb0db1[idx].field_512 >= icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                                if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if sub_90cb0db1[idx].field_512 >= icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                    if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                            mem[0] = idx
                                                            mem[32] = 9
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            mem[0] = idx
                                                            mem[32] = 9
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[0] = idx
                                            mem[32] = 9
                                            idx = idx + 1
                                            continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                require ext_code.size(stbAddress)
                                call stbAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(this.address), 0
                                require ext_call.success
                                idx = 0
                                while idx < donationNum:
                                    mem[0] = idx
                                    mem[32] = 9
                                    if not sub_90cb0db1[idx].field_768:
                                        require ext_code.size(stbAddress)
                                        if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                            call stbAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args sub_90cb0db1[idx].field_0, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            require ext_call.success
                                            sub_90cb0db1[idx].field_768 = 1
                                            sub_90cb0db1[idx].field_1024 = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            mem[0] = idx
                                            mem[32] = 9
                                            mem[mem[64]] = sub_90cb0db1[idx].field_0
                                            mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                            mem[mem[64] + 64] = 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                            emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 106 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                        else:
                                            if sub_90cb0db1[idx].field_512 < icoStartBlock + (icoEndBlock - icoStartBlock / 4):
                                                if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                    call stbAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    require ext_call.success
                                                    sub_90cb0db1[idx].field_768 = 1
                                                    sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                    mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                else:
                                                    if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                        call stbAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        require ext_call.success
                                                        sub_90cb0db1[idx].field_768 = 1
                                                        sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                        mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                        mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                    else:
                                                        call stbAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        require ext_call.success
                                                        sub_90cb0db1[idx].field_768 = 1
                                                        sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                        mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                        mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                            else:
                                                if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                    call stbAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args sub_90cb0db1[idx].field_0, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    require ext_call.success
                                                    sub_90cb0db1[idx].field_768 = 1
                                                    sub_90cb0db1[idx].field_1024 = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    mem[0] = idx
                                                    mem[32] = 9
                                                    mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                    mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                    mem[mem[64] + 64] = 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                    emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 104 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                else:
                                                    if sub_90cb0db1[idx].field_512 < icoStartBlock + (Mask(254, 2, icoEndBlock - icoStartBlock) >> 1):
                                                        call stbAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        require ext_call.success
                                                        sub_90cb0db1[idx].field_768 = 1
                                                        sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        mem[0] = idx
                                                        mem[32] = 9
                                                        mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                        mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                        mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                        emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                    else:
                                                        if sub_90cb0db1[idx].field_512 >= icoStartBlock + (3 * icoEndBlock - icoStartBlock / 4):
                                                            call stbAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args sub_90cb0db1[idx].field_0, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                            require ext_call.success
                                                            sub_90cb0db1[idx].field_768 = 1
                                                            sub_90cb0db1[idx].field_1024 = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                            mem[0] = idx
                                                            mem[32] = 9
                                                            mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                            mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                            mem[mem[64] + 64] = 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                            emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 100 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                                        else:
                                                            call stbAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args sub_90cb0db1[idx].field_0, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                            require ext_call.success
                                                            sub_90cb0db1[idx].field_768 = 1
                                                            sub_90cb0db1[idx].field_1024 = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                            mem[0] = idx
                                                            mem[32] = 9
                                                            mem[mem[64]] = sub_90cb0db1[idx].field_0
                                                            mem[mem[64] + 32] = sub_90cb0db1[idx].field_256
                                                            mem[mem[64] + 64] = 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100
                                                            emit MessageExchangeEthStb(sub_90cb0db1[idx].field_0, sub_90cb0db1[idx].field_256, 10 * 102 * sub_90cb0db1[idx].field_256 / 10^14 / 100);
                                    idx = idx + 1
                                    continue 
                            require sub_5cbb8cd9
                            require not isDonatedEthTransferred
                            call beneficiaryAddress with:
                               value totalFunded wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            isDonatedEthTransferred = 1
}



}
