contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint256 stor6;
address stor7;
address stor8;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor2 = 2300
    stor5 = 0
    stor6 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 50 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    stor7 = msg.sender
    stor8 = msg.sender
    return code.data[846 len 11372]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
address stor0;
address stor1;
uint256 stor1;
uint256 stor2;
mapping of uint256 investorIDs;
mapping of struct investors;
uint256 numInvestors;
uint256 invested;
address owner;
uint8 isStopped; offset 160
address houseAddress;
address stor9;
uint256 stor10;
mapping of struct bets;
array of uint256 betsKeys;
uint256 investorsProfit;
uint256 investorsLosses;
uint8 stor15;

function numInvestors() {
    return numInvestors
}

function isStopped() {
    return bool(isStopped)
}

function investors(uint256 arg1) {
    return investors[arg1].field_0, investors[arg1].field_256, bool(investors[arg1].field_512)
}

function investorsLosses() {
    return investorsLosses
}

function investorsProfit() {
    return investorsProfit
}

function investorIDs(address arg1) {
    return investorIDs[arg1]
}

function betsKeys(uint256 arg1) {
    require arg1 < betsKeys.length
    return betsKeys[arg1]
}

function owner() {
    return owner
}

function bets(bytes32 arg1) {
    return bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_512
}

function invested() {
    return invested
}

function houseAddress() {
    return houseAddress
}

function numBets() {
    return betsKeys.length
}

function proposedWithdrawal() {
    return stor9, stor10
}

function stopContract() {
    require owner == msg.sender
    isStopped = 1
    emit LOG_ContractStopped()
}

function resumeContract() {
    require owner == msg.sender
    isStopped = 0
    emit LOG_ContractResumed()
}

function getProfitShare(address arg1) {
    require invested
    return (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested)
}

function getLossesShare(address arg1) {
    require invested
    return (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested)
}

function changeOwnerAddress(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    emit LOG_OwnerAddressChanged(address(arg1), arg1);
}

function changeHouseAddress(address arg1) {
    require owner == msg.sender
    require arg1
    houseAddress = arg1
    emit LOG_HouseAddressChanged(address(arg1), arg1);
}

function getBet(uint256 arg1) {
    if arg1 >= betsKeys.length:
        return 0
    return bets[stor12[arg1]].field_0, bets[stor12[arg1]].field_256, bets[stor12[arg1]].field_512
}

function changeGasLimitOfSafeSend(uint256 arg1) {
    require owner == msg.sender
    require arg1 + 175000 >= 175000
    require arg1 >= 25000
    stor2 = arg1
    emit LOG_GasLimitChanged(arg1, arg1);
}

function voteEmergencyWithdrawal(bool arg1) {
    require investorIDs[address(msg.sender)]
    require stor9
    require isStopped
    investors[stor3[address(msg.sender)]].field_512 = uint8(arg1)
    emit LOG_EmergencyWithdrawalVote(msg.sender, arg1);
}

function getBankroll() {
    if invested >= investorsProfit:
        if invested + investorsProfit >= invested:
            if invested + investorsProfit >= investorsLosses:
                return (invested + investorsProfit - investorsLosses)
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function proposeEmergencyWithdrawal(address arg1) {
    require isStopped
    require owner == msg.sender
    idx = 1
    while idx <= numInvestors:
        mem[0] = idx
        mem[32] = 4
        investors[idx].field_512 = 0
        idx = idx + 1
        continue 
    stor9 = arg1
    stor10 = block.timestamp
    emit LOG_EmergencyWithdrawalProposed()
}

function getMinBetAmount() {
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args 0, 64, stor2 + 175000, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    return (ext_call.return_data[0] + 2 * 10^17)
}

function getMaxBetAmount() {
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args 0, 64, stor2 + 175000, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if invested >= investorsProfit:
        if invested + investorsProfit >= invested:
            if invested + investorsProfit >= investorsLosses:
                return (((750000 * invested) + (750000 * investorsProfit) - (750000 * investorsLosses) / 23100000) + ext_call.return_data[0])
    return ext_call.return_data[0]
}

function executeEmergencyWithdrawal() {
    require owner == msg.sender
    require stor9
    require isStopped
    require stor10 + (72 * 24 * 3600) <= block.timestamp
    idx = 1
    s = 0
    while idx <= numInvestors:
        mem[0] = idx
        mem[32] = 4
        if bool(investors[idx].field_512) != 1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 4
        investors[idx].field_512 = 0
        idx = idx + 1
        s = s + 1
        continue 
    require s >= 10 * numInvestors / 100
    call stor9 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit LOG_EmergencyWithdrawalSucceeded(stor9, eth.balance(this.address));
    else:
        emit LOG_EmergencyWithdrawalFailed(stor9);
}

function getBalance(address arg1) {
    require invested
    if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) >= investorsProfit * investors[stor3[address(arg1)]].field_256 / invested:
        if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) >= investors[stor3[address(arg1)]].field_256:
            if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) >= investorsLosses * investors[stor3[address(arg1)]].field_256 / invested:
                return (investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested))
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function changeOraclizeConfig(bytes32 arg1) {
    require owner == msg.sender
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setConfig(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function changeOraclizeProofType(bytes1 arg1) {
    require owner == msg.sender
    require Mask(8, 248, arg1)
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 50 wei
        args 1, 0
    require ext_call.success
}

function increaseInvestment() payable {
    require not isStopped
    require msg.value
    require investorIDs[address(msg.sender)]
    if not stor15:
        s = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= numInvestors:
            require invested
            if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[idx].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256
                    mem[96] = investors[idx].field_0
                    mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested)
                    emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested));
            mem[0] = idx
            mem[32] = 4
            if s + investors[idx].field_256 < s:
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investors[idx].field_0
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 4
            s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investors[idx].field_0
            idx = idx + 1
            s = investors[idx].field_256 + s
            continue 
        investorsProfit = 0
        investorsLosses = 0
        invested = s
        stor15 = 1
    investors[stor3[address(msg.sender)]].field_256 += msg.value
    invested += msg.value
}

function bet() payable {
    require not isStopped
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args 0, 64, stor2 + 175000, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0] < msg.value
    if invested < investorsProfit:
        require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= 0
    else:
        if invested + investorsProfit < invested:
            require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= 0
        else:
            if invested + investorsProfit >= investorsLosses:
                require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= (100 * invested) + (100 * investorsProfit) - (100 * investorsLosses) / 10000
            else:
                require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= 0
    require msg.value - ext_call.return_data[0] >= 2 * 10^17
    emit LOG_NewBet(msg.sender, msg.value - ext_call.return_data[0]);
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    mem[708] = mem[734 len 6]
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args Array(len=6, data=mem[708]), stor2 + 175000
    require ext_call.success
    if ext_call.return_data[0] > (175000 * block.gasprice) + (stor2 * block.gasprice) + 10^18:
        bets[0].field_0 = msg.sender
        bets[0].field_256 = msg.value - ext_call.return_data[0]
        bets[0].field_512 = 0
        betsKeys.length++
        if not betsKeys.length <= betsKeys.length + 1:
            idx = betsKeys.length + 1
            while betsKeys.length > idx:
                betsKeys[idx] = 0
                idx = idx + 1
                continue 
        betsKeys[betsKeys.length] = 0
    else:
        mem[772] = mem[798 len 6]
        mem[1220] = mem[1243 len 9]
        require ext_code.size(address(stor1))
        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 128, 192, stor2 + 175000, 6, mem[772], 393, code.data[10979 len 384], mem[1220]
        require ext_call.success
        bets[ext_call.return_data[0]].field_0 = msg.sender
        bets[ext_call.return_data[0]].field_256 = msg.value - ext_call.return_data[0]
        bets[ext_call.return_data[0]].field_512 = 0
        betsKeys.length++
        if not betsKeys.length <= betsKeys.length + 1:
            idx = betsKeys.length + 1
            while betsKeys.length > idx:
                betsKeys[idx] = 0
                idx = idx + 1
                continue 
        betsKeys[betsKeys.length] = ext_call.return_data[0]
}

function _fallback() payable {
    require not isStopped
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args 0, 64, stor2 + 175000, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0] < msg.value
    if invested < investorsProfit:
        require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= 0
    else:
        if invested + investorsProfit < invested:
            require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= 0
        else:
            if invested + investorsProfit >= investorsLosses:
                require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= (100 * invested) + (100 * investorsProfit) - (100 * investorsLosses) / 10000
            else:
                require (2310 * msg.value) - (2310 * ext_call.return_data[0]) / 7500 <= 0
    require msg.value - ext_call.return_data[0] >= 2 * 10^17
    emit LOG_NewBet(msg.sender, msg.value - ext_call.return_data[0]);
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    mem[708] = mem[734 len 6]
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args Array(len=6, data=mem[708]), stor2 + 175000
    require ext_call.success
    if ext_call.return_data[0] > (175000 * block.gasprice) + (stor2 * block.gasprice) + 10^18:
        bets[0].field_0 = msg.sender
        bets[0].field_256 = msg.value - ext_call.return_data[0]
        bets[0].field_512 = 0
        betsKeys.length++
        if not betsKeys.length <= betsKeys.length + 1:
            idx = betsKeys.length + 1
            while betsKeys.length > idx:
                betsKeys[idx] = 0
                idx = idx + 1
                continue 
        betsKeys[betsKeys.length] = 0
    else:
        mem[772] = mem[798 len 6]
        mem[1220] = mem[1243 len 9]
        require ext_code.size(address(stor1))
        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 128, 192, stor2 + 175000, 6, mem[772], 393, code.data[10979 len 384], mem[1220]
        require ext_call.success
        bets[ext_call.return_data[0]].field_0 = msg.sender
        bets[ext_call.return_data[0]].field_256 = msg.value - ext_call.return_data[0]
        bets[ext_call.return_data[0]].field_512 = 0
        betsKeys.length++
        if not betsKeys.length <= betsKeys.length + 1:
            idx = betsKeys.length + 1
            while betsKeys.length > idx:
                betsKeys[idx] = 0
                idx = idx + 1
                continue 
        betsKeys[betsKeys.length] = ext_call.return_data[0]
}

function searchSmallestInvestor() {
    idx = 1
    while idx <= numInvestors:
        require invested
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
            require invested
            mem[0] = investorIDs[stor4[idx].field_0]
            mem[32] = 4
            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                idx = idx + 1
                continue 
            else:
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                    idx = idx + 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
                    else:
                        idx = idx + 1
                        continue 
        else:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                require invested
                mem[0] = investorIDs[stor4[idx].field_0]
                mem[32] = 4
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    idx = idx + 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            idx = idx + 1
                            continue 
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                    require invested
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                            if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                else:
                    require invested
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
    return 1
}

function getMinInvestment() {
    if numInvestors == 10:
        idx = 1
        while idx <= numInvestors:
            require invested
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
                require invested
                mem[0] = investorIDs[stor4[idx].field_0]
                mem[32] = 4
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    idx = idx + 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            idx = idx + 1
                            continue 
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                    require invested
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
                else:
                    if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                        require invested
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                    else:
                        require invested
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                idx = idx + 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
        require invested
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                    return (investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested))
        return 0
    else:
        return 0
}

function forceDivestOfOneInvestor(address arg1) {
    require owner == msg.sender
    require isStopped
    if not stor15:
        s = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= numInvestors:
            require invested
            if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[idx].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256
                    mem[96] = investors[idx].field_0
                    mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested)
                    emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested));
            mem[0] = idx
            mem[32] = 4
            if s + investors[idx].field_256 < s:
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investors[idx].field_0
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 4
            s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investors[idx].field_0
            idx = idx + 1
            s = investors[idx].field_256 + s
            continue 
        investorsProfit = 0
        investorsLosses = 0
        invested = s
        stor15 = 1
    require invested
    if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) < investorsProfit * investors[stor3[address(arg1)]].field_256 / invested:
        if invested < investors[stor3[address(arg1)]].field_256:
            isStopped = 1
            emit LOG_EmergencyAutoStop()
        else:
            invested -= investors[stor3[address(arg1)]].field_256
            investors[stor3[address(arg1)]].field_0 = 0
            investors[stor3[address(arg1)]].field_256 = 0
            investors[stor3[address(arg1)]].field_512 = 0
            investorIDs[address(arg1)] = 0
            if investorIDs[address(arg1)] != numInvestors:
                investorIDs[stor4[stor5].field_0] = investorIDs[address(arg1)]
                investors[stor3[address(arg1)]].field_0 = investors[stor5].field_0
                investors[stor3[address(arg1)]].field_64 = 0
                investors[stor3[address(arg1)]].field_256 = investors[stor5].field_256
                investors[stor3[address(arg1)]].field_512 = 0
                investors[stor5].field_0 = 0
                investors[stor5].field_256 = 0
                investors[stor5].field_512 = 0
            numInvestors--
            emit LOG_ZeroSend()
            emit LOG_ZeroSend()
            emit LOG_InvestorExit(address(arg1), 0);
    else:
        if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) < investors[stor3[address(arg1)]].field_256:
            if invested < investors[stor3[address(arg1)]].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                invested -= investors[stor3[address(arg1)]].field_256
                investors[stor3[address(arg1)]].field_0 = 0
                investors[stor3[address(arg1)]].field_256 = 0
                investors[stor3[address(arg1)]].field_512 = 0
                investorIDs[address(arg1)] = 0
                if investorIDs[address(arg1)] != numInvestors:
                    investorIDs[stor4[stor5].field_0] = investorIDs[address(arg1)]
                    investors[stor3[address(arg1)]].field_0 = investors[stor5].field_0
                    investors[stor3[address(arg1)]].field_64 = 0
                    investors[stor3[address(arg1)]].field_256 = investors[stor5].field_256
                    investors[stor3[address(arg1)]].field_512 = 0
                    investors[stor5].field_0 = 0
                    investors[stor5].field_256 = 0
                    investors[stor5].field_512 = 0
                numInvestors--
                emit LOG_ZeroSend()
                emit LOG_ZeroSend()
                emit LOG_InvestorExit(address(arg1), 0);
        else:
            if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) < investorsLosses * investors[stor3[address(arg1)]].field_256 / invested:
                if invested < investors[stor3[address(arg1)]].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invested -= investors[stor3[address(arg1)]].field_256
                    investors[stor3[address(arg1)]].field_0 = 0
                    investors[stor3[address(arg1)]].field_256 = 0
                    investors[stor3[address(arg1)]].field_512 = 0
                    investorIDs[address(arg1)] = 0
                    if investorIDs[address(arg1)] != numInvestors:
                        investorIDs[stor4[stor5].field_0] = investorIDs[address(arg1)]
                        investors[stor3[address(arg1)]].field_0 = investors[stor5].field_0
                        investors[stor3[address(arg1)]].field_64 = 0
                        investors[stor3[address(arg1)]].field_256 = investors[stor5].field_256
                        investors[stor3[address(arg1)]].field_512 = 0
                        investors[stor5].field_0 = 0
                        investors[stor5].field_256 = 0
                        investors[stor5].field_512 = 0
                    numInvestors--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    emit LOG_InvestorExit(address(arg1), 0);
            else:
                if invested < investors[stor3[address(arg1)]].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invested -= investors[stor3[address(arg1)]].field_256
                    investors[stor3[address(arg1)]].field_0 = 0
                    investors[stor3[address(arg1)]].field_256 = 0
                    investors[stor3[address(arg1)]].field_512 = 0
                    investorIDs[address(arg1)] = 0
                    if investorIDs[address(arg1)] != numInvestors:
                        investorIDs[stor4[stor5].field_0] = investorIDs[address(arg1)]
                        investors[stor3[address(arg1)]].field_0 = investors[stor5].field_0
                        investors[stor3[address(arg1)]].field_64 = 0
                        investors[stor3[address(arg1)]].field_256 = investors[stor5].field_256
                        investors[stor3[address(arg1)]].field_512 = 0
                        investors[stor5].field_0 = 0
                        investors[stor5].field_256 = 0
                        investors[stor5].field_512 = 0
                    numInvestors--
                    if not investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000):
                        emit LOG_ZeroSend()
                    else:
                        if eth.balance(this.address) < investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000):
                            emit LOG_ValueIsTooBig()
                        else:
                            call arg1 with:
                               value investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000) wei
                                 gas stor2 wei
                            if not ext_call.success:
                                emit LOG_FailedSend(address(arg1), investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000));
                                if houseAddress != arg1:
                                    call houseAddress with:
                                       value investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000) wei
                                         gas stor2 wei
                                    if not ext_call.success:
                                        emit LOG_FailedSend(houseAddress, investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000));
                            emit LOG_SuccessfulSend(address(arg1), investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000));
                    if not (50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000:
                        emit LOG_ZeroSend()
                    else:
                        if eth.balance(this.address) < (50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000:
                            emit LOG_ValueIsTooBig()
                        else:
                            call houseAddress with:
                               value (50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000 wei
                                 gas stor2 wei
                            if not ext_call.success:
                                emit LOG_FailedSend(houseAddress, (50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000);
                                if houseAddress != houseAddress:
                                    call houseAddress with:
                                       value (50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000 wei
                                         gas stor2 wei
                                    if not ext_call.success:
                                        emit LOG_FailedSend(houseAddress, (50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000);
                            emit LOG_SuccessfulSend(houseAddress, (50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000);
                    emit LOG_InvestorExit(address(arg1), investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) - ((50 * investors[stor3[address(arg1)]].field_256) + (50 * investorsProfit * investors[stor3[address(arg1)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(arg1)]].field_256 / invested) / 10000));
    require numInvestors <= 10
    stor9 = 0
    stor10 = 0
}

function divest() {
    require investorIDs[address(msg.sender)]
    if not stor15:
        s = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= numInvestors:
            require invested
            if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[idx].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256
                    mem[96] = investors[idx].field_0
                    mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested)
                    emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested));
            mem[0] = idx
            mem[32] = 4
            if s + investors[idx].field_256 < s:
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investors[idx].field_0
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 4
            s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investors[idx].field_0
            idx = idx + 1
            s = investors[idx].field_256 + s
            continue 
        investorsProfit = 0
        investorsLosses = 0
        invested = s
        stor15 = 1
    require invested
    if investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) < investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested:
        if invested < investors[stor3[address(msg.sender)]].field_256:
            isStopped = 1
            emit LOG_EmergencyAutoStop()
        else:
            invested -= investors[stor3[address(msg.sender)]].field_256
            investors[stor3[address(msg.sender)]].field_0 = 0
            investors[stor3[address(msg.sender)]].field_256 = 0
            investors[stor3[address(msg.sender)]].field_512 = 0
            investorIDs[address(msg.sender)] = 0
            if investorIDs[address(msg.sender)] != numInvestors:
                investorIDs[stor4[stor5].field_0] = investorIDs[address(msg.sender)]
                investors[stor3[address(msg.sender)]].field_0 = investors[stor5].field_0
                investors[stor3[address(msg.sender)]].field_64 = 0
                investors[stor3[address(msg.sender)]].field_256 = investors[stor5].field_256
                investors[stor3[address(msg.sender)]].field_512 = 0
                investors[stor5].field_0 = 0
                investors[stor5].field_256 = 0
                investors[stor5].field_512 = 0
            numInvestors--
            emit LOG_ZeroSend()
            emit LOG_ZeroSend()
            emit LOG_InvestorExit(msg.sender, 0);
    else:
        if investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) < investors[stor3[address(msg.sender)]].field_256:
            if invested < investors[stor3[address(msg.sender)]].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                invested -= investors[stor3[address(msg.sender)]].field_256
                investors[stor3[address(msg.sender)]].field_0 = 0
                investors[stor3[address(msg.sender)]].field_256 = 0
                investors[stor3[address(msg.sender)]].field_512 = 0
                investorIDs[address(msg.sender)] = 0
                if investorIDs[address(msg.sender)] != numInvestors:
                    investorIDs[stor4[stor5].field_0] = investorIDs[address(msg.sender)]
                    investors[stor3[address(msg.sender)]].field_0 = investors[stor5].field_0
                    investors[stor3[address(msg.sender)]].field_64 = 0
                    investors[stor3[address(msg.sender)]].field_256 = investors[stor5].field_256
                    investors[stor3[address(msg.sender)]].field_512 = 0
                    investors[stor5].field_0 = 0
                    investors[stor5].field_256 = 0
                    investors[stor5].field_512 = 0
                numInvestors--
                emit LOG_ZeroSend()
                emit LOG_ZeroSend()
                emit LOG_InvestorExit(msg.sender, 0);
        else:
            if investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) < investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested:
                if invested < investors[stor3[address(msg.sender)]].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invested -= investors[stor3[address(msg.sender)]].field_256
                    investors[stor3[address(msg.sender)]].field_0 = 0
                    investors[stor3[address(msg.sender)]].field_256 = 0
                    investors[stor3[address(msg.sender)]].field_512 = 0
                    investorIDs[address(msg.sender)] = 0
                    if investorIDs[address(msg.sender)] != numInvestors:
                        investorIDs[stor4[stor5].field_0] = investorIDs[address(msg.sender)]
                        investors[stor3[address(msg.sender)]].field_0 = investors[stor5].field_0
                        investors[stor3[address(msg.sender)]].field_64 = 0
                        investors[stor3[address(msg.sender)]].field_256 = investors[stor5].field_256
                        investors[stor3[address(msg.sender)]].field_512 = 0
                        investors[stor5].field_0 = 0
                        investors[stor5].field_256 = 0
                        investors[stor5].field_512 = 0
                    numInvestors--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    emit LOG_InvestorExit(msg.sender, 0);
            else:
                if invested < investors[stor3[address(msg.sender)]].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invested -= investors[stor3[address(msg.sender)]].field_256
                    investors[stor3[address(msg.sender)]].field_0 = 0
                    investors[stor3[address(msg.sender)]].field_256 = 0
                    investors[stor3[address(msg.sender)]].field_512 = 0
                    investorIDs[address(msg.sender)] = 0
                    if investorIDs[address(msg.sender)] != numInvestors:
                        investorIDs[stor4[stor5].field_0] = investorIDs[address(msg.sender)]
                        investors[stor3[address(msg.sender)]].field_0 = investors[stor5].field_0
                        investors[stor3[address(msg.sender)]].field_64 = 0
                        investors[stor3[address(msg.sender)]].field_256 = investors[stor5].field_256
                        investors[stor3[address(msg.sender)]].field_512 = 0
                        investors[stor5].field_0 = 0
                        investors[stor5].field_256 = 0
                        investors[stor5].field_512 = 0
                    numInvestors--
                    if not investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000):
                        emit LOG_ZeroSend()
                    else:
                        if eth.balance(this.address) < investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000):
                            emit LOG_ValueIsTooBig()
                        else:
                            call msg.sender with:
                               value investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000) wei
                                 gas stor2 wei
                            if not ext_call.success:
                                emit LOG_FailedSend(msg.sender, investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000));
                                if houseAddress != msg.sender:
                                    call houseAddress with:
                                       value investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000) wei
                                         gas stor2 wei
                                    if not ext_call.success:
                                        emit LOG_FailedSend(houseAddress, investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000));
                            emit LOG_SuccessfulSend(msg.sender, investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000));
                    if not (50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000:
                        emit LOG_ZeroSend()
                    else:
                        if eth.balance(this.address) < (50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000:
                            emit LOG_ValueIsTooBig()
                        else:
                            call houseAddress with:
                               value (50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000 wei
                                 gas stor2 wei
                            if not ext_call.success:
                                emit LOG_FailedSend(houseAddress, (50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000);
                                if houseAddress != houseAddress:
                                    call houseAddress with:
                                       value (50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000 wei
                                         gas stor2 wei
                                    if not ext_call.success:
                                        emit LOG_FailedSend(houseAddress, (50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000);
                            emit LOG_SuccessfulSend(houseAddress, (50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000);
                    emit LOG_InvestorExit(msg.sender, investors[stor3[address(msg.sender)]].field_256 + (investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) - ((50 * investors[stor3[address(msg.sender)]].field_256) + (50 * investorsProfit * investors[stor3[address(msg.sender)]].field_256 / invested) - (50 * investorsLosses * investors[stor3[address(msg.sender)]].field_256 / invested) / 10000));
    require numInvestors <= 10
}

function forceDivestOfAllInvestors() {
    require owner == msg.sender
    idx = 1
    while idx <= numInvestors:
        if not stor15:
            t = 0
            t = 0
            t = 0
            s = 1
            t = 0
            while s <= numInvestors:
                require invested
                if investors[s].field_256 + (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invested) < investors[s].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    if (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invested) + investors[s].field_256 < investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invested:
                        isStopped = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        investors[s].field_256 = (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invested) + investors[s].field_256
                        mem[96] = investors[s].field_0
                        mem[128] = (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invested)
                        emit LOG_InvestorCapitalUpdate(investors[s].field_0, (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invested));
                mem[0] = s
                mem[32] = 4
                if t + investors[s].field_256 < t:
                    t = investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invested
                    t = investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invested
                    t = investors[s].field_0
                    s = s + 1
                    t = t
                    continue 
                mem[0] = s
                mem[32] = 4
                t = investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invested
                t = investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invested
                t = investors[s].field_0
                s = s + 1
                t = investors[s].field_256 + t
                continue 
            investorsProfit = 0
            investorsLosses = 0
            invested = t
            stor15 = 1
        require invested
        mem[0] = investorIDs[stor4[1].field_0]
        mem[32] = 4
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
            if invested < investors[stor3[investors[1].field_0]].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                invested -= investors[stor3[investors[1].field_0]].field_256
                investors[stor3[investors[1].field_0]].field_0 = 0
                investors[stor3[investors[1].field_0]].field_256 = 0
                investors[stor3[investors[1].field_0]].field_512 = 0
                mem[0] = investors[1].field_0
                mem[32] = 3
                investorIDs[stor4[1].field_0] = 0
                if investorIDs[stor4[1].field_0] != numInvestors:
                    investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                    mem[32] = 4
                    investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                    investors[stor3[investors[1].field_0]].field_64 = 0
                    investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                    investors[stor3[investors[1].field_0]].field_512 = 0
                    mem[0] = numInvestors
                    investors[stor5].field_0 = 0
                    investors[stor5].field_256 = 0
                    investors[stor5].field_512 = 0
                numInvestors--
                emit LOG_ZeroSend()
                emit LOG_ZeroSend()
                mem[96] = investors[1].field_0
                mem[128] = 0
                emit LOG_InvestorExit(investors[1].field_0, 0);
        else:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                if invested < investors[stor3[investors[1].field_0]].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invested -= investors[stor3[investors[1].field_0]].field_256
                    investors[stor3[investors[1].field_0]].field_0 = 0
                    investors[stor3[investors[1].field_0]].field_256 = 0
                    investors[stor3[investors[1].field_0]].field_512 = 0
                    mem[0] = investors[1].field_0
                    mem[32] = 3
                    investorIDs[stor4[1].field_0] = 0
                    if investorIDs[stor4[1].field_0] != numInvestors:
                        investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                        mem[32] = 4
                        investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                        investors[stor3[investors[1].field_0]].field_64 = 0
                        investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        mem[0] = numInvestors
                        investors[stor5].field_0 = 0
                        investors[stor5].field_256 = 0
                        investors[stor5].field_512 = 0
                    numInvestors--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    mem[96] = investors[1].field_0
                    mem[128] = 0
                    emit LOG_InvestorExit(investors[1].field_0, 0);
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                    if invested < investors[stor3[investors[1].field_0]].field_256:
                        isStopped = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        invested -= investors[stor3[investors[1].field_0]].field_256
                        investors[stor3[investors[1].field_0]].field_0 = 0
                        investors[stor3[investors[1].field_0]].field_256 = 0
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        mem[0] = investors[1].field_0
                        mem[32] = 3
                        investorIDs[stor4[1].field_0] = 0
                        if investorIDs[stor4[1].field_0] != numInvestors:
                            investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                            mem[32] = 4
                            investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                            investors[stor3[investors[1].field_0]].field_64 = 0
                            investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                            investors[stor3[investors[1].field_0]].field_512 = 0
                            mem[0] = numInvestors
                            investors[stor5].field_0 = 0
                            investors[stor5].field_256 = 0
                            investors[stor5].field_512 = 0
                        numInvestors--
                        emit LOG_ZeroSend()
                        emit LOG_ZeroSend()
                        mem[96] = investors[1].field_0
                        mem[128] = 0
                        emit LOG_InvestorExit(investors[1].field_0, 0);
                else:
                    if invested < investors[stor3[investors[1].field_0]].field_256:
                        isStopped = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        invested -= investors[stor3[investors[1].field_0]].field_256
                        investors[stor3[investors[1].field_0]].field_0 = 0
                        investors[stor3[investors[1].field_0]].field_256 = 0
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        mem[0] = investors[1].field_0
                        mem[32] = 3
                        investorIDs[stor4[1].field_0] = 0
                        if investorIDs[stor4[1].field_0] != numInvestors:
                            investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                            mem[32] = 4
                            investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                            investors[stor3[investors[1].field_0]].field_64 = 0
                            investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                            investors[stor3[investors[1].field_0]].field_512 = 0
                            mem[0] = numInvestors
                            investors[stor5].field_0 = 0
                            investors[stor5].field_256 = 0
                            investors[stor5].field_512 = 0
                        numInvestors--
                        if not investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000):
                            emit LOG_ZeroSend()
                        else:
                            if eth.balance(this.address) < investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000):
                                emit LOG_ValueIsTooBig()
                            else:
                                call investors[1].field_0 with:
                                   value investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000) wei
                                     gas stor2 wei
                                if not ext_call.success:
                                    emit LOG_FailedSend(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
                                    if houseAddress != investors[1].field_0:
                                        call houseAddress with:
                                           value investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000) wei
                                             gas stor2 wei
                                        if not ext_call.success:
                                            emit LOG_FailedSend(houseAddress, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
                                emit LOG_SuccessfulSend(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
                        if not (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000:
                            emit LOG_ZeroSend()
                        else:
                            if eth.balance(this.address) < (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000:
                                emit LOG_ValueIsTooBig()
                            else:
                                call houseAddress with:
                                   value (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000 wei
                                     gas stor2 wei
                                if not ext_call.success:
                                    emit LOG_FailedSend(houseAddress, (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000);
                                    if houseAddress != houseAddress:
                                        call houseAddress with:
                                           value (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000 wei
                                             gas stor2 wei
                                        if not ext_call.success:
                                            emit LOG_FailedSend(houseAddress, (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000);
                                emit LOG_SuccessfulSend(houseAddress, (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000);
                        mem[96] = investors[1].field_0
                        mem[128] = investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000)
                        emit LOG_InvestorExit(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
        require numInvestors <= 10
        idx = idx + 1
        continue 
}

function getStatus() {
    if invested >= investorsProfit:
        if invested + investorsProfit >= invested:
            if invested + investorsProfit >= investorsLosses:
                if numInvestors == 10:
                    idx = 1
                    while idx <= numInvestors:
                        require invested
                        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
                            require invested
                            mem[0] = investorIDs[stor4[idx].field_0]
                            mem[32] = 4
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                idx = idx + 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                    idx = idx + 1
                                    continue 
                                else:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                        else:
                            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                                require invested
                                mem[0] = investorIDs[stor4[idx].field_0]
                                mem[32] = 4
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                    idx = idx + 1
                                    continue 
                                else:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = idx + 1
                                            continue 
                            else:
                                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                                    require invested
                                    mem[0] = investorIDs[stor4[idx].field_0]
                                    mem[32] = 4
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                        if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                            idx = idx + 1
                                            continue 
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                            if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    require invested
                                    mem[0] = investorIDs[stor4[idx].field_0]
                                    mem[32] = 4
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                    require invested
                    if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
                        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256:
                            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                                return invested + investorsProfit - investorsLosses, 
                                       7500,
                                       190,
                                       100,
                                       2 * 10^17,
                                       investorsProfit - investorsLosses,
                                       investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested),
                                       betsKeys.length
                return invested + investorsProfit - investorsLosses, 
                       7500,
                       190,
                       100,
                       2 * 10^17,
                       investorsProfit - investorsLosses,
                       0,
                       betsKeys.length
    if numInvestors == 10:
        idx = 1
        while idx <= numInvestors:
            require invested
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
                require invested
                mem[0] = investorIDs[stor4[idx].field_0]
                mem[32] = 4
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    idx = idx + 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            idx = idx + 1
                            continue 
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                    require invested
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
                else:
                    if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                        require invested
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                    else:
                        require invested
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                idx = idx + 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
        require invested
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                    return 0, 
                           7500,
                           190,
                           100,
                           2 * 10^17,
                           investorsProfit - investorsLosses,
                           investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested),
                           betsKeys.length
    return 0, 7500, 190, 100, 2 * 10^17, investorsProfit - investorsLosses, 0, betsKeys.length
}

function newInvestor() payable {
    require not isStopped
    require msg.value
    require not investorIDs[address(msg.sender)]
    if numInvestors != 10:
        require msg.value > 0
    else:
        idx = 1
        while idx <= numInvestors:
            require invested
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
                require invested
                mem[0] = investorIDs[stor4[idx].field_0]
                mem[32] = 4
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    idx = idx + 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            idx = idx + 1
                            continue 
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                    require invested
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
                else:
                    if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                        require invested
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                    else:
                        require invested
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                                idx = idx + 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
        require invested
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
            require msg.value > 0
        else:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                require msg.value > 0
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                    require msg.value > investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested)
                else:
                    require msg.value > 0
    if not stor15:
        s = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= numInvestors:
            require invested
            if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[idx].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256
                    mem[96] = investors[idx].field_0
                    mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested)
                    emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested));
            mem[0] = idx
            mem[32] = 4
            if s + investors[idx].field_256 < s:
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investors[idx].field_0
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 4
            s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investors[idx].field_0
            idx = idx + 1
            s = investors[idx].field_256 + s
            continue 
        investorsProfit = 0
        investorsLosses = 0
        invested = s
        stor15 = 1
    if numInvestors != 10:
        numInvestors++
        investorIDs[address(msg.sender)] = numInvestors + 1
        investors[stor5 + 1].field_0 = msg.sender
        investors[stor5 + 1].field_256 = msg.value
        invested += msg.value
        emit LOG_InvestorEntrance(msg.sender, msg.value);
        require numInvestors <= 10
    idx = 1
    while idx <= numInvestors:
        require invested
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
            require invested
            mem[0] = investorIDs[stor4[idx].field_0]
            mem[32] = 4
            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                idx = idx + 1
                continue 
            else:
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                    idx = idx + 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
                    else:
                        idx = idx + 1
                        continue 
        else:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
                require invested
                mem[0] = investorIDs[stor4[idx].field_0]
                mem[32] = 4
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    idx = idx + 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            idx = idx + 1
                            continue 
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                    require invested
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                            if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if 0 >= investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested):
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                else:
                    require invested
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested:
                        idx = idx + 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx + 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) >= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
    if not stor15:
        s = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= numInvestors:
            require invested
            if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) < investors[idx].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested) + investors[idx].field_256
                    mem[96] = investors[idx].field_0
                    mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested)
                    emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested));
            mem[0] = idx
            mem[32] = 4
            if s + investors[idx].field_256 < s:
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
                s = investors[idx].field_0
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 4
            s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invested
            s = investors[idx].field_0
            idx = idx + 1
            s = investors[idx].field_256 + s
            continue 
        investorsProfit = 0
        investorsLosses = 0
        invested = s
        stor15 = 1
    require invested
    if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested:
        if invested < investors[stor3[investors[1].field_0]].field_256:
            isStopped = 1
            emit LOG_EmergencyAutoStop()
        else:
            invested -= investors[stor3[investors[1].field_0]].field_256
            investors[stor3[investors[1].field_0]].field_0 = 0
            investors[stor3[investors[1].field_0]].field_256 = 0
            investors[stor3[investors[1].field_0]].field_512 = 0
            investorIDs[stor4[1].field_0] = 0
            if investorIDs[stor4[1].field_0] != numInvestors:
                investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                investors[stor3[investors[1].field_0]].field_64 = 0
                investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                investors[stor3[investors[1].field_0]].field_512 = 0
                investors[stor5].field_0 = 0
                investors[stor5].field_256 = 0
                investors[stor5].field_512 = 0
            numInvestors--
            emit LOG_ZeroSend()
            emit LOG_ZeroSend()
            emit LOG_InvestorExit(investors[1].field_0, 0);
    else:
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investors[stor3[investors[1].field_0]].field_256:
            if invested < investors[stor3[investors[1].field_0]].field_256:
                isStopped = 1
                emit LOG_EmergencyAutoStop()
            else:
                invested -= investors[stor3[investors[1].field_0]].field_256
                investors[stor3[investors[1].field_0]].field_0 = 0
                investors[stor3[investors[1].field_0]].field_256 = 0
                investors[stor3[investors[1].field_0]].field_512 = 0
                investorIDs[stor4[1].field_0] = 0
                if investorIDs[stor4[1].field_0] != numInvestors:
                    investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                    investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                    investors[stor3[investors[1].field_0]].field_64 = 0
                    investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                    investors[stor3[investors[1].field_0]].field_512 = 0
                    investors[stor5].field_0 = 0
                    investors[stor5].field_256 = 0
                    investors[stor5].field_512 = 0
                numInvestors--
                emit LOG_ZeroSend()
                emit LOG_ZeroSend()
                emit LOG_InvestorExit(investors[1].field_0, 0);
        else:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) < investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested:
                if invested < investors[stor3[investors[1].field_0]].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invested -= investors[stor3[investors[1].field_0]].field_256
                    investors[stor3[investors[1].field_0]].field_0 = 0
                    investors[stor3[investors[1].field_0]].field_256 = 0
                    investors[stor3[investors[1].field_0]].field_512 = 0
                    investorIDs[stor4[1].field_0] = 0
                    if investorIDs[stor4[1].field_0] != numInvestors:
                        investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                        investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                        investors[stor3[investors[1].field_0]].field_64 = 0
                        investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        investors[stor5].field_0 = 0
                        investors[stor5].field_256 = 0
                        investors[stor5].field_512 = 0
                    numInvestors--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    emit LOG_InvestorExit(investors[1].field_0, 0);
            else:
                if invested < investors[stor3[investors[1].field_0]].field_256:
                    isStopped = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invested -= investors[stor3[investors[1].field_0]].field_256
                    investors[stor3[investors[1].field_0]].field_0 = 0
                    investors[stor3[investors[1].field_0]].field_256 = 0
                    investors[stor3[investors[1].field_0]].field_512 = 0
                    investorIDs[stor4[1].field_0] = 0
                    if investorIDs[stor4[1].field_0] != numInvestors:
                        investorIDs[stor4[stor5].field_0] = investorIDs[stor4[1].field_0]
                        investors[stor3[investors[1].field_0]].field_0 = investors[stor5].field_0
                        investors[stor3[investors[1].field_0]].field_64 = 0
                        investors[stor3[investors[1].field_0]].field_256 = investors[stor5].field_256
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        investors[stor5].field_0 = 0
                        investors[stor5].field_256 = 0
                        investors[stor5].field_512 = 0
                    numInvestors--
                    if not investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000):
                        emit LOG_ZeroSend()
                    else:
                        if eth.balance(this.address) < investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000):
                            emit LOG_ValueIsTooBig()
                        else:
                            call investors[1].field_0 with:
                               value investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000) wei
                                 gas stor2 wei
                            if not ext_call.success:
                                emit LOG_FailedSend(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
                                if houseAddress != investors[1].field_0:
                                    call houseAddress with:
                                       value investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000) wei
                                         gas stor2 wei
                                    if not ext_call.success:
                                        emit LOG_FailedSend(houseAddress, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
                            emit LOG_SuccessfulSend(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
                    if not (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000:
                        emit LOG_ZeroSend()
                    else:
                        if eth.balance(this.address) < (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000:
                            emit LOG_ValueIsTooBig()
                        else:
                            call houseAddress with:
                               value (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000 wei
                                 gas stor2 wei
                            if not ext_call.success:
                                emit LOG_FailedSend(houseAddress, (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000);
                                if houseAddress != houseAddress:
                                    call houseAddress with:
                                       value (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000 wei
                                         gas stor2 wei
                                    if not ext_call.success:
                                        emit LOG_FailedSend(houseAddress, (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000);
                            emit LOG_SuccessfulSend(houseAddress, (50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000);
                    emit LOG_InvestorExit(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) - ((50 * investors[stor3[investors[1].field_0]].field_256) + (50 * investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invested) - (50 * investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invested) / 10000));
    require numInvestors <= 10
    numInvestors++
    investorIDs[address(msg.sender)] = numInvestors + 1
    investors[stor5 + 1].field_0 = msg.sender
    investors[stor5 + 1].field_256 = msg.value
    invested += msg.value
    emit LOG_InvestorEntrance(msg.sender, msg.value);
}



}
