contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 7211]




// =====================  Runtime code  =====================


uint256 minMinutesPeriods;
uint256 maxMinutesProposalPeriod;
uint256 maxMinutesFundingPeriod;
uint256 maxInflationRate;
address daoManagerAddress;
uint256 stor5;
mapping of uint256 pendingFeesWithdrawals;
array of struct stor7;
array of struct stor8;
array of struct stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;
array of uint8 stor49791959467252497455735130940088646708311117250336157395101362029847983278005;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;
array of uint8 stor75276140696391174450305814049576319106646922510300487059720162673006384432783;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432784;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432785;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432786;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020072;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020073;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020074;
array of uint8 stor110349606679412691172957834289542550319383271247755660854362242977991410020075;

function pendingFeesWithdrawals(address arg1) {
    return pendingFeesWithdrawals[arg1]
}

function minMinutesPeriods() {
    return minMinutesPeriods
}

function maxInflationRate() {
    return maxInflationRate
}

function maxMinutesProposalPeriod() {
    return maxMinutesProposalPeriod
}

function maxMinutesFundingPeriod() {
    return maxMinutesFundingPeriod
}

function daoManager() {
    return address(daoManagerAddress)
}

function _fallback() payable {
    revert 
}

function DaoRules() {
    return stor10, stor11, stor12, stor13, stor14, stor15, bool(stor16)
}

function minQuorum() {
    require ext_code.size(address(daoManagerAddress))
    call address(daoManagerAddress).TotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require stor11
    return (ext_call.return_data[0] / stor11)
}

function withdrawBoardMeetingFees() {
    pendingFeesWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingFeesWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function DaoRulesProposals(uint256 arg1) {
    require arg1 < stor9.length
    return uint256(stor9[arg1].field_0), 
           stor6E15[arg1],
           stor6E15[arg1],
           stor6E15[arg1],
           stor6E15[arg1],
           stor6E15[arg1],
           bool(uint8(stor6E15[arg1]))
}

function BoardMeetings(uint256 arg1) {
    require arg1 < stor7.length
    return address(stor[(12 * arg1) + code.data[7179 len 32]]), 
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1],
           bool(storA66C[arg1]),
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1]
}

function Proposals(uint256 arg1) {
    require arg1 < stor8.length
    return uint256(stor8[arg1].field_0), 
           storF3F7[arg1],
           storF3F7[arg1],
           storF3F7[arg1],
           bool(uint8(storF3F7[arg1].field_0)),
           bool(uint8(storF3F7[arg1].field_8)),
           address(storF3F7[arg1].field_0),
           storF3F7[arg1],
           storF3F7[arg1],
           storF3F7[arg1],
           bool(storF3F7[arg1])
}

function initDao(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) {
    require 0 == stor11
    uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
    maxInflationRate = arg2
    minMinutesPeriods = arg3
    maxMinutesFundingPeriod = arg4
    maxMinutesProposalPeriod = arg5
    stor11 = arg6
    stor12 = arg7
    stor13 = arg8
    stor14 = arg9
    stor15 = arg10
    stor7.length = 1
    if not stor7.length <= 1:
        idx = 12
        while 12 * stor7.length > idx:
            address(stor7[idx].field_0) = 0
            uint256(stor7[idx].field_256) = 0
            uint256(stor7[idx].field_512) = 0
            uint256(stor7[idx].field_768) = 0
            uint256(stor7[idx].field_1024) = 0
            uint256(stor7[idx].field_1280) = 0
            uint256(stor7[idx].field_1536) = 0
            uint8(stor7[idx].field_1792) = 0
            uint256(stor7[idx].field_2048) = 0
            uint256(stor7[idx].field_2304) = 0
            uint256(stor7[idx].field_2560) = 0
            idx = idx + 12
            continue 
    stor8.length = 1
    if not stor8.length <= 1:
        idx = 9
        while 9 * stor8.length > idx:
            uint256(stor8[idx].field_0) = 0
            address(stor8[idx].field_256) = 0
            uint256(stor8[idx].field_512) = 0
            uint256(stor8[idx].field_768) = 0
            Mask(176, 0, stor8[idx].field_1024) = 0
            uint256(stor8[idx].field_1280) = 0
            uint256(stor8[idx].field_1536) = 0
            uint256(stor8[idx].field_1792) = 0
            uint8(stor8[idx].field_2048) = 0
            idx = idx + 9
            continue 
    stor9.length = 1
    if not stor9.length <= 1:
        idx = 7
        while 7 * stor9.length > idx:
            uint256(stor9[idx].field_0) = 0
            uint256(stor9[idx].field_256) = 0
            uint256(stor9[idx].field_512) = 0
            uint256(stor9[idx].field_768) = 0
            uint256(stor9[idx].field_1024) = 0
            uint256(stor9[idx].field_1280) = 0
            uint8(stor9[idx].field_1536) = 0
            idx = idx + 7
            continue 
}

function orderContractorProposal(uint256 arg1) {
    require arg1 < stor8.length
    require uint256(stor8[arg1].field_0) < stor7.length
    require not uint8(stor8[uint256(stor8[arg1].field_0)].field_1792)
    require uint8(stor8[arg1].field_2048)
    if 0 == uint256(stor8[arg1].field_1280):
        uint8(stor8[arg1].field_2048) = 0
        if not uint256(stor8[arg1].field_768):
            return 0
        require ext_code.size(address(stor8[arg1].field_256))
        call address(stor8[arg1].field_256).order(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args uint256(stor8[arg1].field_512), uint256(stor8[arg1].field_768)
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(address(daoManagerAddress))
        call address(daoManagerAddress).sendTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(stor8[arg1].field_256), uint256(stor8[arg1].field_768)
        require ext_call.success
        require ext_call.return_data[0]
        emit SentToContractor(uint256(stor8[arg1].field_768), uint256(stor8[arg1].field_512), address(stor8[arg1].field_256));
    else:
        require ext_code.size(address(daoManagerAddress))
        call address(daoManagerAddress).FundedAmount(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            uint8(stor8[arg1].field_2048) = 0
        else:
            if block.timestamp < (60 * uint256(stor8[arg1].field_1792)) + uint256(stor8[uint256(stor8[arg1].field_0)].field_2048):
                return 0
            uint8(stor8[arg1].field_2048) = 0
            if not ext_call.return_data[0]:
                return 0
        require ext_code.size(address(stor8[arg1].field_256))
        call address(stor8[arg1].field_256).order(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args uint256(stor8[arg1].field_512), ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(address(daoManagerAddress))
        call address(daoManagerAddress).sendTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(stor8[arg1].field_256), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit SentToContractor(ext_call.return_data[0], uint256(stor8[arg1].field_512), address(stor8[arg1].field_256));
    return 1
}

function newDaoRulesProposal(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6, uint256 arg7) payable {
    require arg1 > 1
    require arg1 <= 10
    require arg3 >= minMinutesPeriods
    require arg4 >= minMinutesPeriods
    require arg4 + arg3 <= maxMinutesProposalPeriod
    require arg5 <= maxInflationRate
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = (7 * stor9.length) + 7
        while 7 * stor9.length > idx:
            uint256(stor9[idx].field_0) = 0
            uint256(stor9[idx].field_256) = 0
            uint256(stor9[idx].field_512) = 0
            uint256(stor9[idx].field_768) = 0
            uint256(stor9[idx].field_1024) = 0
            uint256(stor9[idx].field_1280) = 0
            uint8(stor9[idx].field_1536) = 0
            idx = idx + 7
            continue 
    require stor9.length < stor9.length
    stor6E15[stor9.length] = arg1
    stor6E15[stor9.length] = arg2
    stor6E15[stor9.length] = arg3
    stor6E15[stor9.length] = arg4
    stor6E15[stor9.length] = arg5
    uint256(stor6E15[stor9.length]) = arg6 or Mask(248, 8, uint256(stor6E15[stor9.length]))
    require msg.value >= stor12
    require arg7 + stor13 <= maxMinutesProposalPeriod
    require block.timestamp + (60 * arg7) + (60 * stor13) >= block.timestamp
    require arg7 >= stor14
    require this.address != msg.sender
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = (12 * stor7.length) + 12
        while 12 * stor7.length > idx:
            address(stor7[idx].field_0) = 0
            uint256(stor7[idx].field_256) = 0
            uint256(stor7[idx].field_512) = 0
            uint256(stor7[idx].field_768) = 0
            uint256(stor7[idx].field_1024) = 0
            uint256(stor7[idx].field_1280) = 0
            uint256(stor7[idx].field_1536) = 0
            uint8(stor7[idx].field_1792) = 0
            uint256(stor7[idx].field_2048) = 0
            uint256(stor7[idx].field_2304) = 0
            uint256(stor7[idx].field_2560) = 0
            idx = idx + 12
            continue 
    require stor7.length < stor7.length
    uint256(stor[(12 * stor7.length) + code.data[7179 len 32]]) = msg.sender or Mask(96, 160, uint256(stor[(12 * stor7.length) + code.data[7179 len 32]]))
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = stor9.length
    storA66C[stor7.length] = msg.value
    storA66C[stor7.length] = block.timestamp + (60 * stor13)
    storA66C[stor7.length] = (60 * arg7) + block.timestamp + (60 * stor13)
    storA66C[stor7.length] = 1
    uint256(stor9[stor9.length].field_0) = stor7.length
    emit DaoRulesProposalAdded(arg1, arg2, arg3, arg4, arg5, arg6, stor9.length);
    return stor9.length
}

function newProposal(address arg1, uint256 arg2, uint256 arg3, bool arg4, bool arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) payable {
    if 0 == arg1:
        require arg7 != 0
        require 0 == arg2
    else:
        require arg2 != 0
        if 0 == arg1:
            require arg7 != 0
            require 0 == arg2
    if arg4:
        require not arg5
    if arg7 != 0:
        require arg9 >= minMinutesPeriods
        require arg8 <= maxInflationRate
        require arg9 <= maxMinutesFundingPeriod
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = (9 * stor8.length) + 9
        while 9 * stor8.length > idx:
            uint256(stor8[idx].field_0) = 0
            address(stor8[idx].field_256) = 0
            uint256(stor8[idx].field_512) = 0
            uint256(stor8[idx].field_768) = 0
            Mask(176, 0, stor8[idx].field_1024) = 0
            uint256(stor8[idx].field_1280) = 0
            uint256(stor8[idx].field_1536) = 0
            uint256(stor8[idx].field_1792) = 0
            uint8(stor8[idx].field_2048) = 0
            idx = idx + 9
            continue 
    require stor8.length < stor8.length
    uint256(stor8[stor8.length].field_256) = arg1 or Mask(96, 160, uint256(stor8[stor8.length].field_256))
    uint256(stor8[stor8.length].field_512) = arg2
    uint256(stor8[stor8.length].field_768) = arg3
    uint8(stor8[stor8.length].field_1024) = uint8(arg4)
    uint8(stor8[stor8.length].field_1032) = uint8(arg5)
    Mask(240, 0, stor8[stor8.length].field_1040) = Mask(240, 0, arg6)
    Mask(80, 0, stor8[stor8.length].field_1200) = Mask(80, 176, arg4) >> 176
    Mask(80, 0, stor8[stor8.length].field_1200) = Mask(80, 168, arg5) >> 168
    uint256(stor8[stor8.length].field_1280) = arg7
    uint256(stor8[stor8.length].field_1536) = arg8
    uint256(stor8[stor8.length].field_1792) = arg9
    require msg.value >= stor12
    require arg10 + stor13 <= maxMinutesProposalPeriod
    require block.timestamp + (60 * arg10) + (60 * stor13) >= block.timestamp
    require arg10 >= stor14
    require this.address != msg.sender
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = (12 * stor7.length) + 12
        while 12 * stor7.length > idx:
            address(stor7[idx].field_0) = 0
            uint256(stor7[idx].field_256) = 0
            uint256(stor7[idx].field_512) = 0
            uint256(stor7[idx].field_768) = 0
            uint256(stor7[idx].field_1024) = 0
            uint256(stor7[idx].field_1280) = 0
            uint256(stor7[idx].field_1536) = 0
            uint8(stor7[idx].field_1792) = 0
            uint256(stor7[idx].field_2048) = 0
            uint256(stor7[idx].field_2304) = 0
            uint256(stor7[idx].field_2560) = 0
            idx = idx + 12
            continue 
    require stor7.length < stor7.length
    uint256(stor[(12 * stor7.length) + code.data[7179 len 32]]) = msg.sender or Mask(96, 160, uint256(stor[(12 * stor7.length) + code.data[7179 len 32]]))
    storA66C[stor7.length] = stor8.length
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = msg.value
    storA66C[stor7.length] = block.timestamp + (60 * stor13)
    storA66C[stor7.length] = (60 * arg10) + block.timestamp + (60 * stor13)
    storA66C[stor7.length] = 1
    uint256(stor8[stor8.length].field_0) = stor7.length
    uint8(stor8[stor8.length].field_2048) = 1
    emit ProposalAdded(uint256(stor8[stor8.length].field_512), uint256(stor8[stor8.length].field_768), uint256(stor8[stor8.length].field_1280), arg9, stor8.length, address(stor8[stor8.length].field_256), address(stor8[stor8.length].field_1040));
    return stor8.length
}

function vote(uint256 arg1, bool arg2) {
    require arg1 < stor7.length
    require not uint8(stor[(12 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c9396d][address(msg.sender)])
    require block.timestamp >= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 3])
    require block.timestamp <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 6])
    require ext_code.size(address(daoManagerAddress))
    call address(daoManagerAddress).0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    uint8(stor[code.data[7179 len 32] + (12 * arg1) + 11][address(msg.sender)]) = 1
    if not arg2:
        uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) += ext_call.return_data[0]
    else:
        uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) += ext_call.return_data[0]
    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) > 0:
        if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) != 0:
            require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) < stor8.length
            if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])]:
                require 100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) / 100 == uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4])
                require 100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4])
                require 100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) * ext_call.return_data[0] / 100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) == ext_call.return_data[0]
                require ext_code.size(address(daoManagerAddress))
                call address(daoManagerAddress).TotalSupply() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ((100 * block.timestamp * stor15) - (100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 3]) * stor15) / 876000 * 24 * 3600) + 100
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) + (100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) * ext_call.return_data[0] / ext_call.return_data[0] / ((100 * block.timestamp * stor15) - (100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 3]) * stor15) / 876000 * 24 * 3600) + 100) <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]):
                    uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) += 100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) * ext_call.return_data[0] / ext_call.return_data[0] / ((100 * block.timestamp * stor15) - (100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 3]) * stor15) / 876000 * 24 * 3600) + 100
                    pendingFeesWithdrawals[address(msg.sender)] += 100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) * ext_call.return_data[0] / ext_call.return_data[0] / ((100 * block.timestamp * stor15) - (100 * uint256(stor[code.data[7179 len 32] + (12 * arg1) + 3]) * stor15) / 876000 * 24 * 3600) + 100
                else:
                    uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) = uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4])
                    pendingFeesWithdrawals[address(msg.sender)] = uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) + pendingFeesWithdrawals[address(msg.sender)]
    require ext_code.size(address(daoManagerAddress))
    call address(daoManagerAddress).blockTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, uint256(stor[code.data[7179 len 32] + (12 * arg1) + 6])
    require ext_call.success
}

function executeDecision(uint256 arg1) {
    require arg1 < stor7.length
    require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) < stor8.length
    require block.timestamp >= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 6])
    require uint8(stor[code.data[7179 len 32] + (12 * arg1) + 7])
    uint8(stor[code.data[7179 len 32] + (12 * arg1) + 7]) = 0
    if 0 == storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])]:
        storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
    require ext_code.size(address(daoManagerAddress))
    call address(daoManagerAddress).TotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require stor11
    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) <= 0:
        if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) > 0:
            call address(daoManagerAddress) with:
               value uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
            storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
            emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                    0,
                                    arg1,
            return 0
        if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]):
            storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
            emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                    0,
                                    arg1,
            return 0
        uint256(stor[code.data[7179 len 32] + (12 * arg1) + 8]) = block.timestamp
        if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) != 0:
            if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                require ext_code.size(address(daoManagerAddress))
                call address(daoManagerAddress).setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                require ext_call.success
                if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                    if uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_0):
                        require ext_code.size(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])])
                        call storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), 0, storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], maxInflationRate, uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                        require ext_call.success
        else:
            require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2]) < stor9.length
            stor10 = uint256(stor9[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])].field_0)
            stor11 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
            stor14 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
            stor12 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
            stor13 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
            stor15 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
            stor16 = uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])])
            require ext_code.size(address(daoManagerAddress))
            if not uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]):
                call address(daoManagerAddress).disableTransfer() with:
                     gas gas_remaining - 50 wei
            else:
                call address(daoManagerAddress).ableTransfer() with:
                     gas gas_remaining - 50 wei
            require ext_call.success
        emit BoardMeetingClosed(0, 1, arg1);
    else:
        if 0 == uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]):
            if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) > 0:
                    call address(daoManagerAddress) with:
                       value uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
                    storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                    emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                            0,
                                            arg1,
                    return 0
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]):
                    storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                    emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                            0,
                                            arg1,
                    return 0
                uint256(stor[code.data[7179 len 32] + (12 * arg1) + 8]) = block.timestamp
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) != 0:
                    if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                        require ext_code.size(address(daoManagerAddress))
                        call address(daoManagerAddress).setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                        require ext_call.success
                        if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                            if uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_0):
                                require ext_code.size(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])])
                                call storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), 0, storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], maxInflationRate, uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                                require ext_call.success
                else:
                    require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2]) < stor9.length
                    stor10 = uint256(stor9[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])].field_0)
                    stor11 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor14 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor12 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor13 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor15 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor16 = uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])])
                    require ext_code.size(address(daoManagerAddress))
                    if not uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]):
                        call address(daoManagerAddress).disableTransfer() with:
                             gas gas_remaining - 50 wei
                    else:
                        call address(daoManagerAddress).ableTransfer() with:
                             gas gas_remaining - 50 wei
                    require ext_call.success
                emit BoardMeetingClosed(0, 1, arg1);
            else:
                uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) = 0
                pendingFeesWithdrawals[address(stor[code.data[7179 len 32] + (12 * arg1)])] += uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4])
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) > 0:
                    call address(daoManagerAddress) with:
                       value uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
                    storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                    emit BoardMeetingClosed(uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]), 0, arg1);
                    return 0
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]):
                    storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                    emit BoardMeetingClosed(uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]), 0, arg1);
                    return 0
                uint256(stor[code.data[7179 len 32] + (12 * arg1) + 8]) = block.timestamp
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) != 0:
                    if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                        require ext_code.size(address(daoManagerAddress))
                        call address(daoManagerAddress).setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                        require ext_call.success
                        if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                            if uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_0):
                                require ext_code.size(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])])
                                call storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), 0, storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], maxInflationRate, uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                                require ext_call.success
                else:
                    require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2]) < stor9.length
                    stor10 = uint256(stor9[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])].field_0)
                    stor11 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor14 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor12 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor13 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor15 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor16 = uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])])
                    require ext_code.size(address(daoManagerAddress))
                    if not uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]):
                        call address(daoManagerAddress).disableTransfer() with:
                             gas gas_remaining - 50 wei
                    else:
                        call address(daoManagerAddress).ableTransfer() with:
                             gas gas_remaining - 50 wei
                    require ext_call.success
                emit BoardMeetingClosed(uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]), 1, arg1);
        else:
            if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) > 0:
                    call address(daoManagerAddress) with:
                       value uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
                    storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                    emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                            0,
                                            arg1,
                    return 0
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]):
                    storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                    emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                            0,
                                            arg1,
                    return 0
                uint256(stor[code.data[7179 len 32] + (12 * arg1) + 8]) = block.timestamp
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) != 0:
                    if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                        require ext_code.size(address(daoManagerAddress))
                        call address(daoManagerAddress).setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                        require ext_call.success
                        if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                            if uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_0):
                                require ext_code.size(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])])
                                call storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), 0, storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], maxInflationRate, uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                                require ext_call.success
                else:
                    require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2]) < stor9.length
                    stor10 = uint256(stor9[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])].field_0)
                    stor11 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor14 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor12 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor13 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor15 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                    stor16 = uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])])
                    require ext_code.size(address(daoManagerAddress))
                    if not uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]):
                        call address(daoManagerAddress).disableTransfer() with:
                             gas gas_remaining - 50 wei
                    else:
                        call address(daoManagerAddress).ableTransfer() with:
                             gas gas_remaining - 50 wei
                    require ext_call.success
                emit BoardMeetingClosed(0, 1, arg1);
            else:
                if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) > 0:
                        call address(daoManagerAddress) with:
                           value uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
                        storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                        emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                                0,
                                                arg1,
                        return 0
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]):
                        storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                        emit BoardMeetingClosed(uint256 rg1, uint256 rg2, bool rg3):
                                                0,
                                                arg1,
                        return 0
                    uint256(stor[code.data[7179 len 32] + (12 * arg1) + 8]) = block.timestamp
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) != 0:
                        if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                            require ext_code.size(address(daoManagerAddress))
                            call address(daoManagerAddress).setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                            require ext_call.success
                            if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                                if uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_0):
                                    require ext_code.size(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])])
                                    call storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), 0, storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], maxInflationRate, uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                                    require ext_call.success
                    else:
                        require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2]) < stor9.length
                        stor10 = uint256(stor9[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])].field_0)
                        stor11 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor14 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor12 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor13 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor15 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor16 = uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])])
                        require ext_code.size(address(daoManagerAddress))
                        if not uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]):
                            call address(daoManagerAddress).disableTransfer() with:
                                 gas gas_remaining - 50 wei
                        else:
                            call address(daoManagerAddress).ableTransfer() with:
                                 gas gas_remaining - 50 wei
                        require ext_call.success
                    emit BoardMeetingClosed(0, 1, arg1);
                else:
                    uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) = 0
                    pendingFeesWithdrawals[address(stor[code.data[7179 len 32] + (12 * arg1)])] += uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4])
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) > 0:
                        call address(daoManagerAddress) with:
                           value uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]) - uint256(stor[code.data[7179 len 32] + (12 * arg1) + 5]) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) + uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]) < ext_call.return_data[0] / stor11:
                        storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                        emit BoardMeetingClosed(uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]), 0, arg1);
                        return 0
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 9]) <= uint256(stor[code.data[7179 len 32] + (12 * arg1) + 10]):
                        storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] = 0
                        emit BoardMeetingClosed(uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]), 0, arg1);
                        return 0
                    uint256(stor[code.data[7179 len 32] + (12 * arg1) + 8]) = block.timestamp
                    if uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1]) != 0:
                        if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                            require ext_code.size(address(daoManagerAddress))
                            call address(daoManagerAddress).setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                            require ext_call.success
                            if storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])] != 0:
                                if uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_0):
                                    require ext_code.size(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])])
                                    call storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].setFundingRules(address rg1, bool rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(bool(uint8(storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])].field_8))), 0, storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], storF3F7[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])], maxInflationRate, uint256(stor[code.data[7179 len 32] + (12 * arg1) + 1])
                                    require ext_call.success
                    else:
                        require uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2]) < stor9.length
                        stor10 = uint256(stor9[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])].field_0)
                        stor11 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor14 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor12 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor13 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor15 = stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]
                        stor16 = uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])])
                        require ext_code.size(address(daoManagerAddress))
                        if not uint8(stor6E15[uint256(stor[code.data[7179 len 32] + (12 * arg1) + 2])]):
                            call address(daoManagerAddress).disableTransfer() with:
                                 gas gas_remaining - 50 wei
                        else:
                            call address(daoManagerAddress).ableTransfer() with:
                                 gas gas_remaining - 50 wei
                        require ext_call.success
                    emit BoardMeetingClosed(uint256(stor[code.data[7179 len 32] + (12 * arg1) + 4]), 1, arg1);
    return 1
}



}
