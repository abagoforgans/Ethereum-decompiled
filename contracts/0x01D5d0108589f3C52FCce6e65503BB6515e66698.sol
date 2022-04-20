contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor5;
address stor6;
address stor7;
uint256 stor8;

function _fallback() {
    address(stor0.field_0) = msg.sender
    stor5 = code.data[6176 len 20]
    stor6 = code.data[6208 len 20]
    stor7 = code.data[6240 len 20]
    stor8 = eth.balance(code.data[6228 len 32])
    uint8(stor0.field_160) = 0
    return code.data[209 len 5955]
}



// =====================  Runtime code  =====================


const getVotingDuration = (168 * 24 * 3600)


uint8 stor0; offset 160
address owner;
mapping of struct stor1;
array of address stor2;
array of address stor4;
address stor5;
address stor6;
address stor7;
uint256 drpCrowdsaleRecordedBalance;

function getVote(address arg1, address arg2) {
    return bool(votingResult[address(arg1)][3][address(arg2)].field_256)
}

function getOwner() {
    return owner
}

function getVotingResult(address arg1) {
    return votingResult[address(arg1)].field_256, votingResult[address(arg1)].field_512
}

function drpCrowdsaleRecordedBalance() {
    return drpCrowdsaleRecordedBalance
}

function getProposalCount() {
    return stor4.length
}

function getVoteCount(address arg1) {
    return votingResult[address(arg1)].field_1024
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function isDeploying() {
    require stor0 <= 2
    return not stor0
}

function isExecuted() {
    require stor0 <= 2
    return (stor0 == 2)
}

function isDeployed() {
    require stor0 <= 2
    return (stor0 == 1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function _fallback() payable {
    require stor0 <= 2
    require not stor0
    require stor7 == msg.sender
}

function deploy() {
    require owner == msg.sender
    require stor0 <= 2
    require not stor0
    require eth.balance(this.address) >= drpCrowdsaleRecordedBalance
    stor0 = 1
}

function balanceOf(address arg1, address arg2) {
    if stor5 == arg1:
        return stor1[address(arg2)].field_0
    if stor6 != arg1:
        return 0
    return stor1[address(arg2)].field_256
}

function hasBalance(address arg1) {
    if stor2.length <= 0:
        return (stor2.length > 0)
    require stor1[address(arg1)].field_512 < stor2.length
    return (arg1 == address(stor2[stor1[address(arg1)].field_512]))
}

function isProposed(address arg1) {
    if stor4.length <= 0:
        return (stor4.length > 0)
    require votingResult[address(arg1)].field_1280 < stor4.length
    return (arg1 == address(stor4[stor3[address(arg1)].field_1280]))
}

function getTotalSupply() {
    require ext_code.size(stor5)
    call stor5.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (2 * ext_call.return_data[0])
}

function hasVoted(address arg1, address arg2) {
    if votingResult[address(arg1)].field_1024 <= 0:
        return 0
    require votingResult[address(arg1)][3][address(arg2)].field_512 < votingResult[address(arg1)].field_1024
    return (stor[votingResult[address(arg1)][3][address(arg2)].field_512 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'votingResult', 3)))].field_0 == arg2)
}

function retrieveTokens(address arg1) {
    require owner == msg.sender
    require stor5 != arg1
    require stor6 != arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
}

function propose(address arg1) {
    require owner == msg.sender
    require stor0 <= 2
    require stor0 == 1
    if stor4.length > 0:
        require votingResult[address(arg1)].field_1280 < stor4.length
        require arg1 != address(stor4[stor3[address(arg1)].field_1280])
    votingResult[address(arg1)].field_0 = block.timestamp
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = arg1
    votingResult[address(arg1)].field_1280 = stor4.length
}

function isSupported(address arg1, bool arg2) {
    if arg2:
        if block.timestamp <= votingResult[address(arg1)].field_0 + (168 * 24 * 3600):
            return 0
    if votingResult[address(arg1)].field_256 <= votingResult[address(arg1)].field_512:
        return (votingResult[address(arg1)].field_256 > votingResult[address(arg1)].field_512)
    require ext_code.size(stor5)
    call stor5.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return votingResult[address(arg1)].field_256 + votingResult[address(arg1)].field_512 >= 10 * ext_call.return_data[0] / 100
}

function execute(address arg1) {
    require owner == msg.sender
    require stor0 <= 2
    require stor0 == 1
    require stor4.length > 0
    require votingResult[address(arg1)].field_1280 < stor4.length
    require arg1 == address(stor4[stor3[address(arg1)].field_1280])
    require block.timestamp > votingResult[address(arg1)].field_0 + (168 * 24 * 3600)
    require votingResult[address(arg1)].field_256 > votingResult[address(arg1)].field_512
    require ext_code.size(stor5)
    call stor5.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require votingResult[address(arg1)].field_256 + votingResult[address(arg1)].field_512 >= 10 * ext_call.return_data[0] / 100
    stor0 = 2
    require ext_code.size(stor5)
    call stor5.0x7065cb48 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x7065cb48 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0x173825d9 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x173825d9 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require eth.balance(arg1) == eth.balance(this.address) + eth.balance(arg1)
    require not eth.balance(this.address)
}

function withdrawDRPS(uint256 arg1) {
    require stor1[address(msg.sender)].field_0 >= arg1
    require stor1[address(msg.sender)].field_0 - arg1 <= stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)].field_0 -= arg1
    s = 0
    idx = stor4.length
    while idx > 0:
        require idx - 1 < stor4.length
        if block.timestamp > votingResult[address(stor4[idx])].field_0 + (168 * 24 * 3600):
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg1
            require ext_call.success
            require ext_call.return_data[0]
        require idx - 1 < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 3
        if votingResult[address(stor4[idx])].field_1024 > 0:
            mem[32] = sha3(address(stor4[idx]), 3) + 3
            require votingResult[address(stor4[idx])][3][address(msg.sender)].field_512 < votingResult[address(stor4[idx])].field_1024
            mem[0] = sha3(address(stor4[idx]), 3) + 4
            if stor[votingResult[address(stor4[idx])][3][address(msg.sender)].field_512 + ('array', 4, ('map', ('type', 160, ('stor', ('array', ('var', 0), ('name', 'stor4', 4)))), ('name', 'votingResult', 3)))].field_0 == msg.sender:
                mem[0] = msg.sender
                mem[32] = sha3(address(stor4[idx]), 3) + 3
                if not votingResult[address(stor4[idx])][3][address(msg.sender)].field_256:
                    votingResult[address(stor4[idx])].field_512 -= arg1
                else:
                    votingResult[address(stor4[idx])].field_256 -= arg1
        s = sha3(address(stor4[idx]), 3)
        idx = idx - 1
        continue 
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function withdrawDRPU(uint256 arg1) {
    require stor1[address(msg.sender)].field_256 >= arg1
    require stor1[address(msg.sender)].field_256 - arg1 <= stor1[address(msg.sender)].field_256
    stor1[address(msg.sender)].field_256 -= arg1
    s = 0
    idx = stor4.length
    while idx > 0:
        require idx - 1 < stor4.length
        if block.timestamp > votingResult[address(stor4[idx])].field_0 + (168 * 24 * 3600):
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg1
            require ext_call.success
            require ext_call.return_data[0]
        require idx - 1 < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 3
        if votingResult[address(stor4[idx])].field_1024 > 0:
            mem[32] = sha3(address(stor4[idx]), 3) + 3
            require votingResult[address(stor4[idx])][3][address(msg.sender)].field_512 < votingResult[address(stor4[idx])].field_1024
            mem[0] = sha3(address(stor4[idx]), 3) + 4
            if stor[votingResult[address(stor4[idx])][3][address(msg.sender)].field_512 + ('array', 4, ('map', ('type', 160, ('stor', ('array', ('var', 0), ('name', 'stor4', 4)))), ('name', 'votingResult', 3)))].field_0 == msg.sender:
                mem[0] = msg.sender
                mem[32] = sha3(address(stor4[idx]), 3) + 3
                if not votingResult[address(stor4[idx])][3][address(msg.sender)].field_256:
                    votingResult[address(stor4[idx])].field_512 -= arg1
                else:
                    votingResult[address(stor4[idx])].field_256 -= arg1
        s = sha3(address(stor4[idx]), 3)
        idx = idx - 1
        continue 
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function notifyTokensReceived(address arg1, uint256 arg2) {
    require stor0 <= 2
    require stor0 == 1
    if stor5 != msg.sender:
        require stor6 == msg.sender
    require msg.sender == msg.sender
    if stor2.length <= 0:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        address(stor2[stor2.length]) = arg1
        stor1[address(arg1)].field_0 = 0
        stor1[address(arg1)].field_256 = 0
        stor1[address(arg1)].field_512 = stor2.length
        if stor5 != msg.sender:
            stor1[address(arg1)].field_256 += arg2
        else:
            stor1[address(arg1)].field_0 += arg2
    else:
        require stor1[address(arg1)].field_512 < stor2.length
        if arg1 == address(stor2[stor1[address(arg1)].field_512]):
            if stor5 != msg.sender:
                stor1[address(arg1)].field_256 += arg2
            else:
                stor1[address(arg1)].field_0 += arg2
        else:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    uint256(stor2[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor2[stor2.length]) = arg1
            stor1[address(arg1)].field_0 = 0
            stor1[address(arg1)].field_256 = 0
            stor1[address(arg1)].field_512 = stor2.length
            if stor5 != msg.sender:
                stor1[address(arg1)].field_256 += arg2
            else:
                stor1[address(arg1)].field_0 += arg2
    s = 0
    idx = stor4.length
    while idx > 0:
        require idx - 1 < stor4.length
        if block.timestamp > votingResult[address(stor4[idx])].field_0 + (168 * 24 * 3600):
        require idx - 1 < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 3
        if votingResult[address(stor4[idx])].field_1024 > 0:
            mem[32] = sha3(address(stor4[idx]), 3) + 3
            require votingResult[address(stor4[idx])][3][address(arg1)].field_512 < votingResult[address(stor4[idx])].field_1024
            mem[0] = sha3(address(stor4[idx]), 3) + 4
            if stor[votingResult[address(stor4[idx])][3][address(arg1)].field_512 + ('array', 4, ('map', ('type', 160, ('stor', ('array', ('var', 0), ('name', 'stor4', 4)))), ('name', 'votingResult', 3)))].field_0 == arg1:
                mem[0] = arg1
                mem[32] = sha3(address(stor4[idx]), 3) + 3
                if not votingResult[address(stor4[idx])][3][address(arg1)].field_256:
                    votingResult[address(stor4[idx])].field_512 += arg2
                else:
                    votingResult[address(stor4[idx])].field_256 += arg2
        s = sha3(address(stor4[idx]), 3)
        idx = idx - 1
        continue 
}

function vote(address arg1, bool arg2) {
    require stor0 <= 2
    require stor0 == 1
    require stor4.length > 0
    require votingResult[address(arg1)].field_1280 < stor4.length
    require arg1 == address(stor4[stor3[address(arg1)].field_1280])
    require block.timestamp <= votingResult[address(arg1)].field_0 + (168 * 24 * 3600)
    if stor1[address(msg.sender)].field_0 <= 0:
        require stor1[address(msg.sender)].field_256 > 0
    if votingResult[address(arg1)].field_1024 <= 0:
        votingResult[address(arg1)].field_1024++
        if not votingResult[address(arg1)].field_1024 <= votingResult[address(arg1)].field_1024 + 1:
            idx = votingResult[address(arg1)].field_1024 + 1
            while votingResult[address(arg1)].field_1024 > idx:
                votingResult[address(arg1)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        stor[votingResult[address(arg1)].field_1024 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'votingResult', 3)))].field_0 = msg.sender
        votingResult[address(arg1)][3][address(msg.sender)].field_0 = block.timestamp
        votingResult[address(arg1)][3][address(msg.sender)].field_256 = uint8(arg2)
        votingResult[address(arg1)][3][address(msg.sender)].field_512 = votingResult[address(arg1)].field_1024
        if not arg2:
            votingResult[address(arg1)].field_512 = stor1[address(msg.sender)].field_256 + stor1[address(msg.sender)].field_0 + votingResult[address(arg1)].field_512
        else:
            votingResult[address(arg1)].field_256 = votingResult[address(arg1)].field_256 + stor1[address(msg.sender)].field_256 + stor1[address(msg.sender)].field_0
    else:
        require votingResult[address(arg1)][3][address(msg.sender)].field_512 < votingResult[address(arg1)].field_1024
        if stor[votingResult[address(arg1)][3][address(msg.sender)].field_512 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'votingResult', 3)))].field_0 == msg.sender:
            if arg2 != bool(votingResult[address(arg1)][3][address(msg.sender)].field_256):
                if not arg2:
                    votingResult[address(arg1)].field_512 = stor1[address(msg.sender)].field_256 + stor1[address(msg.sender)].field_0 + votingResult[address(arg1)].field_512
                    votingResult[address(arg1)].field_256 = votingResult[address(arg1)].field_256 - stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_0
                else:
                    votingResult[address(arg1)].field_256 = votingResult[address(arg1)].field_256 + stor1[address(msg.sender)].field_256 + stor1[address(msg.sender)].field_0
                    votingResult[address(arg1)].field_512 = votingResult[address(arg1)].field_512 - stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_0
                votingResult[address(arg1)][3][address(msg.sender)].field_256 = uint8(arg2)
                votingResult[address(arg1)][3][address(msg.sender)].field_0 = block.timestamp
        else:
            votingResult[address(arg1)].field_1024++
            if not votingResult[address(arg1)].field_1024 <= votingResult[address(arg1)].field_1024 + 1:
                idx = votingResult[address(arg1)].field_1024 + 1
                while votingResult[address(arg1)].field_1024 > idx:
                    votingResult[address(arg1)][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[votingResult[address(arg1)].field_1024 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'votingResult', 3)))].field_0 = msg.sender
            votingResult[address(arg1)][3][address(msg.sender)].field_0 = block.timestamp
            votingResult[address(arg1)][3][address(msg.sender)].field_256 = uint8(arg2)
            votingResult[address(arg1)][3][address(msg.sender)].field_512 = votingResult[address(arg1)].field_1024
            if not arg2:
                votingResult[address(arg1)].field_512 = stor1[address(msg.sender)].field_256 + stor1[address(msg.sender)].field_0 + votingResult[address(arg1)].field_512
            else:
                votingResult[address(arg1)].field_256 = votingResult[address(arg1)].field_256 + stor1[address(msg.sender)].field_256 + stor1[address(msg.sender)].field_0
}



}
