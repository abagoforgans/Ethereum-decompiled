contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor11;
uint8 stor13;
uint256 stor31;
address stor32;

function _fallback() {
    mem[96 len -9600] = code.data[10747 len -9600]
    mem[64] = -9504
    require msg.sender
    require mem[108 len 20]
    require mem[108 len 20] != mem[140 len 20]
    require mem[108 len 20] != this.address
    require mem[140 len 20] != this.address
    stor0 = msg.sender
    stor1 = mem[108 len 20]
    stor2 = mem[140 len 20]
    stor11.length = 1
    if not stor11.length <= 1:
        idx = 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    mem[0] = 3
    stor3.length = (2 * mem[mem[192] + 96]) + 1
    s = 0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor3[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor3.length + 31 / 32 > Mask(251, 0, mem[mem[192] + 96] + 31) >> 5:
        stor3[Mask(251, 0, mem[mem[192] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 1
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4.length = (2 * mem[mem[224] + 96]) + 1
    s = 0
    idx = mem[224] + 128
    while mem[224] + mem[mem[224] + 96] + 128 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor4.length + 31 / 32 > Mask(251, 0, mem[mem[224] + 96] + 31) >> 5:
        stor4[Mask(251, 0, mem[mem[224] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[224] + 96] + 31) >> 5) + 1
        while stor4.length + 31 / 32 > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor5 = mem[287 len 1]
    if not mem[288]:
        stor13 = 0
        emit TransferDisable()
    else:
        stor13 = 1
        emit TransferAble()
    stor32 = mem[172 len 20]
    stor31 = 1
    if not stor31 <= 1:
        mem[0] = 31
        idx = 7
        while sha3(31) + (7 * stor31) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                    stor[sha3(idx + sha3(mem[0]) + 1)] = 0
                    s = sha3(idx + sha3(mem[0]) + 1) + 1
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            stor[idx + sha3(mem[0]) + 3] = 0
            stor[idx + sha3(mem[0]) + 4] = 0
            stor[idx + sha3(mem[0]) + 5] = 0
            stor[idx + sha3(mem[0]) + 6] = 0
            idx = idx + 7
            continue 
    return code.data[1147 len 9600]
}



// =====================  Runtime code  =====================


address creatorAddress;
address clientAddress;
address recipientAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 smartContractStartDate;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 fundedAmount;
array of address holder;
mapping of uint256 holderID;
uint8 stor13;
mapping of uint256 blockedDeadLine;
array of uint8 stor15;
array of uint256 stor16;
array of uint256 stor17;
array of uint256 stor18;
array of uint256 stor19;
array of uint256 stor20;
array of uint256 stor21;
array of uint256 stor22;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
address clonedFromAddress;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[352] = stor[sha3((7 * arg1) + ('name', 'proposals', 31) + 1)].field_0
    idx = 352
    s = 0
    while stor[(7 * arg1) + ('name', 'proposals', 31) + 1].length + 352 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'proposals', 31) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return proposals[arg1].field_0, 
           Array(len=stor[(7 * arg1) + ('name', 'proposals', 31) + 1].length, data=mem[352 len stor[(7 * arg1) + ('name', 'proposals', 31) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'proposals', 31) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'proposals', 31) + 1].length + 32 % 32)]),
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].field_1280,
           proposals[arg1].field_1536
}

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function client() {
    return clientAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function smartContractStartDate() {
    return smartContractStartDate
}

function FundedAmount(uint256 arg1) {
    return fundedAmount[arg1]
}

function recipient() {
    return recipientAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function blockedDeadLine(address arg1) {
    return blockedDeadLine[arg1]
}

function transferable() {
    return bool(stor13)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function HolderAddress(uint256 arg1) {
    require arg1 < holder.length
    return holder[arg1]
}

function clonedFrom() {
    return clonedFromAddress
}

function holderID(address arg1) {
    return holderID[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function numberOfHolders() {
    return (holder.length - 1)
}

function numberOfProposals() {
    return (proposals.length - 1)
}

function closeSetup() {
    smartContractStartDate = block.timestamp
}

function receiveFees() payable {
    require not recipientAddress
    emit FeesReceived(msg.value, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function ableTransfer() {
    require clientAddress == msg.sender
    if not stor13:
        stor13 = 1
        emit TransferAble()
}

function disableTransfer() {
    require clientAddress == msg.sender
    if stor13:
        stor13 = 0
        emit TransferDisable()
}

function setFundingStartTime(uint256 arg1) {
    require address(stor15.length.field_8) == msg.sender
    require block.timestamp <= stor19.length
    stor18.length = arg1
}

function receiveDeposit() payable {
    require recipientAddress
    if recipientAddress != msg.sender:
        require creatorAddress == msg.sender
    emit DepositReceived(msg.value, msg.sender);
}

function updateClient(address arg1) {
    require clientAddress == msg.sender
    require arg1
    require recipientAddress != arg1
    emit ClientUpdated(clientAddress, arg1);
    clientAddress = arg1
}

function blockTransfer(address arg1, uint256 arg2) {
    require clientAddress == msg.sender
    require not recipientAddress
    if arg2 > blockedDeadLine[address(arg1)]:
        blockedDeadLine[address(arg1)] = arg2
}

function sendTo(address arg1, uint256 arg2) {
    require clientAddress == msg.sender
    require not recipientAddress
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function updateRecipient(address arg1) {
    require recipientAddress
    if recipientAddress != msg.sender:
        require creatorAddress == msg.sender
    require arg1
    require clientAddress != arg1
    emit RecipientUpdated(recipientAddress, arg1);
    recipientAddress = arg1
}

function withdraw(uint256 arg1) {
    require recipientAddress
    if recipientAddress != msg.sender:
        require creatorAddress == msg.sender
    call recipientAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdawal(arg1, recipientAddress);
}

function FundingRules(uint256 arg1) {
    require arg1 < 2
    return bool(uint8(stor15[arg1].field_0)), 
           address(stor15[arg1].field_0),
           stor16[arg1],
           stor17[arg1],
           stor18[arg1],
           stor19[arg1],
           stor20[arg1],
           stor21[arg1],
           stor22[arg1]
}

function fundingMaxAmount(address arg1) {
    if block.timestamp <= stor19.length:
        if block.timestamp >= stor18.length:
            if address(stor15.length.field_8) == arg1:
                return stor16.length
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function setFundingFueled() {
    require address(stor15.length.field_8) == msg.sender
    require block.timestamp <= stor19.length
    if recipientAddress:
        stor19.length = block.timestamp
    else:
        fundedAmount[stor22.length] = stor17.length
        stor19.length = block.timestamp
        emit FundingFueled(stor17.length, stor22.length);
}

function setTokenPriceProposal(uint256 arg1, uint256 arg2, uint256 arg3) {
    require recipientAddress
    if recipientAddress != msg.sender:
        require creatorAddress == msg.sender
    require arg3 >= block.timestamp
    require block.timestamp >= stor27
    stor28 = arg1
    stor29 = arg2
    stor26 = block.timestamp
    stor27 = arg3
    emit TokenPriceProposalSet(arg1, arg2, arg3);
}

function actualPriceDivisor() {
    if block.timestamp <= stor19.length:
        if block.timestamp >= stor18.length:
            return (((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100)
    else:
        if block.timestamp >= stor18.length:
            return (((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100)
    ('lt', 'timestamp', ('stor', ('length', ('name', 'stor18', 18))))
    return 100
}

function order(uint256 arg1, uint256 arg2, uint256 arg3) {
    require clientAddress == msg.sender
    require arg2 < proposals.length
    if arg3 + proposals[arg2].field_1280 > proposals[arg2].field_0:
        return 0
    if arg3 + proposals[arg2].field_1280 < proposals[arg2].field_1280:
        return 0
    if arg3 + proposals[arg2].field_1280 < arg3:
        return 0
    proposals[arg2].field_1024 = arg1
    proposals[arg2].field_1280 += arg3
    proposals[arg2].field_1536 = block.timestamp
    emit Order(arg3, arg1, arg2);
    return 1
}

function createInitialTokens(address arg1, uint256 arg2) {
    require not smartContractStartDate
    if creatorAddress != msg.sender:
        require msg.sender == this.address
    if arg2 > 0:
        if not balanceOf[address(arg1)]:
            if not holderID[address(arg1)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = arg1
                holderID[address(arg1)] = holder.length
                emit holderAdded(holder.length, arg1);
            balanceOf[address(arg1)] = arg2
            totalSupply += arg2
            emit TokensCreated(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require stor13
    require block.timestamp > blockedDeadLine[address(msg.sender)]
    require block.timestamp > blockedDeadLine[address(arg1)]
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not holderID[address(arg1)]:
        holder.length++
        require holder.length < holder.length
        holder[holder.length] = arg1
        holderID[address(arg1)] = holder.length
        emit holderAdded(holder.length, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require stor13
    require block.timestamp > blockedDeadLine[address(arg1)]
    require block.timestamp > blockedDeadLine[address(arg2)]
    require arg2 != this.address
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if not holderID[address(arg2)]:
        holder.length++
        require holder.length < holder.length
        holder[holder.length] = arg2
        holderID[address(arg2)] = holder.length
        emit holderAdded(holder.length, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function setFundingRules(address arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require clientAddress == msg.sender
    require block.timestamp >= stor19.length
    require arg1 != this.address
    require clientAddress != arg1
    if arg2:
        require not arg1
    else:
        require arg1
        if arg2:
            require not arg1
    if recipientAddress:
        require stor28
        require arg6 >= stor29
        require block.timestamp >= stor26
        require stor27 >= block.timestamp + (60 * arg5)
    else:
        require arg3
        if recipientAddress:
            require stor28
            require arg6 >= stor29
            require block.timestamp >= stor26
            require stor27 >= block.timestamp + (60 * arg5)
    require arg4
    require arg5
    stor18.length = block.timestamp
    stor19.length = block.timestamp + (60 * arg5)
    address(stor15.length.field_8) = arg1
    uint8(stor15.length) = uint8(arg2)
    if recipientAddress:
        stor20.length = stor28
        stor21.length = stor29
    else:
        stor20.length = arg3
        stor21.length = arg6
    stor17.length = 0
    stor16.length = arg4
    stor22.length = arg7
    emit FundingRulesSet(stor19.length, arg1, arg7, stor18.length);
}

function cloneTokens(uint256 arg1, uint256 arg2) {
    require 0 == smartContractStartDate
    require arg1 >= 1
    require ext_code.size(clonedFromAddress)
    call clonedFromAddress.numberOfHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    idx = arg1
    s = 0
    while idx <= arg2:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(clonedFromAddress)
        call clonedFromAddress.0xb1a1318a with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 8
        if not balanceOf[address(ext_call.return_data[0])]:
            mem[128] = 0
            mem[100] = address(ext_call.return_data[0])
            require ext_code.size(clonedFromAddress)
            call clonedFromAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require not smartContractStartDate
            if creatorAddress != msg.sender:
                require msg.sender == this.address
            if ext_call.return_data[0] > 0:
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 8
                if not balanceOf[address(ext_call.return_data[0])]:
                    if not holderID[address(ext_call.return_data[0])]:
                        holder.length++
                        require holder.length < holder.length
                        holder[holder.length] = address(ext_call.return_data[0])
                        holderID[address(ext_call.return_data[0])] = holder.length
                        mem[128] = address(ext_call.return_data[0])
                        emit holderAdded(holder.length, address(ext_call.return_data[0]));
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 8
                    balanceOf[address(ext_call.return_data[0])] = ext_call.return_data[0]
                    totalSupply += ext_call.return_data[0]
                    mem[96] = ext_call.return_data[0]
                    emit TokensCreated(ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]));
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
}

function cloneProposal(uint256 arg1, string arg2, bytes32 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    mem[128 len arg2.length] = arg2[all]
    require 0 == smartContractStartDate
    require recipientAddress
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 31
        idx = (7 * proposals.length) + 7
        while sha3(31) + (7 * proposals.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            stor[idx + sha3(mem[0]) + 3] = 0
            stor[idx + sha3(mem[0]) + 4] = 0
            stor[idx + sha3(mem[0]) + 5] = 0
            stor[idx + sha3(mem[0]) + 6] = 0
            idx = idx + 7
            continue 
    require proposals.length < proposals.length
    proposals[proposals.length].field_0 = arg1
    proposals[proposals.length].field_256 = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        stor[s + sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    proposals[proposals.length].field_512 = arg3
    proposals[proposals.length].field_768 = arg4
    proposals[proposals.length].field_1024 = arg5
    proposals[proposals.length].field_1280 = arg6
    proposals[proposals.length].field_1536 = arg7
    mem[ceil32(arg2.length) + 256] = stor[sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_0
    idx = ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg2.length) + stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit ProposalCloned(proposals[proposals.length].field_0, Array(len=stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length, data=mem[ceil32(arg2.length) + 256 len stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + (floor32(stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length - 1) + -stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 32 % 32)]), arg3, arg5, proposals.length);
}

function newProposal(uint256 arg1, string arg2, bytes32 arg3) {
    mem[128 len arg2.length] = arg2[all]
    require recipientAddress
    if recipientAddress != msg.sender:
        require creatorAddress == msg.sender
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 31
        idx = (7 * proposals.length) + 7
        while sha3(31) + (7 * proposals.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                    stor[sha3(idx + sha3(mem[0]) + 1)] = 0
                    s = sha3(idx + sha3(mem[0]) + 1) + 1
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            stor[idx + sha3(mem[0]) + 3] = 0
            stor[idx + sha3(mem[0]) + 4] = 0
            stor[idx + sha3(mem[0]) + 5] = 0
            stor[idx + sha3(mem[0]) + 6] = 0
            idx = idx + 7
            continue 
    require proposals.length < proposals.length
    proposals[proposals.length].field_0 = arg1
    proposals[proposals.length].field_256 = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        stor[s + sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    proposals[proposals.length].field_512 = arg3
    proposals[proposals.length].field_768 = block.timestamp
    mem[ceil32(arg2.length) + 256] = stor[sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_0
    idx = ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg2.length) + stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * proposals.length) + ('name', 'proposals', 31) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit ProposalAdded(proposals[proposals.length].field_0, Array(len=stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length, data=mem[ceil32(arg2.length) + 256 len stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + (floor32(stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length - 1) + -stor[(7 * proposals.length) + ('name', 'proposals', 31) + 1].length + 32 % 32)]), arg3, proposals.length);
    return proposals.length
}

function buySharesFor(address arg1) payable {
    require not recipientAddress
    require uint8(stor15.length)
    require block.timestamp <= stor19.length
    require block.timestamp >= stor18.length
    require block.timestamp <= stor19.length
    require block.timestamp >= stor18.length
    require stor17.length + msg.value <= stor16.length
    if block.timestamp <= stor19.length:
        if block.timestamp < stor18.length:
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / 100) > 100 * msg.value * stor20.length / 100
            if not holderID[address(arg1)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = arg1
                holderID[address(arg1)] = holder.length
                emit holderAdded(holder.length, arg1);
            balanceOf[address(arg1)] += 100 * msg.value * stor20.length / 100
            totalSupply += 100 * msg.value * stor20.length / 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / 100), msg.sender, arg1);
        else:
            require ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            if not holderID[address(arg1)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = arg1
                holderID[address(arg1)] = holder.length
                emit holderAdded(holder.length, arg1);
            balanceOf[address(arg1)] += 100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            totalSupply += 100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
    else:
        if block.timestamp < stor18.length:
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / 100) > 100 * msg.value * stor20.length / 100
            if not holderID[address(arg1)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = arg1
                holderID[address(arg1)] = holder.length
                emit holderAdded(holder.length, arg1);
            balanceOf[address(arg1)] += 100 * msg.value * stor20.length / 100
            totalSupply += 100 * msg.value * stor20.length / 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / 100), msg.sender, arg1);
        else:
            require ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            if not holderID[address(arg1)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = arg1
                holderID[address(arg1)] = holder.length
                emit holderAdded(holder.length, arg1);
            balanceOf[address(arg1)] += 100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            totalSupply += 100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
    if stor17.length == stor16.length:
        if not recipientAddress:
            fundedAmount[stor22.length] = stor17.length
        stor19.length = block.timestamp
}

function buyShares() payable {
    require not recipientAddress
    require uint8(stor15.length)
    require block.timestamp <= stor19.length
    require block.timestamp >= stor18.length
    require block.timestamp <= stor19.length
    require block.timestamp >= stor18.length
    require stor17.length + msg.value <= stor16.length
    if block.timestamp <= stor19.length:
        if block.timestamp < stor18.length:
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / 100) > 100 * msg.value * stor20.length / 100
            if not holderID[address(msg.sender)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = msg.sender
                holderID[address(msg.sender)] = holder.length
                emit holderAdded(holder.length, msg.sender);
            balanceOf[address(msg.sender)] += 100 * msg.value * stor20.length / 100
            totalSupply += 100 * msg.value * stor20.length / 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / 100), msg.sender, msg.sender);
        else:
            require ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            if not holderID[address(msg.sender)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = msg.sender
                holderID[address(msg.sender)] = holder.length
                emit holderAdded(holder.length, msg.sender);
            balanceOf[address(msg.sender)] += 100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            totalSupply += 100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, msg.sender);
    else:
        if block.timestamp < stor18.length:
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / 100) > 100 * msg.value * stor20.length / 100
            if not holderID[address(msg.sender)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = msg.sender
                holderID[address(msg.sender)] = holder.length
                emit holderAdded(holder.length, msg.sender);
            balanceOf[address(msg.sender)] += 100 * msg.value * stor20.length / 100
            totalSupply += 100 * msg.value * stor20.length / 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / 100), msg.sender, msg.sender);
        else:
            require ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            require msg.value
            require msg.value * stor20.length / msg.value == stor20.length
            require 100 * msg.value * stor20.length / 100 == msg.value * stor20.length
            require totalSupply + (100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
            require totalSupply + (100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            if not holderID[address(msg.sender)]:
                holder.length++
                require holder.length < holder.length
                holder[holder.length] = msg.sender
                holderID[address(msg.sender)] = holder.length
                emit holderAdded(holder.length, msg.sender);
            balanceOf[address(msg.sender)] += 100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            totalSupply += 100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
            stor17.length += msg.value
            emit TokensCreated((100 * msg.value * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, msg.sender);
    if stor17.length == stor16.length:
        if not recipientAddress:
            fundedAmount[stor22.length] = stor17.length
        stor19.length = block.timestamp
}

function rewardToken(address arg1, uint256 arg2, uint256 arg3) {
    require address(stor15.length.field_8) == msg.sender
    require block.timestamp <= stor19.length
    require block.timestamp >= stor18.length
    if arg3:
        require arg3 <= stor19.length
        require arg3 >= stor18.length
        require stor17.length + arg2 <= stor16.length
        if arg3 <= stor19.length:
            if arg3 < stor18.length:
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / 100) > 100 * arg2 * stor20.length / 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / 100
                totalSupply += 100 * arg2 * stor20.length / 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / 100), msg.sender, arg1);
            else:
                require ((100 * arg3 * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / ((100 * arg3 * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / ((100 * arg3 * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * arg2 * stor20.length / ((100 * arg3 * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / ((100 * arg3 * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                totalSupply += 100 * arg2 * stor20.length / ((100 * arg3 * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / ((100 * arg3 * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
        else:
            if arg3 < stor18.length:
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / 100) > 100 * arg2 * stor20.length / 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / 100
                totalSupply += 100 * arg2 * stor20.length / 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / 100), msg.sender, arg1);
            else:
                require ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                totalSupply += 100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
    else:
        require block.timestamp <= stor19.length
        require block.timestamp >= stor18.length
        require stor17.length + arg2 <= stor16.length
        if block.timestamp <= stor19.length:
            if block.timestamp < stor18.length:
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / 100) > 100 * arg2 * stor20.length / 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / 100
                totalSupply += 100 * arg2 * stor20.length / 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / 100), msg.sender, arg1);
            else:
                require ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * arg2 * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                totalSupply += 100 * arg2 * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / ((100 * block.timestamp * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
        else:
            if block.timestamp < stor18.length:
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / 100) > 100 * arg2 * stor20.length / 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / 100
                totalSupply += 100 * arg2 * stor20.length / 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / 100), msg.sender, arg1);
            else:
                require ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                require arg2
                require arg2 * stor20.length / arg2 == stor20.length
                require 100 * arg2 * stor20.length / 100 == arg2 * stor20.length
                require totalSupply + (100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > totalSupply
                require totalSupply + (100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100) > 100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                if not holderID[address(arg1)]:
                    holder.length++
                    require holder.length < holder.length
                    holder[holder.length] = arg1
                    holderID[address(arg1)] = holder.length
                    emit holderAdded(holder.length, arg1);
                balanceOf[address(arg1)] += 100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                totalSupply += 100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100
                stor17.length += arg2
                emit TokensCreated((100 * arg2 * stor20.length / ((100 * stor19.length * stor21.length) - (100 * stor18.length * stor21.length) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
    if stor17.length == stor16.length:
        if not recipientAddress:
            fundedAmount[stor22.length] = stor17.length
        stor19.length = block.timestamp
}



}
