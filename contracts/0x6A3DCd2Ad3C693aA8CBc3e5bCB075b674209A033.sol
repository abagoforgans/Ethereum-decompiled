contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor1;
array of struct stor3;
uint256 stor4;
array of struct stor5;
array of struct stor6;

function _fallback() {
    stor0 = code.data[15144 len 20]
    stor5.length = 1
    if not stor5.length <= 1:
        idx = 9
        while 9 * stor5.length > idx:
            uint256(stor5[idx].field_0) = 0
            uint256(stor5[idx].field_256) = 0
            uint256(stor5[idx].field_512) = 0
            uint256(stor5[idx].field_768) = 0
            uint256(stor5[idx].field_1024) = 0
            uint256(stor5[idx].field_1280) = 0
            uint256(stor5[idx].field_1536) = 0
            uint256(stor5[idx].field_1792) = 0
            uint256(stor5[idx].field_2048) = 0
            idx = idx + 9
            continue 
    stor1.length = 1
    if not stor1.length <= 1:
        idx = 10
        while 10 * stor1.length > idx:
            Mask(168, 0, stor1[idx].field_0) = 0
            uint256(stor1[idx].field_256) = 0
            uint256(stor1[idx].field_512) = 0
            uint256(stor1[idx].field_768) = 0
            uint256(stor1[idx].field_1024) = 0
            uint256(stor1[idx].field_1280) = 0
            uint8(stor1[idx].field_1536) = 0
            uint256(stor1[idx].field_1792) = 0
            uint256(stor1[idx].field_2048) = 0
            uint256(stor1[idx].field_2304) = 0
            idx = idx + 10
            continue 
    stor3.length = 1
    if not stor3.length <= 1:
        idx = 10
        while 10 * stor3.length > idx:
            uint256(stor3[idx].field_0) = 0
            address(stor3[idx].field_256) = 0
            uint256(stor3[idx].field_512) = 0
            uint256(stor3[idx].field_768) = 0
            address(stor3[idx].field_1024) = 0
            uint256(stor3[idx].field_1280) = 0
            uint256(stor3[idx].field_1536) = 0
            uint256(stor3[idx].field_1792) = 0
            uint256(stor3[idx].field_2048) = 0
            uint8(stor3[idx].field_2304) = 0
            idx = idx + 10
            continue 
    stor4 = 1
    if not stor4 > 1:
        stor6.length = 1
        if not stor6.length <= 1:
            idx = 4
            while 4 * stor6.length > idx:
                uint256(stor6[idx].field_0) = 0
                address(stor6[idx].field_256) = 0
                address(stor6[idx].field_512) = 0
                address(stor6[idx].field_768) = 0
                idx = idx + 4
                continue 
    else:
        mem[0] = 4
        idx = 4
        while sha3(4) + (4 * stor4) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                if sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 3):
                    uint256(stor[sha3(idx + sha3(mem[0]) + 3)]) = 0
                    s = sha3(idx + sha3(mem[0]) + 3) + 1
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            idx = idx + 4
            continue 
        stor6.length = 1
        if not stor6.length <= 1:
            s = 4
            while 4 * stor6.length > s:
                uint256(stor6[s].field_0) = 0
                address(stor6[s].field_256) = 0
                address(stor6[s].field_512) = 0
                address(stor6[s].field_768) = 0
                s = s + 4
                continue 
    return code.data[945 len 14187]
}



// =====================  Runtime code  =====================


#
#  - contractorProposal(uint256 arg1, address arg2, uint256 arg3, string arg4, bytes32 arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9)
#  - resolutionProposal(string arg1, string arg2, address arg3, uint256 arg4)
#
address passDaoAddress;
array of struct committees;
mapping of uint8 stor2;
array of struct proposals;
array of struct resolutionProposals;
array of struct rulesProposals;
array of struct upgradeProposals;
uint256 stor7;
uint256 stor8;

function Committees(uint256 arg1) {
    require arg1 < committees.length
    require committees[arg1].field_160 <= 3
    return committees[arg1].field_0, 
           committees[arg1].field_0,
           committees[arg1].field_256,
           committees[arg1].field_512,
           committees[arg1].field_768,
           committees[arg1].field_1024,
           committees[arg1].field_1280,
           bool(committees[arg1].field_1536),
           committees[arg1].field_1792,
           committees[arg1].field_2048,
           committees[arg1].field_2304
}

function ResolutionProposals(uint256 arg1) {
    require arg1 < resolutionProposals.length
    mem[256] = stor[sha3((4 * arg1) + ('name', 'resolutionProposals', 4) + 2)].field_0
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'resolutionProposals', 4) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 256] = stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 3].length
    mem[stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 288] = stor[sha3((4 * arg1) + ('name', 'resolutionProposals', 4) + 3)].field_0
    idx = stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 288
    s = 0
    while stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 3].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'resolutionProposals', 4) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return resolutionProposals[arg1].field_0, 
           resolutionProposals[arg1].field_256,
           Array(len=stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length, data=mem[256 len stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 3].length + (floor32(stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 3].length - 1) + -stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 3].length + 32 % 32) + 32]),
           stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 160
}

function passDao() {
    return passDaoAddress
}

function rulesProposals(uint256 arg1) {
    require arg1 < rulesProposals.length
    return rulesProposals[arg1].field_0, 
           rulesProposals[arg1].field_256,
           rulesProposals[arg1].field_512,
           rulesProposals[arg1].field_768,
           rulesProposals[arg1].field_1024,
           rulesProposals[arg1].field_1280,
           rulesProposals[arg1].field_1536,
           rulesProposals[arg1].field_1792,
           rulesProposals[arg1].field_2048
}

function UpgradeProposals(uint256 arg1) {
    require arg1 < upgradeProposals.length
    return upgradeProposals[arg1].field_0, 
           upgradeProposals[arg1].field_256,
           upgradeProposals[arg1].field_512,
           upgradeProposals[arg1].field_768
}

function Proposals(uint256 arg1) {
    require arg1 < proposals.length
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].field_1280,
           proposals[arg1].field_1536,
           proposals[arg1].field_1792,
           proposals[arg1].field_2048,
           bool(proposals[arg1].field_2304)
}

function _fallback() payable {
    revert 
}

function numberOfCommittees() {
    return (committees.length - 1)
}

function HasVoted(uint256 arg1, address arg2) {
    if arg2:
        return bool(stor2[arg1][address(arg2)])
    return bool(stor2[arg1][address(msg.sender)])
}

function Balance() {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return eth.balance(ext_call.return_data[0])
}

function TokenManager() {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xcbbe2199 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function ShareManager() {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function withdrawPendingAmounts() {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x606224f8 with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function sendPendingAmounts(uint256 arg1, uint256 arg2, address arg3) {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x606224f8 with:
         gas gas_remaining - 50 wei
        args arg1, arg2, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function minQuorum() {
    require 0 < rulesProposals.length
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require uint256(rulesProposals.field_256)
    return (ext_call.return_data[0] / uint256(rulesProposals.field_256))
}

function buySharesForProposal(uint256 arg1) payable {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).buyTokensForProposal(uint256 rg1, address rg2) with:
       value msg.value wei
         gas gas_remaining - 9050 wei
        args arg1, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function init(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) {
    stor8 = arg1
    stor7 = arg2
    emit CommitteeLimits(arg1, arg2);
    require 0 < rulesProposals.length
    require not uint256(rulesProposals.field_256)
    require 0 < rulesProposals.length
    uint256(rulesProposals.field_256) = arg3
    uint256(rulesProposals.field_512) = arg4
    uint256(rulesProposals.field_768) = arg5
    uint256(rulesProposals.field_1024) = arg6
    uint256(rulesProposals.field_1280) = arg7
    uint256(rulesProposals.field_1536) = arg8
    uint256(rulesProposals.field_1792) = arg9
    uint256(rulesProposals.field_2048) = arg10
}

function vote(uint256 arg1, bool arg2) {
    require arg1 < committees.length
    require not stor2[arg1][address(msg.sender)]
    require block.timestamp >= committees[arg1].field_512
    require block.timestamp <= committees[arg1].field_1280
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    stor2[arg1][address(msg.sender)] = 1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48d9a374 with:
         gas gas_remaining - 50 wei
        args msg.sender, committees[arg1].field_1280
    require ext_call.success
    if not arg2:
        committees[arg1].field_2304 += ext_call.return_data[0]
    else:
        committees[arg1].field_2048 += ext_call.return_data[0]
    require 100 * committees[arg1].field_768 / 100 == committees[arg1].field_768
    require 100 * committees[arg1].field_768
    require 100 * committees[arg1].field_768 * ext_call.return_data[0] / 100 * committees[arg1].field_768 == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require 0 < rulesProposals.length
    require ((100 * block.timestamp * uint256(rulesProposals.field_1536)) - (100 * committees[arg1].field_512 * uint256(rulesProposals.field_1536)) / 876000 * 24 * 3600) + 100
    if committees[arg1].field_1024 + (100 * ext_call.return_data[0] * committees[arg1].field_768 / ext_call.return_data[0] / ((100 * block.timestamp * uint256(rulesProposals.field_1536)) - (100 * committees[arg1].field_512 * uint256(rulesProposals.field_1536)) / 876000 * 24 * 3600) + 100) <= committees[arg1].field_768:
        committees[arg1].field_1024 += 100 * ext_call.return_data[0] * committees[arg1].field_768 / ext_call.return_data[0] / ((100 * block.timestamp * uint256(rulesProposals.field_1536)) - (100 * committees[arg1].field_512 * uint256(rulesProposals.field_1536)) / 876000 * 24 * 3600) + 100
        call msg.sender with:
           value 100 * ext_call.return_data[0] * committees[arg1].field_768 / ext_call.return_data[0] / ((100 * block.timestamp * uint256(rulesProposals.field_1536)) - (100 * committees[arg1].field_512 * uint256(rulesProposals.field_1536)) / 876000 * 24 * 3600) + 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Voted(arg2, 100 * ext_call.return_data[0] * committees[arg1].field_768 / ext_call.return_data[0] / ((100 * block.timestamp * uint256(rulesProposals.field_1536)) - (100 * committees[arg1].field_512 * uint256(rulesProposals.field_1536)) / 876000 * 24 * 3600) + 100, arg1, msg.sender);
    else:
        committees[arg1].field_1024 = committees[arg1].field_768
        call msg.sender with:
           value committees[arg1].field_768 - committees[arg1].field_1024 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Voted(arg2, committees[arg1].field_768 - committees[arg1].field_1024, arg1, msg.sender);
}

function rulesProposal(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require arg1 > 1
    require arg1 <= 10
    require arg4 >= stor7
    require arg5 >= stor7
    require arg6 <= stor8
    require arg8 <= stor8
    require arg7 >= stor7
    rulesProposals.length++
    if not rulesProposals.length <= rulesProposals.length + 1:
        idx = (9 * rulesProposals.length) + 9
        while 9 * rulesProposals.length > idx:
            rulesProposals[idx].field_0 = 0
            rulesProposals[idx].field_256 = 0
            rulesProposals[idx].field_512 = 0
            rulesProposals[idx].field_768 = 0
            rulesProposals[idx].field_1024 = 0
            rulesProposals[idx].field_1280 = 0
            rulesProposals[idx].field_1536 = 0
            rulesProposals[idx].field_1792 = 0
            rulesProposals[idx].field_2048 = 0
            idx = idx + 9
            continue 
    require rulesProposals.length < rulesProposals.length
    rulesProposals[rulesProposals.length].field_256 = arg1
    rulesProposals[rulesProposals.length].field_512 = arg2
    rulesProposals[rulesProposals.length].field_768 = arg3
    rulesProposals[rulesProposals.length].field_1024 = arg4
    rulesProposals[rulesProposals.length].field_1280 = arg5
    rulesProposals[rulesProposals.length].field_1536 = arg6
    rulesProposals[rulesProposals.length].field_2048 = arg7
    rulesProposals[rulesProposals.length].field_1792 = arg8
    require 0 < rulesProposals.length
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require 0 < rulesProposals.length
    require msg.value >= uint256(rulesProposals.field_512)
    require 0 < rulesProposals.length
    require block.timestamp + (60 * uint256(rulesProposals.field_1024)) + (60 * uint256(rulesProposals.field_1280)) >= block.timestamp
    require 0 < rulesProposals.length
    require uint256(rulesProposals.field_1280) >= uint256(rulesProposals.field_1280)
    require this.address != msg.sender
    committees.length++
    if not committees.length <= committees.length + 1:
        idx = (10 * committees.length) + 10
        while 10 * committees.length > idx:
            committees[idx].field_0 = 0
            committees[idx].field_256 = 0
            committees[idx].field_512 = 0
            committees[idx].field_768 = 0
            committees[idx].field_1024 = 0
            committees[idx].field_1280 = 0
            committees[idx].field_1536 = 0
            committees[idx].field_1792 = 0
            committees[idx].field_2048 = 0
            committees[idx].field_2304 = 0
            idx = idx + 10
            continue 
    require committees.length < committees.length
    committees[committees.length].field_0 = msg.sender
    committees[committees.length].field_0 = msg.sender
    committees[committees.length].field_160 = 2
    committees[committees.length].field_256 = rulesProposals.length
    committees[committees.length].field_768 = msg.value
    require 0 < rulesProposals.length
    committees[committees.length].field_512 = (60 * uint256(rulesProposals.field_1024)) + block.timestamp
    committees[committees.length].field_1280 = (60 * uint256(rulesProposals.field_1280)) + (60 * uint256(rulesProposals.field_1024)) + block.timestamp
    committees[committees.length].field_1536 = 1
    rulesProposals[rulesProposals.length].field_0 = committees.length
    emit RulesProposalSubmitted(committees.length, 0, arg2, arg3, arg4, arg5, arg6, arg7, arg8, rulesProposals.length);
    return rulesProposals.length
}

function upgradeProposal(address arg1, address arg2, address arg3, uint256 arg4) payable {
    upgradeProposals.length++
    if not upgradeProposals.length <= upgradeProposals.length + 1:
        idx = 4 * upgradeProposals.length + 1
        while 4 * upgradeProposals.length > idx:
            upgradeProposals[idx].field_0 = 0
            upgradeProposals[idx].field_256 = 0
            upgradeProposals[idx].field_512 = 0
            upgradeProposals[idx].field_768 = 0
            idx = idx + 4
            continue 
    require upgradeProposals.length < upgradeProposals.length
    upgradeProposals[upgradeProposals.length].field_256 = arg1
    upgradeProposals[upgradeProposals.length].field_512 = arg2
    upgradeProposals[upgradeProposals.length].field_768 = arg3
    if arg4:
        require ext_code.size(passDaoAddress)
        call passDaoAddress.0xe934ab0c with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require 0 < rulesProposals.length
        require msg.value >= uint256(rulesProposals.field_512)
        require 0 < rulesProposals.length
        require block.timestamp + (60 * uint256(rulesProposals.field_1024)) + (60 * arg4) >= block.timestamp
        require 0 < rulesProposals.length
        require arg4 >= uint256(rulesProposals.field_1280)
        require this.address != msg.sender
        committees.length++
        if not committees.length <= committees.length + 1:
            idx = (10 * committees.length) + 10
            while 10 * committees.length > idx:
                committees[idx].field_0 = 0
                committees[idx].field_256 = 0
                committees[idx].field_512 = 0
                committees[idx].field_768 = 0
                committees[idx].field_1024 = 0
                committees[idx].field_1280 = 0
                committees[idx].field_1536 = 0
                committees[idx].field_1792 = 0
                committees[idx].field_2048 = 0
                committees[idx].field_2304 = 0
                idx = idx + 10
                continue 
        require committees.length < committees.length
        committees[committees.length].field_0 = msg.sender
        committees[committees.length].field_0 = msg.sender
        committees[committees.length].field_160 = 3
        committees[committees.length].field_256 = upgradeProposals.length
        committees[committees.length].field_768 = msg.value
        require 0 < rulesProposals.length
        committees[committees.length].field_512 = (60 * uint256(rulesProposals.field_1024)) + block.timestamp
        committees[committees.length].field_1280 = (60 * arg4) + (60 * uint256(rulesProposals.field_1024)) + block.timestamp
    else:
        require 0 < rulesProposals.length
        require ext_code.size(passDaoAddress)
        call passDaoAddress.0xe934ab0c with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require 0 < rulesProposals.length
        require msg.value >= uint256(rulesProposals.field_512)
        require 0 < rulesProposals.length
        require block.timestamp + (60 * uint256(rulesProposals.field_1024)) + (60 * uint256(rulesProposals.field_1280)) >= block.timestamp
        require 0 < rulesProposals.length
        require uint256(rulesProposals.field_1280) >= uint256(rulesProposals.field_1280)
        require this.address != msg.sender
        committees.length++
        if not committees.length <= committees.length + 1:
            idx = (10 * committees.length) + 10
            while 10 * committees.length > idx:
                committees[idx].field_0 = 0
                committees[idx].field_256 = 0
                committees[idx].field_512 = 0
                committees[idx].field_768 = 0
                committees[idx].field_1024 = 0
                committees[idx].field_1280 = 0
                committees[idx].field_1536 = 0
                committees[idx].field_1792 = 0
                committees[idx].field_2048 = 0
                committees[idx].field_2304 = 0
                idx = idx + 10
                continue 
        require committees.length < committees.length
        committees[committees.length].field_0 = msg.sender
        committees[committees.length].field_0 = msg.sender
        committees[committees.length].field_160 = 3
        committees[committees.length].field_256 = upgradeProposals.length
        committees[committees.length].field_768 = msg.value
        require 0 < rulesProposals.length
        committees[committees.length].field_512 = (60 * uint256(rulesProposals.field_1024)) + block.timestamp
        committees[committees.length].field_1280 = (60 * uint256(rulesProposals.field_1280)) + (60 * uint256(rulesProposals.field_1024)) + block.timestamp
    committees[committees.length].field_1536 = 1
    upgradeProposals[upgradeProposals.length].field_0 = committees.length
    emit UpgradeProposalSubmitted(upgradeProposals[upgradeProposals.length].field_256, upgradeProposals[upgradeProposals.length].field_512, upgradeProposals[upgradeProposals.length].field_768, upgradeProposals.length, committees.length);
    return upgradeProposals.length
}

function createContractor(address arg1, address arg2, bool arg3, address arg4, string arg5, string arg6) {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 0x6c054ad000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 164] = msg.sender
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 196] = arg2
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 228] = arg3
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 260] = arg4
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 356] = 0
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 292] = 224
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 388] = arg5.length
    if not arg5.length:
        if not arg5.length % 32:
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 324] = arg5.length + 256
            mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 420] = arg6.length
            if not arg6.length:
                if not arg6.length % 32:
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, arg5.length + 256, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len arg6.length + arg5.length + 32]
                else:
                    mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 452] = mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 484 len arg6.length % 32]
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, arg5.length + 256, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len floor32(arg6.length) + arg5.length + 64]
            else:
                mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 452] = mem[ceil32(arg5.length) + 160]
                mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length - 1)] = mem[ceil32(arg5.length) + 192 len floor32(arg6.length - 1)]
                if not arg6.length % 32:
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, arg5.length + 256, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len arg6.length + arg5.length + 32]
                else:
                    mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 452] = mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 484 len arg6.length % 32]
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, arg5.length + 256, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len arg5.length + 32], mem[ceil32(arg5.length) + 160], mem[ceil32(arg5.length) + ceil32(arg6.length) + arg5.length + 484 len floor32(arg6.length)]
        else:
            mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 420] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 452 len arg5.length % 32]
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 324] = floor32(arg5.length) + 288
            mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 452] = arg6.length
            if not arg6.length:
                if not arg6.length % 32:
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len floor32(arg5.length) + 32], arg6.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 484 len arg6.length]
                else:
                    mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 516 len arg6.length % 32]
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len floor32(arg5.length) + 32], arg6.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 484 len floor32(arg6.length) + 32]
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[ceil32(arg5.length) + 160]
                mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516 len floor32(arg6.length - 1)] = mem[ceil32(arg5.length) + 192 len floor32(arg6.length - 1)]
                if not arg6.length % 32:
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len floor32(arg5.length) + 32], arg6.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 484 len arg6.length]
                else:
                    mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 516 len arg6.length % 32]
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[ceil32(arg5.length) + ceil32(arg6.length) + 420 len floor32(arg5.length) + 32], arg6.length, mem[ceil32(arg5.length) + 160], mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 516 len floor32(arg6.length)]
    else:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 420] = mem[128]
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 452 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
        if not arg5.length % 32:
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 324] = arg5.length + 256
            mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 420] = arg6.length
            if arg6.length:
                mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 452] = mem[ceil32(arg5.length) + 160]
                mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length - 1)] = mem[ceil32(arg5.length) + 192 len floor32(arg6.length - 1)]
            if not arg6.length % 32:
                require ext_code.size(arg1)
                call arg1.0x6c054ad0 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(arg2), arg3, address(arg4), 224, arg5.length + 256, 0, arg5.length, mem[128], mem[ceil32(arg5.length) + ceil32(arg6.length) + 452 len arg6.length + arg5.length]
            else:
                mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 452] = mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 484 len arg6.length % 32]
                require ext_code.size(arg1)
                call arg1.0x6c054ad0 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(arg2), arg3, address(arg4), 224, arg5.length + 256, 0, arg5.length, mem[128], mem[ceil32(arg5.length) + ceil32(arg6.length) + 452 len floor32(arg6.length) + arg5.length + 32]
        else:
            mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 420] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 452 len arg5.length % 32]
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 324] = floor32(arg5.length) + 288
            mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 452] = arg6.length
            if not arg6.length:
                if not arg6.length % 32:
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[128], mem[ceil32(arg5.length) + ceil32(arg6.length) + 452 len arg6.length + floor32(arg5.length) + 32]
                else:
                    mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 516 len arg6.length % 32]
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[128], mem[ceil32(arg5.length) + ceil32(arg6.length) + 452 len floor32(arg6.length) + floor32(arg5.length) + 64]
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[ceil32(arg5.length) + 160]
                mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516 len floor32(arg6.length - 1)] = mem[ceil32(arg5.length) + 192 len floor32(arg6.length - 1)]
                if not arg6.length % 32:
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[128], mem[ceil32(arg5.length) + ceil32(arg6.length) + 452 len arg6.length + floor32(arg5.length) + 32]
                else:
                    mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 516 len arg6.length % 32]
                    require ext_code.size(arg1)
                    call arg1.0x6c054ad0 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg2), arg3, address(arg4), 224, floor32(arg5.length) + 288, 0, arg5.length, mem[128], mem[ceil32(arg5.length) + ceil32(arg6.length) + 452 len floor32(arg5.length) + 32], mem[ceil32(arg5.length) + 160], mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 516 len floor32(arg6.length)]
    require ext_call.success
    emit ContractorCreated(address(arg1), address(ext_call.return_data[0]), arg2, msg.sender);
    return address(ext_call.return_data[0])
}

function orderToContractor(uint256 arg1) {
    require arg1 < proposals.length
    require proposals[arg1].field_0 < committees.length
    if committees[stor3[arg1].field_0].field_1536:
        return 0
    if not proposals[arg1].field_2304:
        return 0
    if not proposals[arg1].field_1280:
        if not proposals[arg1].field_1792:
            proposals[arg1].field_2304 = 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.Project() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if not proposals[arg1].field_768:
                emit ContractorProposalClosed(0, arg1, proposals[arg1].field_512, proposals[arg1].field_256);
                return 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.order(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_512, proposals[arg1].field_768
            require ext_call.success
            require ext_call.return_data[0]
            if proposals[arg1].field_768 > 0:
                require ext_code.size(passDaoAddress)
                call passDaoAddress.0xbe67f4fd with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9e1a00aa with:
                     gas gas_remaining - 50 wei
                    args proposals[arg1].field_256, proposals[arg1].field_768
                require ext_call.success
                require ext_call.return_data[0]
            emit ContractorProposalClosed(proposals[arg1].field_768, arg1, proposals[arg1].field_512, proposals[arg1].field_256);
            require ext_code.size(passDaoAddress)
            call passDaoAddress.0x7c56b798 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_256, proposals[arg1].field_512, proposals[arg1].field_768
        else:
            require ext_code.size(passDaoAddress)
            call passDaoAddress.0xcbbe2199 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x64cb5338 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if not ext_call.return_data[0]:
                if block.timestamp <= committees[stor3[arg1].field_0].field_1792 + (60 * proposals[arg1].field_2048):
                    return 0
            proposals[arg1].field_2304 = 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.Project() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if not ext_call.return_data[0] + proposals[arg1].field_768:
                emit ContractorProposalClosed(0, arg1, proposals[arg1].field_512, proposals[arg1].field_256);
                return 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.order(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_512, ext_call.return_data[0] + proposals[arg1].field_768
            require ext_call.success
            require ext_call.return_data[0]
            if proposals[arg1].field_768 > 0:
                require ext_code.size(passDaoAddress)
                call passDaoAddress.0xbe67f4fd with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9e1a00aa with:
                     gas gas_remaining - 50 wei
                    args proposals[arg1].field_256, proposals[arg1].field_768
                require ext_call.success
                require ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(passDaoAddress)
                call passDaoAddress.0xcbbe2199 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9e1a00aa with:
                     gas gas_remaining - 50 wei
                    args proposals[arg1].field_256, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
            emit ContractorProposalClosed((ext_call.return_data[0] + proposals[arg1].field_768), arg1, proposals[arg1].field_512, proposals[arg1].field_256);
            require ext_code.size(passDaoAddress)
            call passDaoAddress.0x7c56b798 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_256, proposals[arg1].field_512, ext_call.return_data[0] + proposals[arg1].field_768
    else:
        require ext_code.size(passDaoAddress)
        call passDaoAddress.0xbe67f4fd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x64cb5338 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            if block.timestamp <= committees[stor3[arg1].field_0].field_1792 + (60 * proposals[arg1].field_2048):
                return 0
        if not proposals[arg1].field_1792:
            proposals[arg1].field_2304 = 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.Project() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if not ext_call.return_data[0] + proposals[arg1].field_768:
                emit ContractorProposalClosed(0, arg1, proposals[arg1].field_512, proposals[arg1].field_256);
                return 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.order(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_512, ext_call.return_data[0] + proposals[arg1].field_768
            require ext_call.success
            require ext_call.return_data[0]
            if proposals[arg1].field_768 + ext_call.return_data[0] > 0:
                require ext_code.size(passDaoAddress)
                call passDaoAddress.0xbe67f4fd with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9e1a00aa with:
                     gas gas_remaining - 50 wei
                    args proposals[arg1].field_256, ext_call.return_data[0] + proposals[arg1].field_768
                require ext_call.success
                require ext_call.return_data[0]
            emit ContractorProposalClosed((ext_call.return_data[0] + proposals[arg1].field_768), arg1, proposals[arg1].field_512, proposals[arg1].field_256);
            require ext_code.size(passDaoAddress)
            call passDaoAddress.0x7c56b798 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_256, proposals[arg1].field_512, ext_call.return_data[0] + proposals[arg1].field_768
        else:
            require ext_code.size(passDaoAddress)
            call passDaoAddress.0xcbbe2199 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x64cb5338 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if not ext_call.return_data[0]:
                if block.timestamp <= committees[stor3[arg1].field_0].field_1792 + (60 * proposals[arg1].field_2048):
                    return 0
            proposals[arg1].field_2304 = 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.Project() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if not (2 * ext_call.return_data[0]) + proposals[arg1].field_768:
                emit ContractorProposalClosed(0, arg1, proposals[arg1].field_512, proposals[arg1].field_256);
                return 0
            require ext_code.size(proposals[arg1].field_256)
            call proposals[arg1].field_256.order(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_512, (2 * ext_call.return_data[0]) + proposals[arg1].field_768
            require ext_call.success
            require ext_call.return_data[0]
            if proposals[arg1].field_768 + ext_call.return_data[0] > 0:
                require ext_code.size(passDaoAddress)
                call passDaoAddress.0xbe67f4fd with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9e1a00aa with:
                     gas gas_remaining - 50 wei
                    args proposals[arg1].field_256, ext_call.return_data[0] + proposals[arg1].field_768
                require ext_call.success
                require ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(passDaoAddress)
                call passDaoAddress.0xcbbe2199 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9e1a00aa with:
                     gas gas_remaining - 50 wei
                    args proposals[arg1].field_256, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
            emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[arg1].field_768), arg1, proposals[arg1].field_512, proposals[arg1].field_256);
            require ext_code.size(passDaoAddress)
            call passDaoAddress.0x7c56b798 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args proposals[arg1].field_256, proposals[arg1].field_512, (2 * ext_call.return_data[0]) + proposals[arg1].field_768
    require ext_call.success
    return 1
}

function executeDecision(uint256 arg1) {
    require arg1 < committees.length
    if block.timestamp < committees[arg1].field_1280:
        return 0
    if not committees[arg1].field_1536:
        return 0
    committees[arg1].field_1536 = 0
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xbe67f4fd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xcbbe2199 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require 0 < rulesProposals.length
    if 100 * committees[arg1].field_2048 <= uint256(rulesProposals.field_768) * ext_call.return_data[0]:
        if committees[arg1].field_768 - committees[arg1].field_1024 > 0:
            call address(ext_call.return_data[0]) with:
               value committees[arg1].field_768 - committees[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        require 0 < rulesProposals.length
        require ext_code.size(passDaoAddress)
        call passDaoAddress.0xbe67f4fd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require uint256(rulesProposals.field_256)
        if committees[arg1].field_2048 + committees[arg1].field_2304 < ext_call.return_data[0] / uint256(rulesProposals.field_256):
            require committees[arg1].field_160 <= 3
            if not committees[arg1].field_160:
                require committees[arg1].field_256 < proposals.length
                proposals[stor1[arg1].field_256].field_2304 = 0
            require committees[arg1].field_160 <= 3
            emit ProposalClosed(arg1, 0, 0, 0, committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
            return 0
        if committees[arg1].field_2048 <= committees[arg1].field_2304:
            require committees[arg1].field_160 <= 3
            if not committees[arg1].field_160:
                require committees[arg1].field_256 < proposals.length
                proposals[stor1[arg1].field_256].field_2304 = 0
            require committees[arg1].field_160 <= 3
            emit ProposalClosed(arg1, 0, 0, 0, committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
            return 0
        committees[arg1].field_1792 = block.timestamp
        require committees[arg1].field_160 <= 3
        if committees[arg1].field_160:
            require committees[arg1].field_160 <= 3
            if committees[arg1].field_160 == 1:
                require committees[arg1].field_256 < resolutionProposals.length
                mem[196] = stor[sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2)].field_0
                idx = 196
                s = 0
                while stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 196 > idx + 32:
                    mem[idx + 32] = stor[s + sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 196] = stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length
                mem[stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 228] = stor[sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3)].field_0
                idx = stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 228
                s = 0
                while stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length + 228 > idx + 32:
                    mem[idx + 32] = stor[s + sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(resolutionProposals[stor1[arg1].field_256].field_256)
                call resolutionProposals[stor1[arg1].field_256].field_256.newResolution(string rg1, string rg2) with:
                     gas gas_remaining - 50 wei
                    args Array(len=stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length, data=mem[196 len stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length + 32 % 32) + 32]), stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 96
                require ext_call.success
                require committees[arg1].field_160 <= 3
                emit ProposalClosed(arg1, committees[arg1].field_1024, 1, 0, committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
            else:
                require committees[arg1].field_160 <= 3
                if committees[arg1].field_160 == 2:
                    require committees[arg1].field_256 < rulesProposals.length
                    require 0 < rulesProposals.length
                    uint256(rulesProposals.field_0) = rulesProposals[stor1[arg1].field_256].field_0
                    uint256(rulesProposals.field_256) = rulesProposals[stor1[arg1].field_256].field_256
                    uint256(rulesProposals.field_1280) = rulesProposals[stor1[arg1].field_256].field_1280
                    uint256(rulesProposals.field_512) = rulesProposals[stor1[arg1].field_256].field_512
                    uint256(rulesProposals.field_768) = rulesProposals[stor1[arg1].field_256].field_768
                    uint256(rulesProposals.field_1024) = rulesProposals[stor1[arg1].field_256].field_1024
                    uint256(rulesProposals.field_1536) = rulesProposals[stor1[arg1].field_256].field_1536
                    uint256(rulesProposals.field_1792) = rulesProposals[stor1[arg1].field_256].field_1792
                    uint256(rulesProposals.field_2048) = rulesProposals[stor1[arg1].field_256].field_2048
                else:
                    require committees[arg1].field_160 <= 3
                    if committees[arg1].field_160 == 3:
                        require committees[arg1].field_256 < upgradeProposals.length
                        if upgradeProposals[stor1[arg1].field_256].field_512:
                            if upgradeProposals[stor1[arg1].field_256].field_512 != address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xb187984f with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if eth.balance(ext_call.return_data[0]) > 0:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                         gas gas_remaining - 50 wei
                                        args upgradeProposals[stor1[arg1].field_256].field_512, eth.balance(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                        if upgradeProposals[stor1[arg1].field_256].field_768:
                            if upgradeProposals[stor1[arg1].field_256].field_768 != address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xb187984f with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                        require ext_code.size(passDaoAddress)
                        call passDaoAddress.0xf000999e with:
                             gas gas_remaining - 50 wei
                            args upgradeProposals[stor1[arg1].field_256].field_256, upgradeProposals[stor1[arg1].field_256].field_512, upgradeProposals[stor1[arg1].field_256].field_768
                        require ext_call.success
                        emit DappUpgraded(upgradeProposals[stor1[arg1].field_256].field_256, upgradeProposals[stor1[arg1].field_256].field_512, upgradeProposals[stor1[arg1].field_256].field_768);
                require committees[arg1].field_160 <= 3
                emit ProposalClosed(arg1, 0, 1, 0, committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
        else:
            require committees[arg1].field_256 < proposals.length
            if 0 == proposals[stor1[arg1].field_256].field_512:
                proposals[stor1[arg1].field_256].field_2304 = 0
            if proposals[stor1[arg1].field_256].field_1280:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x47ad396b with:
                     gas gas_remaining - 50 wei
                    args 0, 0, proposals[stor1[arg1].field_256].field_1536, proposals[stor1[arg1].field_256].field_1280, proposals[stor1[arg1].field_256].field_2048, 0, committees[arg1].field_256
                require ext_call.success
                if proposals[stor1[arg1].field_256].field_1792:
                    require 0 < rulesProposals.length
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x47ad396b with:
                         gas gas_remaining - 50 wei
                        args 0, 0, 0, proposals[stor1[arg1].field_256].field_1792, proposals[stor1[arg1].field_256].field_2048, uint256(rulesProposals.field_1792), committees[arg1].field_256
                    require ext_call.success
            else:
                if proposals[stor1[arg1].field_256].field_1792:
                    if proposals[stor1[arg1].field_256].field_1280:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x47ad396b with:
                             gas gas_remaining - 50 wei
                            args 0, 0, proposals[stor1[arg1].field_256].field_1536, proposals[stor1[arg1].field_256].field_1280, proposals[stor1[arg1].field_256].field_2048, 0, committees[arg1].field_256
                        require ext_call.success
                    if proposals[stor1[arg1].field_256].field_1792:
                        require 0 < rulesProposals.length
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x47ad396b with:
                             gas gas_remaining - 50 wei
                            args 0, 0, 0, proposals[stor1[arg1].field_256].field_1792, proposals[stor1[arg1].field_256].field_2048, uint256(rulesProposals.field_1792), committees[arg1].field_256
                        require ext_call.success
                else:
                    require committees[arg1].field_256 < proposals.length
                    require proposals[stor1[arg1].field_256].field_0 < committees.length
                    if not committees[stor3[committees[arg1].field_256].field_0].field_1536:
                        if proposals[stor1[arg1].field_256].field_2304:
                            if not proposals[stor1[arg1].field_256].field_1280:
                                if not proposals[stor1[arg1].field_256].field_1792:
                                    proposals[stor1[arg1].field_256].field_2304 = 0
                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                    call proposals[stor1[arg1].field_256].field_256.Project() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if not proposals[stor1[arg1].field_256].field_768:
                                        emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                    else:
                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                        call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_768
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if proposals[stor1[arg1].field_256].field_768 > 0:
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0xbe67f4fd with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        emit ContractorProposalClosed(proposals[stor1[arg1].field_256].field_768, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                        require ext_code.size(passDaoAddress)
                                        call passDaoAddress.0x7c56b798 with:
                                             gas gas_remaining - 50 wei
                                            args address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining - 50 wei
                                            args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_768
                                        require ext_call.success
                                else:
                                    require ext_code.size(passDaoAddress)
                                    call passDaoAddress.0xcbbe2199 with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x64cb5338 with:
                                         gas gas_remaining - 50 wei
                                        args committees[arg1].field_256
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        proposals[stor1[arg1].field_256].field_2304 = 0
                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                        call proposals[stor1[arg1].field_256].field_256.Project() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                            emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                        else:
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if proposals[stor1[arg1].field_256].field_768 > 0:
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0xbe67f4fd with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            if ext_call.return_data[0] > 0:
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0xcbbe2199 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0x7c56b798 with:
                                                 gas gas_remaining - 50 wei
                                                args address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                    else:
                                        if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                            proposals[stor1[arg1].field_256].field_2304 = 0
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                                emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            else:
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if proposals[stor1[arg1].field_256].field_768 > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xbe67f4fd with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                if ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xcbbe2199 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0x7c56b798 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                            else:
                                require ext_code.size(passDaoAddress)
                                call passDaoAddress.0xbe67f4fd with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x64cb5338 with:
                                     gas gas_remaining - 50 wei
                                    args committees[arg1].field_256
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if not proposals[stor1[arg1].field_256].field_1792:
                                        proposals[stor1[arg1].field_256].field_2304 = 0
                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                        call proposals[stor1[arg1].field_256].field_256.Project() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                            emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                        else:
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0xbe67f4fd with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0x7c56b798 with:
                                                 gas gas_remaining - 50 wei
                                                args address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                    else:
                                        require ext_code.size(passDaoAddress)
                                        call passDaoAddress.0xcbbe2199 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x64cb5338 with:
                                             gas gas_remaining - 50 wei
                                            args committees[arg1].field_256
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            proposals[stor1[arg1].field_256].field_2304 = 0
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            else:
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xbe67f4fd with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                if ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xcbbe2199 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0x7c56b798 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                        else:
                                            if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                                proposals[stor1[arg1].field_256].field_2304 = 0
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                    emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                else:
                                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                    call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xbe67f4fd with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    if ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xcbbe2199 with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0x7c56b798 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                else:
                                    if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                        if not proposals[stor1[arg1].field_256].field_1792:
                                            proposals[stor1[arg1].field_256].field_2304 = 0
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                                emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            else:
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xbe67f4fd with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0x7c56b798 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                        else:
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0xcbbe2199 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x64cb5338 with:
                                                 gas gas_remaining - 50 wei
                                                args committees[arg1].field_256
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                proposals[stor1[arg1].field_256].field_2304 = 0
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                    emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                else:
                                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                    call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xbe67f4fd with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    if ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xcbbe2199 with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0x7c56b798 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                            else:
                                                if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                                    proposals[stor1[arg1].field_256].field_2304 = 0
                                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                    call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                        emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                    else:
                                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                        call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(passDaoAddress)
                                                            call passDaoAddress.0xbe67f4fd with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                                 gas gas_remaining - 50 wei
                                                                args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        if ext_call.return_data[0] > 0:
                                                            require ext_code.size(passDaoAddress)
                                                            call passDaoAddress.0xcbbe2199 with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                                 gas gas_remaining - 50 wei
                                                                args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0x7c56b798 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(ext_call.return_data[0])
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
            require committees[arg1].field_160 <= 3
            emit ProposalClosed(arg1, 0, 1, 0, committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
    else:
        require 0 < rulesProposals.length
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x32990ad2 with:
             gas gas_remaining - 50 wei
            args committees[arg1].field_0, uint256(rulesProposals.field_512)
        require ext_call.success
        if committees[arg1].field_768 - committees[arg1].field_1024 > 0:
            call address(ext_call.return_data[0]) with:
               value committees[arg1].field_768 - committees[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        require 0 < rulesProposals.length
        require ext_code.size(passDaoAddress)
        call passDaoAddress.0xbe67f4fd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require uint256(rulesProposals.field_256)
        if committees[arg1].field_2048 + committees[arg1].field_2304 < ext_call.return_data[0] / uint256(rulesProposals.field_256):
            require committees[arg1].field_160 <= 3
            if not committees[arg1].field_160:
                require committees[arg1].field_256 < proposals.length
                proposals[stor1[arg1].field_256].field_2304 = 0
            require committees[arg1].field_160 <= 3
            emit ProposalClosed(arg1, 0, 0, ext_call.return_data[0], committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
            return 0
        if committees[arg1].field_2048 <= committees[arg1].field_2304:
            require committees[arg1].field_160 <= 3
            if not committees[arg1].field_160:
                require committees[arg1].field_256 < proposals.length
                proposals[stor1[arg1].field_256].field_2304 = 0
            require committees[arg1].field_160 <= 3
            emit ProposalClosed(arg1, 0, 0, ext_call.return_data[0], committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
            return 0
        committees[arg1].field_1792 = block.timestamp
        require committees[arg1].field_160 <= 3
        if committees[arg1].field_160:
            require committees[arg1].field_160 <= 3
            if committees[arg1].field_160 == 1:
                require committees[arg1].field_256 < resolutionProposals.length
                mem[196] = stor[sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2)].field_0
                idx = 196
                s = 0
                while stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 196 > idx + 32:
                    mem[idx + 32] = stor[s + sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 196] = stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length
                mem[stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 228] = stor[sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3)].field_0
                idx = stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 228
                s = 0
                while stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length + 228 > idx + 32:
                    mem[idx + 32] = stor[s + sha3((4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(resolutionProposals[stor1[arg1].field_256].field_256)
                call resolutionProposals[stor1[arg1].field_256].field_256.newResolution(string rg1, string rg2) with:
                     gas gas_remaining - 50 wei
                    args Array(len=stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length, data=mem[196 len stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 3].length + 32 % 32) + 32]), stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + (floor32(stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length - 1) + -stor[(4 * stor1[arg1].field_256) + ('name', 'resolutionProposals', 4) + 2].length + 32 % 32) + 96
                require ext_call.success
                require committees[arg1].field_160 <= 3
                emit ProposalClosed(arg1, committees[arg1].field_1024, 1, ext_call.return_data[0], committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
            else:
                require committees[arg1].field_160 <= 3
                if committees[arg1].field_160 == 2:
                    require committees[arg1].field_256 < rulesProposals.length
                    require 0 < rulesProposals.length
                    uint256(rulesProposals.field_0) = rulesProposals[stor1[arg1].field_256].field_0
                    uint256(rulesProposals.field_256) = rulesProposals[stor1[arg1].field_256].field_256
                    uint256(rulesProposals.field_1280) = rulesProposals[stor1[arg1].field_256].field_1280
                    uint256(rulesProposals.field_512) = rulesProposals[stor1[arg1].field_256].field_512
                    uint256(rulesProposals.field_768) = rulesProposals[stor1[arg1].field_256].field_768
                    uint256(rulesProposals.field_1024) = rulesProposals[stor1[arg1].field_256].field_1024
                    uint256(rulesProposals.field_1536) = rulesProposals[stor1[arg1].field_256].field_1536
                    uint256(rulesProposals.field_1792) = rulesProposals[stor1[arg1].field_256].field_1792
                    uint256(rulesProposals.field_2048) = rulesProposals[stor1[arg1].field_256].field_2048
                else:
                    require committees[arg1].field_160 <= 3
                    if committees[arg1].field_160 == 3:
                        require committees[arg1].field_256 < upgradeProposals.length
                        if upgradeProposals[stor1[arg1].field_256].field_512:
                            if upgradeProposals[stor1[arg1].field_256].field_512 != address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xb187984f with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if eth.balance(ext_call.return_data[0]) > 0:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                         gas gas_remaining - 50 wei
                                        args upgradeProposals[stor1[arg1].field_256].field_512, eth.balance(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_call.return_data[0]
                        if upgradeProposals[stor1[arg1].field_256].field_768:
                            if upgradeProposals[stor1[arg1].field_256].field_768 != address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xb187984f with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                        require ext_code.size(passDaoAddress)
                        call passDaoAddress.0xf000999e with:
                             gas gas_remaining - 50 wei
                            args upgradeProposals[stor1[arg1].field_256].field_256, upgradeProposals[stor1[arg1].field_256].field_512, upgradeProposals[stor1[arg1].field_256].field_768
                        require ext_call.success
                        emit DappUpgraded(upgradeProposals[stor1[arg1].field_256].field_256, upgradeProposals[stor1[arg1].field_256].field_512, upgradeProposals[stor1[arg1].field_256].field_768);
                require committees[arg1].field_160 <= 3
                emit ProposalClosed(arg1, 0, 1, ext_call.return_data[0], committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
        else:
            require committees[arg1].field_256 < proposals.length
            if 0 == proposals[stor1[arg1].field_256].field_512:
                proposals[stor1[arg1].field_256].field_2304 = 0
            if proposals[stor1[arg1].field_256].field_1280:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x47ad396b with:
                     gas gas_remaining - 50 wei
                    args 0, 0, proposals[stor1[arg1].field_256].field_1536, proposals[stor1[arg1].field_256].field_1280, proposals[stor1[arg1].field_256].field_2048, 0, committees[arg1].field_256
                require ext_call.success
                if proposals[stor1[arg1].field_256].field_1792:
                    require 0 < rulesProposals.length
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x47ad396b with:
                         gas gas_remaining - 50 wei
                        args 0, 0, 0, proposals[stor1[arg1].field_256].field_1792, proposals[stor1[arg1].field_256].field_2048, uint256(rulesProposals.field_1792), committees[arg1].field_256
                    require ext_call.success
            else:
                if proposals[stor1[arg1].field_256].field_1792:
                    if proposals[stor1[arg1].field_256].field_1280:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x47ad396b with:
                             gas gas_remaining - 50 wei
                            args 0, 0, proposals[stor1[arg1].field_256].field_1536, proposals[stor1[arg1].field_256].field_1280, proposals[stor1[arg1].field_256].field_2048, 0, committees[arg1].field_256
                        require ext_call.success
                    if proposals[stor1[arg1].field_256].field_1792:
                        require 0 < rulesProposals.length
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x47ad396b with:
                             gas gas_remaining - 50 wei
                            args 0, 0, 0, proposals[stor1[arg1].field_256].field_1792, proposals[stor1[arg1].field_256].field_2048, uint256(rulesProposals.field_1792), committees[arg1].field_256
                        require ext_call.success
                else:
                    require committees[arg1].field_256 < proposals.length
                    require proposals[stor1[arg1].field_256].field_0 < committees.length
                    if not committees[stor3[committees[arg1].field_256].field_0].field_1536:
                        if proposals[stor1[arg1].field_256].field_2304:
                            if not proposals[stor1[arg1].field_256].field_1280:
                                if not proposals[stor1[arg1].field_256].field_1792:
                                    proposals[stor1[arg1].field_256].field_2304 = 0
                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                    call proposals[stor1[arg1].field_256].field_256.Project() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if not proposals[stor1[arg1].field_256].field_768:
                                        emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                    else:
                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                        call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_768
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if proposals[stor1[arg1].field_256].field_768 > 0:
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0xbe67f4fd with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        emit ContractorProposalClosed(proposals[stor1[arg1].field_256].field_768, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                        require ext_code.size(passDaoAddress)
                                        call passDaoAddress.0x7c56b798 with:
                                             gas gas_remaining - 50 wei
                                            args address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining - 50 wei
                                            args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_768
                                        require ext_call.success
                                else:
                                    require ext_code.size(passDaoAddress)
                                    call passDaoAddress.0xcbbe2199 with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x64cb5338 with:
                                         gas gas_remaining - 50 wei
                                        args committees[arg1].field_256
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        proposals[stor1[arg1].field_256].field_2304 = 0
                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                        call proposals[stor1[arg1].field_256].field_256.Project() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                            emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                        else:
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if proposals[stor1[arg1].field_256].field_768 > 0:
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0xbe67f4fd with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            if ext_call.return_data[0] > 0:
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0xcbbe2199 with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0x7c56b798 with:
                                                 gas gas_remaining - 50 wei
                                                args address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                    else:
                                        if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                            proposals[stor1[arg1].field_256].field_2304 = 0
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                                emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            else:
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if proposals[stor1[arg1].field_256].field_768 > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xbe67f4fd with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                if ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xcbbe2199 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0x7c56b798 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                            else:
                                require ext_code.size(passDaoAddress)
                                call passDaoAddress.0xbe67f4fd with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x64cb5338 with:
                                     gas gas_remaining - 50 wei
                                    args committees[arg1].field_256
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if not proposals[stor1[arg1].field_256].field_1792:
                                        proposals[stor1[arg1].field_256].field_2304 = 0
                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                        call proposals[stor1[arg1].field_256].field_256.Project() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                            emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                        else:
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0xbe67f4fd with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0x7c56b798 with:
                                                 gas gas_remaining - 50 wei
                                                args address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                 gas gas_remaining - 50 wei
                                                args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                            require ext_call.success
                                    else:
                                        require ext_code.size(passDaoAddress)
                                        call passDaoAddress.0xcbbe2199 with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x64cb5338 with:
                                             gas gas_remaining - 50 wei
                                            args committees[arg1].field_256
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            proposals[stor1[arg1].field_256].field_2304 = 0
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            else:
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xbe67f4fd with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                if ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xcbbe2199 with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0x7c56b798 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                        else:
                                            if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                                proposals[stor1[arg1].field_256].field_2304 = 0
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                    emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                else:
                                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                    call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xbe67f4fd with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    if ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xcbbe2199 with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0x7c56b798 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                else:
                                    if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                        if not proposals[stor1[arg1].field_256].field_1792:
                                            proposals[stor1[arg1].field_256].field_2304 = 0
                                            require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                            call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if not ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768:
                                                emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                            else:
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0xbe67f4fd with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                emit ContractorProposalClosed((ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                require ext_code.size(passDaoAddress)
                                                call passDaoAddress.0x7c56b798 with:
                                                     gas gas_remaining - 50 wei
                                                    args address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                     gas gas_remaining - 50 wei
                                                    args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                require ext_call.success
                                        else:
                                            require ext_code.size(passDaoAddress)
                                            call passDaoAddress.0xcbbe2199 with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x64cb5338 with:
                                                 gas gas_remaining - 50 wei
                                                args committees[arg1].field_256
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                proposals[stor1[arg1].field_256].field_2304 = 0
                                                require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                    emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                else:
                                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                    call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xbe67f4fd with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    if ext_call.return_data[0] > 0:
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0xcbbe2199 with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                    require ext_code.size(passDaoAddress)
                                                    call passDaoAddress.0x7c56b798 with:
                                                         gas gas_remaining - 50 wei
                                                        args address(ext_call.return_data[0])
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                         gas gas_remaining - 50 wei
                                                        args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                    require ext_call.success
                                            else:
                                                if block.timestamp > committees[stor3[committees[arg1].field_256].field_0].field_1792 + (60 * proposals[stor1[arg1].field_256].field_2048):
                                                    proposals[stor1[arg1].field_256].field_2304 = 0
                                                    require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                    call proposals[stor1[arg1].field_256].field_256.Project() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    if not (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768:
                                                        emit ContractorProposalClosed(0, committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                    else:
                                                        require ext_code.size(proposals[stor1[arg1].field_256].field_256)
                                                        call proposals[stor1[arg1].field_256].field_256.order(uint256 rg1, uint256 rg2) with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if proposals[stor1[arg1].field_256].field_768 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(passDaoAddress)
                                                            call passDaoAddress.0xbe67f4fd with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                                 gas gas_remaining - 50 wei
                                                                args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0] + proposals[stor1[arg1].field_256].field_768
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        if ext_call.return_data[0] > 0:
                                                            require ext_code.size(passDaoAddress)
                                                            call passDaoAddress.0xcbbe2199 with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x9e1a00aa with:
                                                                 gas gas_remaining - 50 wei
                                                                args proposals[stor1[arg1].field_256].field_256, ext_call.return_data[0]
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        emit ContractorProposalClosed(((2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768), committees[arg1].field_256, proposals[stor1[arg1].field_256].field_512, proposals[stor1[arg1].field_256].field_256);
                                                        require ext_code.size(passDaoAddress)
                                                        call passDaoAddress.0x7c56b798 with:
                                                             gas gas_remaining - 50 wei
                                                            args address(ext_call.return_data[0])
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).newOrder(address rg1, uint256 rg2, uint256 rg3) with:
                                                             gas gas_remaining - 50 wei
                                                            args proposals[stor1[arg1].field_256].field_256, proposals[stor1[arg1].field_256].field_512, (2 * ext_call.return_data[0]) + proposals[stor1[arg1].field_256].field_768
                                                        require ext_call.success
            require committees[arg1].field_160 <= 3
            emit ProposalClosed(arg1, 0, 1, ext_call.return_data[0], committees[arg1].field_768 - committees[arg1].field_1024, committees[arg1].field_256, committees[arg1].field_160);
    return 1
}



}
