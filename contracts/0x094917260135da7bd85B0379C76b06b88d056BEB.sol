contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
array of struct stor10;
array of struct stor11;
array of struct stor13;
array of struct stor14;

function _fallback() {
    mem[96 len -8217] = code.data[9076 len -8217]
    mem[64] = -8121
    stor2 = mem[140 len 20]
    stor0 = msg.sender
    stor1.length = (2 * mem[mem[96] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor11.length = 1
    if not stor11.length <= 1:
        idx = 2
        while 2 * stor11.length > idx:
            address(stor11[idx].field_0) = 0
            stor11[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor10.length = 1
    if not stor10.length <= 1:
        idx = 12
        while 12 * stor10.length > idx:
            address(stor10[idx].field_0) = 0
            stor10[idx].field_256 = 0
            stor10[idx].field_512 = 0
            stor10[idx].field_768 = 0
            stor10[idx].field_1024 = 0
            stor10[idx].field_1280 = 0
            stor10[idx].field_1536 = 0
            uint8(stor10[idx].field_1792) = 0
            stor10[idx].field_2048 = 0
            stor10[idx].field_2304 = 0
            stor10[idx].field_2560 = 0
            idx = idx + 12
            continue 
    stor13.length = 1
    if not stor13.length <= 1:
        idx = 9
        while 9 * stor13.length > idx:
            stor13[idx].field_0 = 0
            address(stor13[idx].field_256) = 0
            stor13[idx].field_512 = 0
            stor13[idx].field_768 = 0
            Mask(176, 0, stor13[idx].field_1024) = 0
            stor13[idx].field_1280 = 0
            stor13[idx].field_1536 = 0
            stor13[idx].field_1792 = 0
            uint8(stor13[idx].field_2048) = 0
            idx = idx + 9
            continue 
    stor14.length = 1
    if not stor14.length <= 1:
        idx = 7
        while 7 * stor14.length > idx:
            stor14[idx].field_0 = 0
            stor14[idx].field_256 = 0
            stor14[idx].field_512 = 0
            stor14[idx].field_768 = 0
            stor14[idx].field_1024 = 0
            stor14[idx].field_1280 = 0
            Mask(168, 0, stor14[idx].field_1536) = 0
            idx = idx + 7
            continue 
    return code.data[859 len 8217]
}



// =====================  Runtime code  =====================


address creatorAddress;
array of uint256 projectName;
address lastDaoAddress;
uint256 smartContractStartDate;
address daoManagerAddress;
uint256 minMinutesPeriods;
uint256 maxMinutesProposalPeriod;
uint256 maxMinutesFundingPeriod;
uint256 maxInflationRate;
mapping of uint256 pendingFees;
mapping of struct boardMeetings;
array of struct contractors;
mapping of uint256 stor12;
array of struct proposals;
array of struct daoRulesProposals;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
bool stor21; offset 256
uint8 stor21;
address stor21; offset 8
uint256 stor21; offset 8

function creator() {
    return creatorAddress
}

function lastDao() {
    return lastDaoAddress
}

function BoardMeetings(uint256 arg1) {
    require arg1 < boardMeetings.length
    return boardMeetings[arg1].field_0, 
           boardMeetings[arg1].field_256,
           boardMeetings[arg1].field_512,
           boardMeetings[arg1].field_768,
           boardMeetings[arg1].field_1024,
           boardMeetings[arg1].field_1280,
           boardMeetings[arg1].field_1536,
           bool(boardMeetings[arg1].field_1792),
           boardMeetings[arg1].field_2048,
           boardMeetings[arg1].field_2304,
           boardMeetings[arg1].field_2560
}

function PendingFees(address arg1) {
    return pendingFees[address(arg1)]
}

function smartContractStartDate() {
    return smartContractStartDate
}

function minMinutesPeriods() {
    return minMinutesPeriods
}

function maxInflationRate() {
    return maxInflationRate
}

function Contractors(uint256 arg1) {
    require arg1 < contractors.length
    return contractors[arg1].field_0, contractors[arg1].field_256
}

function maxMinutesProposalPeriod() {
    return maxMinutesProposalPeriod
}

function projectName() {
    return projectName[0 len projectName.length]
}

function maxMinutesFundingPeriod() {
    return maxMinutesFundingPeriod
}

function DaoRulesProposals(uint256 arg1) {
    require arg1 < daoRulesProposals.length
    return daoRulesProposals[arg1].field_0, 
           daoRulesProposals[arg1].field_256,
           daoRulesProposals[arg1].field_512,
           daoRulesProposals[arg1].field_768,
           daoRulesProposals[arg1].field_1024,
           daoRulesProposals[arg1].field_1280,
           bool(daoRulesProposals[arg1].field_1536),
           daoRulesProposals[arg1].field_1544
}

function Proposals(uint256 arg1) {
    require arg1 < proposals.length
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           bool(proposals[arg1].field_1024),
           bool(proposals[arg1].field_1032),
           proposals[arg1].field_1024,
           proposals[arg1].field_1280,
           proposals[arg1].field_1536,
           proposals[arg1].field_1792,
           bool(proposals[arg1].field_2048)
}

function daoManager() {
    return daoManagerAddress
}

function _fallback() payable {
    revert 
}

function numberOfContractors() {
    return (contractors.length - 1)
}

function numberOfBoardMeetings() {
    return (boardMeetings.length - 1)
}

function DaoRules() {
    return stor15, stor16, stor17, stor18, stor19, stor20, bool(uint8(stor21.field_0)), address(stor21.field_8)
}

function minQuorum() {
    require ext_code.size(daoManagerAddress)
    call daoManagerAddress.totalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require stor16
    return (ext_call.return_data[0] / stor16)
}

function withdrawBoardMeetingFees() {
    pendingFees[address(msg.sender)] = 0
    call msg.sender with:
       value pendingFees[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit Withdrawal(pendingFees[address(msg.sender)], msg.sender);
    return 1
}

function initDao(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) {
    require not smartContractStartDate
    maxInflationRate = arg2
    minMinutesPeriods = arg3
    maxMinutesFundingPeriod = arg4
    maxMinutesProposalPeriod = arg5
    stor16 = arg6
    stor17 = arg7
    stor18 = arg8
    stor19 = arg9
    stor20 = arg10
    daoManagerAddress = arg1
    smartContractStartDate = block.timestamp
}

function updateClientOfContractorManagers(uint256 arg1, uint256 arg2) {
    require arg1 >= 1
    require arg2 <= contractors.length - 1
    idx = arg1
    while idx <= arg2:
        require idx < contractors.length
        mem[0] = 11
        mem[96] = 0x394bcb4900000000000000000000000000000000000000000000000000000000
        mem[100] = address(stor21.field_8)
        require ext_code.size(contractors[idx].field_0)
        call contractors[idx].field_0.updateClient(address rg1) with:
             gas gas_remaining - 50 wei
            args address(stor21.field_8)
        require ext_call.success
        idx = idx + 1
        continue 
}

function cloneContractor(address arg1, uint256 arg2) {
    require not stor16
    if not stor12[address(arg1)]:
        contractors.length++
        if not contractors.length <= contractors.length + 1:
            idx = 2 * contractors.length + 1
            while 2 * contractors.length > idx:
                contractors[idx].field_0 = 0
                contractors[idx].field_256 = 0
                idx = idx + 2
                continue 
        require contractors.length < contractors.length
        stor12[address(arg1)] = contractors.length
        contractors[contractors.length].field_0 = arg1
        contractors[contractors.length].field_256 = arg2
}

function vote(uint256 arg1, bool arg2) {
    require arg1 < boardMeetings.length
    require not stor[(12 * arg1) + ('name', 'boardMeetings', 10) + 11][address(msg.sender)].field_0
    require block.timestamp >= boardMeetings[arg1].field_768
    require block.timestamp <= boardMeetings[arg1].field_1536
    require ext_code.size(daoManagerAddress)
    call daoManagerAddress.balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    stor[(12 * arg1) + ('name', 'boardMeetings', 10) + 11][address(msg.sender)].field_0 = 1
    if not arg2:
        boardMeetings[arg1].field_2560 += ext_call.return_data[0]
    else:
        boardMeetings[arg1].field_2304 += ext_call.return_data[0]
    if boardMeetings[arg1].field_1024 > 0:
        if boardMeetings[arg1].field_256:
            require boardMeetings[arg1].field_256 < proposals.length
            if proposals[stor10[arg1].field_256].field_512:
                require 100 * boardMeetings[arg1].field_1024 / 100 == boardMeetings[arg1].field_1024
                require 100 * boardMeetings[arg1].field_1024
                require 100 * boardMeetings[arg1].field_1024 * ext_call.return_data[0] / 100 * boardMeetings[arg1].field_1024 == ext_call.return_data[0]
                require ext_code.size(daoManagerAddress)
                call daoManagerAddress.totalSupply() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ((100 * block.timestamp * stor20) - (100 * boardMeetings[arg1].field_768 * stor20) / 876000 * 24 * 3600) + 100
                if boardMeetings[arg1].field_1280 + (100 * ext_call.return_data[0] * boardMeetings[arg1].field_1024 / ext_call.return_data[0] / ((100 * block.timestamp * stor20) - (100 * boardMeetings[arg1].field_768 * stor20) / 876000 * 24 * 3600) + 100) <= boardMeetings[arg1].field_1024:
                    boardMeetings[arg1].field_1280 += 100 * ext_call.return_data[0] * boardMeetings[arg1].field_1024 / ext_call.return_data[0] / ((100 * block.timestamp * stor20) - (100 * boardMeetings[arg1].field_768 * stor20) / 876000 * 24 * 3600) + 100
                    pendingFees[address(msg.sender)] += 100 * ext_call.return_data[0] * boardMeetings[arg1].field_1024 / ext_call.return_data[0] / ((100 * block.timestamp * stor20) - (100 * boardMeetings[arg1].field_768 * stor20) / 876000 * 24 * 3600) + 100
                else:
                    boardMeetings[arg1].field_1280 = boardMeetings[arg1].field_1024
                    pendingFees[address(msg.sender)] = boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 + pendingFees[address(msg.sender)]
    emit Voted(boardMeetings[arg1].field_256, boardMeetings[arg1].field_512, arg2, arg1, msg.sender);
    require ext_code.size(daoManagerAddress)
    call daoManagerAddress.blockTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, boardMeetings[arg1].field_1536
    require ext_call.success
}

function orderContractorProposal(uint256 arg1) {
    require arg1 < proposals.length
    require proposals[arg1].field_0 < boardMeetings.length
    require not boardMeetings[stor13[arg1].field_0].field_1792
    require proposals[arg1].field_2048
    if not proposals[arg1].field_1280:
        proposals[arg1].field_2048 = 0
        if not proposals[arg1].field_768:
            return 0
        require ext_code.size(proposals[arg1].field_256)
        call proposals[arg1].field_256.order(uint256 rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args arg1, proposals[arg1].field_512, proposals[arg1].field_768
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(daoManagerAddress)
        call daoManagerAddress.sendTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args proposals[arg1].field_256, proposals[arg1].field_768
        require ext_call.success
        require ext_call.return_data[0]
        emit SentToContractor(proposals[arg1].field_768, arg1, proposals[arg1].field_512, proposals[arg1].field_256);
    else:
        require ext_code.size(daoManagerAddress)
        call daoManagerAddress.FundedAmount(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            proposals[arg1].field_2048 = 0
        else:
            if block.timestamp < boardMeetings[stor13[arg1].field_0].field_2048 + (60 * proposals[arg1].field_1792):
                return 0
            proposals[arg1].field_2048 = 0
            if not ext_call.return_data[0]:
                return 0
        require ext_code.size(proposals[arg1].field_256)
        call proposals[arg1].field_256.order(uint256 rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args arg1, proposals[arg1].field_512, ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(daoManagerAddress)
        call daoManagerAddress.sendTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args proposals[arg1].field_256, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit SentToContractor(ext_call.return_data[0], arg1, proposals[arg1].field_512, proposals[arg1].field_256);
    if not stor12[stor13[arg1].field_256]:
        contractors.length++
        if not contractors.length <= contractors.length + 1:
            idx = 2 * contractors.length + 1
            while 2 * contractors.length > idx:
                contractors[idx].field_0 = 0
                contractors[idx].field_256 = 0
                idx = idx + 2
                continue 
        require contractors.length < contractors.length
        stor12[stor13[arg1].field_256] = contractors.length
        contractors[contractors.length].field_0 = proposals[arg1].field_256
        contractors[contractors.length].field_64 = 0
        contractors[contractors.length].field_256 = block.timestamp
    return 1
}

function newDaoRulesProposal(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7, uint256 arg8) payable {
    require arg1 > 1
    require arg1 <= 10
    require arg3 >= minMinutesPeriods
    require arg4 >= minMinutesPeriods
    require arg3 + arg4 <= maxMinutesProposalPeriod
    require arg5 <= maxInflationRate
    daoRulesProposals.length++
    if not daoRulesProposals.length <= daoRulesProposals.length + 1:
        idx = (7 * daoRulesProposals.length) + 7
        while 7 * daoRulesProposals.length > idx:
            daoRulesProposals[idx].field_0 = 0
            daoRulesProposals[idx].field_256 = 0
            daoRulesProposals[idx].field_512 = 0
            daoRulesProposals[idx].field_768 = 0
            daoRulesProposals[idx].field_1024 = 0
            daoRulesProposals[idx].field_1280 = 0
            daoRulesProposals[idx].field_1536 = 0
            idx = idx + 7
            continue 
    require daoRulesProposals.length < daoRulesProposals.length
    daoRulesProposals[daoRulesProposals.length].field_256 = arg1
    daoRulesProposals[daoRulesProposals.length].field_512 = arg2
    daoRulesProposals[daoRulesProposals.length].field_768 = arg3
    daoRulesProposals[daoRulesProposals.length].field_1024 = arg4
    daoRulesProposals[daoRulesProposals.length].field_1280 = arg5
    daoRulesProposals[daoRulesProposals.length].field_1536 = uint8(arg6)
    daoRulesProposals[daoRulesProposals.length].field_1544 = arg7
    require msg.value >= stor17
    require arg8 + stor18 <= maxMinutesProposalPeriod
    require block.timestamp + (60 * stor18) + (60 * arg8) >= block.timestamp
    require arg8 >= stor19
    require this.address != msg.sender
    boardMeetings.length++
    if not boardMeetings.length <= boardMeetings.length + 1:
        idx = (12 * boardMeetings.length) + 12
        while 12 * boardMeetings.length > idx:
            boardMeetings[idx].field_0 = 0
            boardMeetings[idx].field_256 = 0
            boardMeetings[idx].field_512 = 0
            boardMeetings[idx].field_768 = 0
            boardMeetings[idx].field_1024 = 0
            boardMeetings[idx].field_1280 = 0
            boardMeetings[idx].field_1536 = 0
            boardMeetings[idx].field_1792 = 0
            boardMeetings[idx].field_2048 = 0
            boardMeetings[idx].field_2304 = 0
            boardMeetings[idx].field_2560 = 0
            idx = idx + 12
            continue 
    require boardMeetings.length < boardMeetings.length
    boardMeetings[boardMeetings.length].field_0 = msg.sender
    boardMeetings[boardMeetings.length].field_256 = 0
    boardMeetings[boardMeetings.length].field_512 = daoRulesProposals.length
    boardMeetings[boardMeetings.length].field_1024 = msg.value
    boardMeetings[boardMeetings.length].field_768 = block.timestamp + (60 * stor18)
    boardMeetings[boardMeetings.length].field_1536 = (60 * arg8) + block.timestamp + (60 * stor18)
    boardMeetings[boardMeetings.length].field_1792 = 1
    daoRulesProposals[daoRulesProposals.length].field_0 = boardMeetings.length
    emit DaoRulesProposalAdded(boardMeetings.length, arg1, arg2, arg3, arg4, arg5, arg6, arg7, daoRulesProposals.length);
    return daoRulesProposals.length
}

function newProposal(address arg1, uint256 arg2, uint256 arg3, bool arg4, bool arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) payable {
    if not arg1:
        require arg7
        require not arg2
    else:
        require arg2
        if not arg1:
            require arg7
            require not arg2
    if arg4:
        require not arg5
    if arg7:
        require arg9 >= minMinutesPeriods
        require arg8 <= maxInflationRate
        require arg9 <= maxMinutesFundingPeriod
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        idx = (9 * proposals.length) + 9
        while 9 * proposals.length > idx:
            proposals[idx].field_0 = 0
            proposals[idx].field_256 = 0
            proposals[idx].field_512 = 0
            proposals[idx].field_768 = 0
            proposals[idx].field_1024 = 0
            proposals[idx].field_1280 = 0
            proposals[idx].field_1536 = 0
            proposals[idx].field_1792 = 0
            proposals[idx].field_2048 = 0
            idx = idx + 9
            continue 
    require proposals.length < proposals.length
    proposals[proposals.length].field_256 = arg1
    proposals[proposals.length].field_512 = arg2
    proposals[proposals.length].field_768 = arg3
    proposals[proposals.length].field_1024 = uint8(arg4)
    proposals[proposals.length].field_1032 = uint8(arg5)
    proposals[proposals.length].field_1040 = arg6
    proposals[proposals.length].field_1280 = arg7
    proposals[proposals.length].field_1536 = arg8
    proposals[proposals.length].field_1792 = arg9
    require msg.value >= stor17
    require arg10 + stor18 <= maxMinutesProposalPeriod
    require block.timestamp + (60 * stor18) + (60 * arg10) >= block.timestamp
    require arg10 >= stor19
    require this.address != msg.sender
    boardMeetings.length++
    if not boardMeetings.length <= boardMeetings.length + 1:
        idx = (12 * boardMeetings.length) + 12
        while 12 * boardMeetings.length > idx:
            boardMeetings[idx].field_0 = 0
            boardMeetings[idx].field_256 = 0
            boardMeetings[idx].field_512 = 0
            boardMeetings[idx].field_768 = 0
            boardMeetings[idx].field_1024 = 0
            boardMeetings[idx].field_1280 = 0
            boardMeetings[idx].field_1536 = 0
            boardMeetings[idx].field_1792 = 0
            boardMeetings[idx].field_2048 = 0
            boardMeetings[idx].field_2304 = 0
            boardMeetings[idx].field_2560 = 0
            idx = idx + 12
            continue 
    require boardMeetings.length < boardMeetings.length
    boardMeetings[boardMeetings.length].field_0 = msg.sender
    boardMeetings[boardMeetings.length].field_256 = proposals.length
    boardMeetings[boardMeetings.length].field_512 = 0
    boardMeetings[boardMeetings.length].field_1024 = msg.value
    boardMeetings[boardMeetings.length].field_768 = block.timestamp + (60 * stor18)
    boardMeetings[boardMeetings.length].field_1536 = (60 * arg10) + block.timestamp + (60 * stor18)
    boardMeetings[boardMeetings.length].field_1792 = 1
    proposals[proposals.length].field_0 = boardMeetings.length
    proposals[proposals.length].field_2048 = 1
    if not arg2:
        if arg7:
            emit FundingProposalAdded(proposals[proposals.length].field_0, proposals[proposals.length].field_768, proposals[proposals.length].field_1024, proposals[proposals.length].field_1280, arg8, arg9, proposals.length, 0);
    else:
        emit ContractorProposalAdded(proposals[proposals.length].field_0, proposals[proposals.length].field_768, proposals.length, proposals[proposals.length].field_256, proposals[proposals.length].field_512);
        if arg7:
            emit FundingProposalAdded(proposals[proposals.length].field_0, proposals[proposals.length].field_768, proposals[proposals.length].field_1024, proposals[proposals.length].field_1280, arg8, arg9, proposals.length, 1);
    return proposals.length
}

function executeDecision(uint256 arg1) {
    require arg1 < boardMeetings.length
    require boardMeetings[arg1].field_256 < proposals.length
    require block.timestamp >= boardMeetings[arg1].field_1536
    require boardMeetings[arg1].field_1792
    boardMeetings[arg1].field_1792 = 0
    if not proposals[stor10[arg1].field_256].field_512:
        proposals[stor10[arg1].field_256].field_2048 = 0
    require ext_code.size(daoManagerAddress)
    call daoManagerAddress.totalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require stor16
    if boardMeetings[arg1].field_1024 <= 0:
        if boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 > 0:
            call daoManagerAddress with:
               value boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
            proposals[stor10[arg1].field_256].field_2048 = 0
            emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
            return 0
        if boardMeetings[arg1].field_2304 <= boardMeetings[arg1].field_2560:
            proposals[stor10[arg1].field_256].field_2048 = 0
            emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
            return 0
        boardMeetings[arg1].field_2048 = block.timestamp
        if boardMeetings[arg1].field_256:
            if proposals[stor10[arg1].field_256].field_1280:
                require ext_code.size(daoManagerAddress)
                call daoManagerAddress.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), proposals[stor10[arg1].field_256].field_1280, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, proposals[stor10[arg1].field_256].field_1536, boardMeetings[arg1].field_256
                require ext_call.success
                if proposals[stor10[arg1].field_256].field_512:
                    if proposals[stor10[arg1].field_256].field_1024:
                        require ext_code.size(proposals[stor10[arg1].field_256].field_256)
                        call proposals[stor10[arg1].field_256].field_256.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), 0, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, maxInflationRate, boardMeetings[arg1].field_256
                        require ext_call.success
        else:
            require boardMeetings[arg1].field_512 < daoRulesProposals.length
            stor15 = daoRulesProposals[stor10[arg1].field_512].field_0
            stor16 = daoRulesProposals[stor10[arg1].field_512].field_256
            stor19 = daoRulesProposals[stor10[arg1].field_512].field_1024
            stor17 = daoRulesProposals[stor10[arg1].field_512].field_512
            stor18 = daoRulesProposals[stor10[arg1].field_512].field_768
            stor20 = daoRulesProposals[stor10[arg1].field_512].field_1280
            uint8(stor21.field_0) = 0
            stor21.field_256 % 1 = 0
            require ext_code.size(daoManagerAddress)
            if not daoRulesProposals[stor10[arg1].field_512].field_1536:
                call daoManagerAddress.disableTransfer() with:
                     gas gas_remaining - 50 wei
            else:
                call daoManagerAddress.ableTransfer() with:
                     gas gas_remaining - 50 wei
            require ext_call.success
            if daoRulesProposals[stor10[arg1].field_512].field_1544:
                if daoRulesProposals[stor10[arg1].field_512].field_1544 != this.address:
                    Mask(248, 0, stor21.field_8) = daoRulesProposals[stor10[arg1].field_512].field_1544
                    require ext_code.size(daoManagerAddress)
                    call daoManagerAddress.updateClient(address rg1) with:
                         gas gas_remaining - 50 wei
                        args daoRulesProposals[stor10[arg1].field_512].field_1544
                    require ext_call.success
                    emit DaoUpgraded(daoRulesProposals[stor10[arg1].field_512].field_1544);
        emit ProposalClosed(arg1, 0, 1, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
    else:
        if not boardMeetings[arg1].field_256:
            if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
                if boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 > 0:
                    call daoManagerAddress with:
                       value boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
                    proposals[stor10[arg1].field_256].field_2048 = 0
                    emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                    return 0
                if boardMeetings[arg1].field_2304 <= boardMeetings[arg1].field_2560:
                    proposals[stor10[arg1].field_256].field_2048 = 0
                    emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                    return 0
                boardMeetings[arg1].field_2048 = block.timestamp
                if boardMeetings[arg1].field_256:
                    if proposals[stor10[arg1].field_256].field_1280:
                        require ext_code.size(daoManagerAddress)
                        call daoManagerAddress.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), proposals[stor10[arg1].field_256].field_1280, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, proposals[stor10[arg1].field_256].field_1536, boardMeetings[arg1].field_256
                        require ext_call.success
                        if proposals[stor10[arg1].field_256].field_512:
                            if proposals[stor10[arg1].field_256].field_1024:
                                require ext_code.size(proposals[stor10[arg1].field_256].field_256)
                                call proposals[stor10[arg1].field_256].field_256.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), 0, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, maxInflationRate, boardMeetings[arg1].field_256
                                require ext_call.success
                else:
                    require boardMeetings[arg1].field_512 < daoRulesProposals.length
                    stor15 = daoRulesProposals[stor10[arg1].field_512].field_0
                    stor16 = daoRulesProposals[stor10[arg1].field_512].field_256
                    stor19 = daoRulesProposals[stor10[arg1].field_512].field_1024
                    stor17 = daoRulesProposals[stor10[arg1].field_512].field_512
                    stor18 = daoRulesProposals[stor10[arg1].field_512].field_768
                    stor20 = daoRulesProposals[stor10[arg1].field_512].field_1280
                    uint8(stor21.field_0) = 0
                    stor21.field_256 % 1 = 0
                    require ext_code.size(daoManagerAddress)
                    if not daoRulesProposals[stor10[arg1].field_512].field_1536:
                        call daoManagerAddress.disableTransfer() with:
                             gas gas_remaining - 50 wei
                    else:
                        call daoManagerAddress.ableTransfer() with:
                             gas gas_remaining - 50 wei
                    require ext_call.success
                    if daoRulesProposals[stor10[arg1].field_512].field_1544:
                        if daoRulesProposals[stor10[arg1].field_512].field_1544 != this.address:
                            Mask(248, 0, stor21.field_8) = daoRulesProposals[stor10[arg1].field_512].field_1544
                            require ext_code.size(daoManagerAddress)
                            call daoManagerAddress.updateClient(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args daoRulesProposals[stor10[arg1].field_512].field_1544
                            require ext_call.success
                            emit DaoUpgraded(daoRulesProposals[stor10[arg1].field_512].field_1544);
                emit ProposalClosed(arg1, 0, 1, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
            else:
                boardMeetings[arg1].field_1024 = 0
                pendingFees[stor10[arg1].field_0] += boardMeetings[arg1].field_1024
                if boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 > 0:
                    call daoManagerAddress with:
                       value boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
                    proposals[stor10[arg1].field_256].field_2048 = 0
                    emit ProposalClosed(arg1, boardMeetings[arg1].field_1024, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                    return 0
                if boardMeetings[arg1].field_2304 <= boardMeetings[arg1].field_2560:
                    proposals[stor10[arg1].field_256].field_2048 = 0
                    emit ProposalClosed(arg1, boardMeetings[arg1].field_1024, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                    return 0
                boardMeetings[arg1].field_2048 = block.timestamp
                if boardMeetings[arg1].field_256:
                    if proposals[stor10[arg1].field_256].field_1280:
                        require ext_code.size(daoManagerAddress)
                        call daoManagerAddress.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), proposals[stor10[arg1].field_256].field_1280, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, proposals[stor10[arg1].field_256].field_1536, boardMeetings[arg1].field_256
                        require ext_call.success
                        if proposals[stor10[arg1].field_256].field_512:
                            if proposals[stor10[arg1].field_256].field_1024:
                                require ext_code.size(proposals[stor10[arg1].field_256].field_256)
                                call proposals[stor10[arg1].field_256].field_256.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), 0, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, maxInflationRate, boardMeetings[arg1].field_256
                                require ext_call.success
                else:
                    require boardMeetings[arg1].field_512 < daoRulesProposals.length
                    stor15 = daoRulesProposals[stor10[arg1].field_512].field_0
                    stor16 = daoRulesProposals[stor10[arg1].field_512].field_256
                    stor19 = daoRulesProposals[stor10[arg1].field_512].field_1024
                    stor17 = daoRulesProposals[stor10[arg1].field_512].field_512
                    stor18 = daoRulesProposals[stor10[arg1].field_512].field_768
                    stor20 = daoRulesProposals[stor10[arg1].field_512].field_1280
                    uint8(stor21.field_0) = 0
                    stor21.field_256 % 1 = 0
                    require ext_code.size(daoManagerAddress)
                    if not daoRulesProposals[stor10[arg1].field_512].field_1536:
                        call daoManagerAddress.disableTransfer() with:
                             gas gas_remaining - 50 wei
                    else:
                        call daoManagerAddress.ableTransfer() with:
                             gas gas_remaining - 50 wei
                    require ext_call.success
                    if daoRulesProposals[stor10[arg1].field_512].field_1544:
                        if daoRulesProposals[stor10[arg1].field_512].field_1544 != this.address:
                            Mask(248, 0, stor21.field_8) = daoRulesProposals[stor10[arg1].field_512].field_1544
                            require ext_code.size(daoManagerAddress)
                            call daoManagerAddress.updateClient(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args daoRulesProposals[stor10[arg1].field_512].field_1544
                            require ext_call.success
                            emit DaoUpgraded(daoRulesProposals[stor10[arg1].field_512].field_1544);
                emit ProposalClosed(arg1, boardMeetings[arg1].field_1024, 1, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
        else:
            if proposals[stor10[arg1].field_256].field_512:
                if boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 > 0:
                    call daoManagerAddress with:
                       value boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
                    proposals[stor10[arg1].field_256].field_2048 = 0
                    emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                    return 0
                if boardMeetings[arg1].field_2304 <= boardMeetings[arg1].field_2560:
                    proposals[stor10[arg1].field_256].field_2048 = 0
                    emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                    return 0
                boardMeetings[arg1].field_2048 = block.timestamp
                if boardMeetings[arg1].field_256:
                    if proposals[stor10[arg1].field_256].field_1280:
                        require ext_code.size(daoManagerAddress)
                        call daoManagerAddress.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), proposals[stor10[arg1].field_256].field_1280, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, proposals[stor10[arg1].field_256].field_1536, boardMeetings[arg1].field_256
                        require ext_call.success
                        if proposals[stor10[arg1].field_256].field_512:
                            if proposals[stor10[arg1].field_256].field_1024:
                                require ext_code.size(proposals[stor10[arg1].field_256].field_256)
                                call proposals[stor10[arg1].field_256].field_256.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), 0, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, maxInflationRate, boardMeetings[arg1].field_256
                                require ext_call.success
                else:
                    require boardMeetings[arg1].field_512 < daoRulesProposals.length
                    stor15 = daoRulesProposals[stor10[arg1].field_512].field_0
                    stor16 = daoRulesProposals[stor10[arg1].field_512].field_256
                    stor19 = daoRulesProposals[stor10[arg1].field_512].field_1024
                    stor17 = daoRulesProposals[stor10[arg1].field_512].field_512
                    stor18 = daoRulesProposals[stor10[arg1].field_512].field_768
                    stor20 = daoRulesProposals[stor10[arg1].field_512].field_1280
                    uint8(stor21.field_0) = 0
                    stor21.field_256 % 1 = 0
                    require ext_code.size(daoManagerAddress)
                    if not daoRulesProposals[stor10[arg1].field_512].field_1536:
                        call daoManagerAddress.disableTransfer() with:
                             gas gas_remaining - 50 wei
                    else:
                        call daoManagerAddress.ableTransfer() with:
                             gas gas_remaining - 50 wei
                    require ext_call.success
                    if daoRulesProposals[stor10[arg1].field_512].field_1544:
                        if daoRulesProposals[stor10[arg1].field_512].field_1544 != this.address:
                            Mask(248, 0, stor21.field_8) = daoRulesProposals[stor10[arg1].field_512].field_1544
                            require ext_code.size(daoManagerAddress)
                            call daoManagerAddress.updateClient(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args daoRulesProposals[stor10[arg1].field_512].field_1544
                            require ext_call.success
                            emit DaoUpgraded(daoRulesProposals[stor10[arg1].field_512].field_1544);
                emit ProposalClosed(arg1, 0, 1, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
            else:
                if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
                    if boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 > 0:
                        call daoManagerAddress with:
                           value boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
                        proposals[stor10[arg1].field_256].field_2048 = 0
                        emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                        return 0
                    if boardMeetings[arg1].field_2304 <= boardMeetings[arg1].field_2560:
                        proposals[stor10[arg1].field_256].field_2048 = 0
                        emit ProposalClosed(arg1, 0, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                        return 0
                    boardMeetings[arg1].field_2048 = block.timestamp
                    if boardMeetings[arg1].field_256:
                        if proposals[stor10[arg1].field_256].field_1280:
                            require ext_code.size(daoManagerAddress)
                            call daoManagerAddress.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), proposals[stor10[arg1].field_256].field_1280, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, proposals[stor10[arg1].field_256].field_1536, boardMeetings[arg1].field_256
                            require ext_call.success
                            if proposals[stor10[arg1].field_256].field_512:
                                if proposals[stor10[arg1].field_256].field_1024:
                                    require ext_code.size(proposals[stor10[arg1].field_256].field_256)
                                    call proposals[stor10[arg1].field_256].field_256.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), 0, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, maxInflationRate, boardMeetings[arg1].field_256
                                    require ext_call.success
                    else:
                        require boardMeetings[arg1].field_512 < daoRulesProposals.length
                        stor15 = daoRulesProposals[stor10[arg1].field_512].field_0
                        stor16 = daoRulesProposals[stor10[arg1].field_512].field_256
                        stor19 = daoRulesProposals[stor10[arg1].field_512].field_1024
                        stor17 = daoRulesProposals[stor10[arg1].field_512].field_512
                        stor18 = daoRulesProposals[stor10[arg1].field_512].field_768
                        stor20 = daoRulesProposals[stor10[arg1].field_512].field_1280
                        uint8(stor21.field_0) = 0
                        stor21.field_256 % 1 = 0
                        require ext_code.size(daoManagerAddress)
                        if not daoRulesProposals[stor10[arg1].field_512].field_1536:
                            call daoManagerAddress.disableTransfer() with:
                                 gas gas_remaining - 50 wei
                        else:
                            call daoManagerAddress.ableTransfer() with:
                                 gas gas_remaining - 50 wei
                        require ext_call.success
                        if daoRulesProposals[stor10[arg1].field_512].field_1544:
                            if daoRulesProposals[stor10[arg1].field_512].field_1544 != this.address:
                                Mask(248, 0, stor21.field_8) = daoRulesProposals[stor10[arg1].field_512].field_1544
                                require ext_code.size(daoManagerAddress)
                                call daoManagerAddress.updateClient(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args daoRulesProposals[stor10[arg1].field_512].field_1544
                                require ext_call.success
                                emit DaoUpgraded(daoRulesProposals[stor10[arg1].field_512].field_1544);
                    emit ProposalClosed(arg1, 0, 1, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                else:
                    boardMeetings[arg1].field_1024 = 0
                    pendingFees[stor10[arg1].field_0] += boardMeetings[arg1].field_1024
                    if boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 > 0:
                        call daoManagerAddress with:
                           value boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    if boardMeetings[arg1].field_2304 + boardMeetings[arg1].field_2560 < ext_call.return_data[0] / stor16:
                        proposals[stor10[arg1].field_256].field_2048 = 0
                        emit ProposalClosed(arg1, boardMeetings[arg1].field_1024, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                        return 0
                    if boardMeetings[arg1].field_2304 <= boardMeetings[arg1].field_2560:
                        proposals[stor10[arg1].field_256].field_2048 = 0
                        emit ProposalClosed(arg1, boardMeetings[arg1].field_1024, 0, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
                        return 0
                    boardMeetings[arg1].field_2048 = block.timestamp
                    if boardMeetings[arg1].field_256:
                        if proposals[stor10[arg1].field_256].field_1280:
                            require ext_code.size(daoManagerAddress)
                            call daoManagerAddress.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), proposals[stor10[arg1].field_256].field_1280, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, proposals[stor10[arg1].field_256].field_1536, boardMeetings[arg1].field_256
                            require ext_call.success
                            if proposals[stor10[arg1].field_256].field_512:
                                if proposals[stor10[arg1].field_256].field_1024:
                                    require ext_code.size(proposals[stor10[arg1].field_256].field_256)
                                    call proposals[stor10[arg1].field_256].field_256.setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(bool(proposals[stor10[arg1].field_256].field_1032)), 0, proposals[stor10[arg1].field_256].field_768, proposals[stor10[arg1].field_256].field_1792, maxInflationRate, boardMeetings[arg1].field_256
                                    require ext_call.success
                    else:
                        require boardMeetings[arg1].field_512 < daoRulesProposals.length
                        stor15 = daoRulesProposals[stor10[arg1].field_512].field_0
                        stor16 = daoRulesProposals[stor10[arg1].field_512].field_256
                        stor19 = daoRulesProposals[stor10[arg1].field_512].field_1024
                        stor17 = daoRulesProposals[stor10[arg1].field_512].field_512
                        stor18 = daoRulesProposals[stor10[arg1].field_512].field_768
                        stor20 = daoRulesProposals[stor10[arg1].field_512].field_1280
                        uint8(stor21.field_0) = 0
                        stor21.field_256 % 1 = 0
                        require ext_code.size(daoManagerAddress)
                        if not daoRulesProposals[stor10[arg1].field_512].field_1536:
                            call daoManagerAddress.disableTransfer() with:
                                 gas gas_remaining - 50 wei
                        else:
                            call daoManagerAddress.ableTransfer() with:
                                 gas gas_remaining - 50 wei
                        require ext_call.success
                        if daoRulesProposals[stor10[arg1].field_512].field_1544:
                            if daoRulesProposals[stor10[arg1].field_512].field_1544 != this.address:
                                Mask(248, 0, stor21.field_8) = daoRulesProposals[stor10[arg1].field_512].field_1544
                                require ext_code.size(daoManagerAddress)
                                call daoManagerAddress.updateClient(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args daoRulesProposals[stor10[arg1].field_512].field_1544
                                require ext_call.success
                                emit DaoUpgraded(daoRulesProposals[stor10[arg1].field_512].field_1544);
                    emit ProposalClosed(arg1, boardMeetings[arg1].field_1024, 1, boardMeetings[arg1].field_1024 - boardMeetings[arg1].field_1280, boardMeetings[arg1].field_256, boardMeetings[arg1].field_512);
    return 1
}



}
