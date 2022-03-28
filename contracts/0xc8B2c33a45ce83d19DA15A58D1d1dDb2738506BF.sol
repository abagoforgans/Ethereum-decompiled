contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint8 stor6;
address stor6; offset 16
uint256 stor6; offset 16
uint256 stor6; offset 8
array of uint256 stor7;
uint256 storDF7D;
uint256 storDF7D;

function _fallback() {
    mem[96 len -9315] = code.data[10087 len -9315]
    mem[64] = -9219
    stor0 = mem[108 len 20]
    stor1 = msg.sender
    address(stor6.field_16) = mem[140 len 20]
    mem[0] = 2
    stor2.length = (2 * mem[mem[160] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
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
    stor4 = mem[255 len 1]
    uint8(stor6.field_0) = uint8(bool(mem[256]))
    Mask(248, 0, stor6.field_8) = Mask(248, 0, bool(mem[288]))
    Mask(240, 0, stor6.field_16) = Mask(240, 16, bool(mem[256])) >> 16
    storDF7D = mem[320]
    storDF7D = mem[352]
    stor7.length = 1
    if not stor7.length <= 1:
        if stor7.length > 1:
            uint256(stor7.field_256) = 0
            idx = 2
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    return code.data[772 len 9315]
}



// =====================  Runtime code  =====================


#
#  - sellTokens(uint256 arg1, uint256 arg2, uint256 arg3)
#
address passDaoAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 176
address clonedFromAddress; offset 16
array of address holder;
mapping of uint256 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct fundedAmount;
uint256 lastProposalID;
uint256 lastFueledFundingID;
mapping of struct given;
mapping of uint256 blockedDeadLine;
array of struct orders;
uint256 stor17;
uint256 storDF7D;
uint256 storDF7D;
uint256 storDF7D;
uint256 storDF7D;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function Transferable() {
    return bool(uint8(stor6.field_8))
}

function decimals() {
    return decimals
}

function LastProposalID() {
    return lastProposalID
}

function Given(uint256 arg1, address arg2) {
    return given[arg1][arg2].field_0, given[arg1][arg2].field_256
}

function passDao() {
    return passDaoAddress
}

function FundedAmount(uint256 arg1) {
    return fundedAmount[arg1].field_512
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function blockedDeadLine(address arg1) {
    return blockedDeadLine[arg1]
}

function lastFueledFundingID() {
    return lastFueledFundingID
}

function symbol() {
    return symbol[0 len symbol.length]
}

function orders(uint256 arg1) {
    require arg1 < orders.length
    return address(orders[arg1].field_0), orders[arg1].field_256
}

function HolderAddress(uint256 arg1) {
    require arg1 < holder.length
    return address(holder[arg1])
}

function fundings(uint256 arg1) {
    return address(fundedAmount[arg1].field_0), 
           fundedAmount[arg1].field_256,
           fundedAmount[arg1].field_512,
           fundedAmount[arg1].field_768,
           fundedAmount[arg1].field_1024,
           fundedAmount[arg1].field_1280,
           fundedAmount[arg1].field_1536,
           fundedAmount[arg1].field_1792
}

function clonedFrom() {
    return clonedFromAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function numberOfHolders() {
    return (holder.length - 1)
}

function _fallback() payable {
    require not uint8(stor6.field_0)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function Client() {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function setFundingStartTime(uint256 arg1, uint256 arg2) {
    require address(fundedAmount[arg1].field_0) == msg.sender
    require block.timestamp <= fundedAmount[arg1].field_1024
    fundedAmount[arg1].field_768 = arg2
}

function AmountToFund(uint256 arg1) {
    if block.timestamp <= fundedAmount[arg1].field_1024:
        if block.timestamp >= fundedAmount[arg1].field_768:
            return fundedAmount[arg1].field_256
        else:
            return 0
    else:
        return 0
}

function ableTransfer() {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    if not uint8(stor6.field_8):
        uint8(stor6.field_8) = 1
        emit TransferAble()
}

function disableTransfer() {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    if uint8(stor6.field_8):
        uint8(stor6.field_8) = 0
        emit TransferDisable()
}

function setFundingFueled(uint256 arg1) {
    require address(fundedAmount[arg1].field_0) == msg.sender
    require block.timestamp <= fundedAmount[arg1].field_1024
    fundedAmount[arg1].field_512 = fundedAmount[arg1].field_1792
    lastFueledFundingID = arg1
    fundedAmount[arg1].field_1024 = block.timestamp
    emit FundingFueled(fundedAmount[arg1].field_512, arg1);
}

function blockTransfer(address arg1, uint256 arg2) {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require not uint8(stor6.field_0)
    if arg2 > blockedDeadLine[address(arg1)]:
        blockedDeadLine[address(arg1)] = arg2
}

function sendTo(address arg1, uint256 arg2) {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function buyTokens() payable {
    require uint8(stor6.field_8)
    require msg.value >= 10^17
    stor17++
    if stor17 + 1 <= orders.length:
        require stor17 - 1 < orders.length
        address(orders[stor17 - 1].field_0) = msg.sender
        orders[stor17 - 1].field_256 = msg.value
    else:
        orders.length++
        if not orders.length <= orders.length + 1:
            idx = 2 * orders.length + 1
            while 2 * orders.length > idx:
                address(orders[idx].field_0) = 0
                orders[idx].field_256 = 0
                idx = idx + 2
                continue 
        require orders.length < orders.length
        address(orders[orders.length].field_0) = msg.sender
        orders[orders.length].field_256 = msg.value
    return 1
}

function initialTokenSupply(address arg1, uint256 arg2, bool arg3) {
    require not uint8(stor6.field_176)
    if not stor8[address(arg1)]:
        holder.length++
        if not holder.length <= holder.length + 1:
            idx = holder.length + 1
            while holder.length > idx:
                uint256(holder[idx]) = 0
                idx = idx + 1
                continue 
        require holder.length < holder.length
        address(holder[holder.length]) = arg1
        stor8[address(arg1)] = holder.length
    if not arg1:
        if arg3:
            uint8(stor6.field_176) = 1
    else:
        if arg2:
            balanceOf[address(arg1)] += arg2
            totalSupply += arg2
            emit TokensCreated(arg2, msg.sender, arg1);
        if arg3:
            uint8(stor6.field_176) = 1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor6.field_8)
    require block.timestamp > blockedDeadLine[address(msg.sender)]
    require block.timestamp > blockedDeadLine[address(arg1)]
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if not stor8[address(arg1)]:
        holder.length++
        if not holder.length <= holder.length + 1:
            idx = holder.length + 1
            while holder.length > idx:
                uint256(holder[idx]) = 0
                idx = idx + 1
                continue 
        require holder.length < holder.length
        address(holder[holder.length]) = arg1
        stor8[address(arg1)] = holder.length
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require uint8(stor6.field_8)
    require block.timestamp > blockedDeadLine[address(arg1)]
    require block.timestamp > blockedDeadLine[address(arg2)]
    require arg2 != this.address
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    if not stor8[address(arg2)]:
        holder.length++
        if not holder.length <= holder.length + 1:
            idx = holder.length + 1
            while holder.length > idx:
                uint256(holder[idx]) = 0
                idx = idx + 1
                continue 
        require holder.length < holder.length
        address(holder[holder.length]) = arg2
        stor8[address(arg2)] = holder.length
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function withdrawPendingAmounts() {
    idx = 1
    s = 0
    while idx <= lastProposalID:
        mem[0] = idx
        mem[32] = 11
        if block.timestamp <= fundedAmount[idx].field_1024:
            idx = idx + 1
            s = s
            continue 
        mem[0] = msg.sender
        mem[32] = sha3(idx, 14)
        if not given[idx][address(msg.sender)].field_0:
            idx = idx + 1
            s = s
            continue 
        fundedAmount[idx].field_1792 -= given[idx][address(msg.sender)].field_0
        given[idx][address(msg.sender)].field_256 = 0
        mem[0] = msg.sender
        mem[32] = sha3(idx, 14)
        given[idx][address(msg.sender)].field_0 = 0
        if fundedAmount[idx].field_512:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = given[idx][address(msg.sender)].field_0 + s
        continue 
    if s <= 0:
        return 1
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(s, msg.sender);
    return 0
}

function TokenPriceInWei(uint256 arg1, uint256 arg2) {
    require 100 * fundedAmount[arg2].field_1280
    require arg1
    if block.timestamp <= fundedAmount[arg2].field_1024:
        if block.timestamp >= fundedAmount[arg2].field_768:
            if (100 * arg1) + ((100 * block.timestamp * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / arg1 == ((100 * block.timestamp * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600) + 100:
                if 100 * fundedAmount[arg2].field_1280 / 100 == fundedAmount[arg2].field_1280:
                    return ((100 * arg1) + ((100 * block.timestamp * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / 100 * fundedAmount[arg2].field_1280)
        else:
            if (100 * arg1) + ((100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / arg1 == ((100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600) + 100:
                if 100 * fundedAmount[arg2].field_1280 / 100 == fundedAmount[arg2].field_1280:
                    return ((100 * arg1) + ((100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / 100 * fundedAmount[arg2].field_1280)
    else:
        if block.timestamp >= fundedAmount[arg2].field_768:
            if (100 * arg1) + ((100 * fundedAmount[arg2].field_1024 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / arg1 == ((100 * fundedAmount[arg2].field_1024 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600) + 100:
                if 100 * fundedAmount[arg2].field_1280 / 100 == fundedAmount[arg2].field_1280:
                    return ((100 * arg1) + ((100 * fundedAmount[arg2].field_1024 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / 100 * fundedAmount[arg2].field_1280)
        else:
            if (100 * arg1) + ((100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / arg1 == ((100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600) + 100:
                if 100 * fundedAmount[arg2].field_1280 / 100 == fundedAmount[arg2].field_1280:
                    return ((100 * arg1) + ((100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) - (100 * fundedAmount[arg2].field_768 * fundedAmount[arg2].field_1536) / 876000 * 24 * 3600 * arg1) / 100 * fundedAmount[arg2].field_1280)
    return 0
}

function removeOrders(uint256 arg1, uint256 arg2) {
    if not arg2:
        idx = arg1
        s = 0
        while idx <= stor17 - 1:
            require arg1 < orders.length
            mem[0] = 16
            if address(orders[arg1].field_0) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            require arg1 < orders.length
            mem[0] = 16
            if stor17 - 1 >= arg1:
                stor17--
                if stor17 - 1 > 0:
                    t = arg1
                    while t <= stor17 - 1:
                        require t + 1 < orders.length
                        require t < orders.length
                        address(orders[t].field_0) = address(orders[t + 1].field_0)
                        require t + 1 < orders.length
                        require t < orders.length
                        mem[0] = 16
                        orders[t].field_256 = orders[t + 1].field_256
                        t = t + 1
                        continue 
                require stor17 < orders.length
                address(orders[stor17].field_0) = 0
                mem[0] = 16
                orders[stor17].field_256 = 0
            idx = idx + 1
            s = s + orders[arg1].field_256
            continue 
    else:
        if arg2 <= stor17:
            idx = arg1
            s = 0
            while idx <= arg2:
                require arg1 < orders.length
                mem[0] = 16
                if address(orders[arg1].field_0) != msg.sender:
                    idx = idx + 1
                    s = s
                    continue 
                require arg1 < orders.length
                mem[0] = 16
                if stor17 - 1 >= arg1:
                    stor17--
                    if stor17 - 1 > 0:
                        t = arg1
                        while t <= stor17 - 1:
                            require t + 1 < orders.length
                            require t < orders.length
                            address(orders[t].field_0) = address(orders[t + 1].field_0)
                            require t + 1 < orders.length
                            require t < orders.length
                            mem[0] = 16
                            orders[t].field_256 = orders[t + 1].field_256
                            t = t + 1
                            continue 
                    require stor17 < orders.length
                    address(orders[stor17].field_0) = 0
                    mem[0] = 16
                    orders[stor17].field_256 = 0
                idx = idx + 1
                s = s + orders[arg1].field_256
                continue 
        else:
            idx = arg1
            s = 0
            while idx <= stor17 - 1:
                require arg1 < orders.length
                mem[0] = 16
                if address(orders[arg1].field_0) != msg.sender:
                    idx = idx + 1
                    s = s
                    continue 
                require arg1 < orders.length
                mem[0] = 16
                if stor17 - 1 >= arg1:
                    stor17--
                    if stor17 - 1 > 0:
                        t = arg1
                        while t <= stor17 - 1:
                            require t + 1 < orders.length
                            require t < orders.length
                            address(orders[t].field_0) = address(orders[t + 1].field_0)
                            require t + 1 < orders.length
                            require t < orders.length
                            mem[0] = 16
                            orders[t].field_256 = orders[t + 1].field_256
                            t = t + 1
                            continue 
                    require stor17 < orders.length
                    address(orders[stor17].field_0) = 0
                    mem[0] = 16
                    orders[stor17].field_256 = 0
                idx = idx + 1
                s = s + orders[arg1].field_256
                continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function setFundingRules(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 != this.address
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require arg1 != ext_call.return_data[12 len 20]
    require arg3
    require arg4
    require not fundedAmount[arg6].field_1792
    address(fundedAmount[arg6].field_0) = arg1
    fundedAmount[arg6].field_256 = arg3
    fundedAmount[arg6].field_512 = 0
    if arg2:
        fundedAmount[arg6].field_1280 = arg2
        storDF7D = arg2
    else:
        if block.timestamp >= storDF7D:
            if block.timestamp <= fundedAmount[stor13].field_1024:
                if block.timestamp >= fundedAmount[stor13].field_768:
                    require ((100 * block.timestamp * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor13].field_1280 / ((100 * block.timestamp * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    require ((100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor13].field_1280 / ((100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
            else:
                if block.timestamp >= fundedAmount[stor13].field_768:
                    require ((100 * fundedAmount[stor13].field_1024 * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor13].field_1280 / ((100 * fundedAmount[stor13].field_1024 * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    require ((100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor13].field_1280 / ((100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) - (100 * fundedAmount[stor13].field_768 * fundedAmount[stor13].field_1536) / 876000 * 24 * 3600) + 100
        else:
            if block.timestamp <= fundedAmount[stor12].field_1024:
                if block.timestamp >= fundedAmount[stor12].field_768:
                    require ((100 * block.timestamp * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor12].field_1280 / ((100 * block.timestamp * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    require ((100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor12].field_1280 / ((100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
            else:
                if block.timestamp >= fundedAmount[stor12].field_768:
                    require ((100 * fundedAmount[stor12].field_1024 * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor12].field_1280 / ((100 * fundedAmount[stor12].field_1024 * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    require ((100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
                    fundedAmount[arg6].field_1280 = 100 * fundedAmount[stor12].field_1280 / ((100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) - (100 * fundedAmount[stor12].field_768 * fundedAmount[stor12].field_1536) / 876000 * 24 * 3600) + 100
        storDF7D = fundedAmount[arg6].field_1280
    if not arg5:
        fundedAmount[arg6].field_1536 = storDF7D
    else:
        fundedAmount[arg6].field_1536 = arg5
        storDF7D = arg5
    fundedAmount[arg6].field_768 = block.timestamp
    storDF7D = block.timestamp
    fundedAmount[arg6].field_1024 = block.timestamp + (60 * arg4)
    storDF7D = block.timestamp + (60 * arg4)
    fundedAmount[arg6].field_1792 = 0
    lastProposalID = arg6
    emit FundingRulesSet(arg3, fundedAmount[arg6].field_1024, arg1, arg6, fundedAmount[arg6].field_768);
}

function rewardTokensForClient(address arg1, uint256 arg2) {
    require ext_code.size(passDaoAddress)
    call passDaoAddress.0xe934ab0c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    if block.timestamp <= fundedAmount[0].field_1024:
        if block.timestamp >= fundedAmount[0].field_768:
            require ((100 * block.timestamp * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            require arg2
            require fundedAmount[0].field_1280 * arg2 / arg2 == fundedAmount[0].field_1280
            require 100 * fundedAmount[0].field_1280 * arg2 / 100 == fundedAmount[0].field_1280 * arg2
            require 100 * fundedAmount[0].field_1280 * arg2 / ((100 * block.timestamp * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            if not stor8[address(arg1)]:
                holder.length++
                if not holder.length <= holder.length + 1:
                    idx = holder.length + 1
                    while holder.length > idx:
                        uint256(holder[idx]) = 0
                        idx = idx + 1
                        continue 
                require holder.length < holder.length
                address(holder[holder.length]) = arg1
                stor8[address(arg1)] = holder.length
            balanceOf[address(arg1)] += 100 * fundedAmount[0].field_1280 * arg2 / ((100 * block.timestamp * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            totalSupply += 100 * fundedAmount[0].field_1280 * arg2 / ((100 * block.timestamp * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            emit TokensCreated((100 * fundedAmount[0].field_1280 * arg2 / ((100 * block.timestamp * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
            return (100 * fundedAmount[0].field_1280 * arg2 / ((100 * block.timestamp * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100)
    else:
        if block.timestamp >= fundedAmount[0].field_768:
            require ((100 * fundedAmount[0].field_1024 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            require arg2
            require fundedAmount[0].field_1280 * arg2 / arg2 == fundedAmount[0].field_1280
            require 100 * fundedAmount[0].field_1280 * arg2 / 100 == fundedAmount[0].field_1280 * arg2
            require 100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_1024 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            if not stor8[address(arg1)]:
                holder.length++
                if not holder.length <= holder.length + 1:
                    idx = holder.length + 1
                    while holder.length > idx:
                        uint256(holder[idx]) = 0
                        idx = idx + 1
                        continue 
                require holder.length < holder.length
                address(holder[holder.length]) = arg1
                stor8[address(arg1)] = holder.length
            balanceOf[address(arg1)] += 100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_1024 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            totalSupply += 100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_1024 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
            emit TokensCreated((100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_1024 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
            return (100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_1024 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100)
    ('lt', 'timestamp', ('field', 768, ('stor', ('map', 0, ('name', 'fundedAmount', 11)))))
    require ((100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
    require arg2
    require fundedAmount[0].field_1280 * arg2 / arg2 == fundedAmount[0].field_1280
    require 100 * fundedAmount[0].field_1280 * arg2 / 100 == fundedAmount[0].field_1280 * arg2
    require 100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
    if not stor8[address(arg1)]:
        holder.length++
        if not holder.length <= holder.length + 1:
            idx = holder.length + 1
            while holder.length > idx:
                uint256(holder[idx]) = 0
                idx = idx + 1
                continue 
        require holder.length < holder.length
        address(holder[holder.length]) = arg1
        stor8[address(arg1)] = holder.length
    balanceOf[address(arg1)] += 100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
    totalSupply += 100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100
    emit TokensCreated((100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg1);
    return (100 * fundedAmount[0].field_1280 * arg2 / ((100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) - (100 * fundedAmount[0].field_768 * fundedAmount[0].field_1536) / 876000 * 24 * 3600) + 100)
}

function sendPendingAmounts(uint256 arg1, uint256 arg2, address arg3) {
    if arg1:
        if arg2:
            if arg3:
                idx = arg1
                s = 0
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(arg3)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(arg3)].field_0
                    given[idx][address(arg3)].field_256 = 0
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    given[idx][address(arg3)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(arg3)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call arg3 with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, arg3);
            else:
                idx = arg1
                s = 0
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(msg.sender)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(msg.sender)].field_0
                    given[idx][address(msg.sender)].field_256 = 0
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    given[idx][address(msg.sender)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(msg.sender)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, msg.sender);
        else:
            if arg3:
                idx = arg1
                s = 0
                while idx <= lastProposalID:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(arg3)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(arg3)].field_0
                    given[idx][address(arg3)].field_256 = 0
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    given[idx][address(arg3)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(arg3)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call arg3 with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, arg3);
            else:
                idx = arg1
                s = 0
                while idx <= lastProposalID:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(msg.sender)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(msg.sender)].field_0
                    given[idx][address(msg.sender)].field_256 = 0
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    given[idx][address(msg.sender)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(msg.sender)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, msg.sender);
    else:
        if arg2:
            if arg3:
                idx = 1
                s = 0
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(arg3)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(arg3)].field_0
                    given[idx][address(arg3)].field_256 = 0
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    given[idx][address(arg3)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(arg3)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call arg3 with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, arg3);
            else:
                idx = 1
                s = 0
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(msg.sender)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(msg.sender)].field_0
                    given[idx][address(msg.sender)].field_256 = 0
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    given[idx][address(msg.sender)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(msg.sender)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, msg.sender);
        else:
            if arg3:
                idx = 1
                s = 0
                while idx <= lastProposalID:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(arg3)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(arg3)].field_0
                    given[idx][address(arg3)].field_256 = 0
                    mem[0] = arg3
                    mem[32] = sha3(idx, 14)
                    given[idx][address(arg3)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(arg3)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call arg3 with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, arg3);
            else:
                idx = 1
                s = 0
                while idx <= lastProposalID:
                    mem[0] = idx
                    mem[32] = 11
                    if block.timestamp <= fundedAmount[idx].field_1024:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    if not given[idx][address(msg.sender)].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    fundedAmount[idx].field_1792 -= given[idx][address(msg.sender)].field_0
                    given[idx][address(msg.sender)].field_256 = 0
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 14)
                    given[idx][address(msg.sender)].field_0 = 0
                    if fundedAmount[idx].field_512:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = given[idx][address(msg.sender)].field_0 + s
                    continue 
                if s <= 0:
                    return 1
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(s, msg.sender);
    return 0
}

function buyTokensForProposal(uint256 arg1, address arg2) payable {
    require not address(fundedAmount[arg1].field_0)
    require arg1
    require block.timestamp <= fundedAmount[arg1].field_1024
    require block.timestamp >= fundedAmount[arg1].field_768
    require msg.value + fundedAmount[arg1].field_1792 <= fundedAmount[arg1].field_256
    if arg2:
        if block.timestamp <= fundedAmount[arg1].field_1024:
            if block.timestamp >= fundedAmount[arg1].field_768:
                require ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
        else:
            if block.timestamp >= fundedAmount[arg1].field_768:
                require ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
        fundedAmount[arg1].field_1792 += msg.value
        if fundedAmount[arg1].field_256 == msg.value + fundedAmount[arg1].field_1792:
            fundedAmount[arg1].field_512 = fundedAmount[arg1].field_1792
            lastFueledFundingID = arg1
            fundedAmount[arg1].field_1024 = block.timestamp
            emit FundingFueled(fundedAmount[arg1].field_512, arg1);
        given[arg1][address(arg2)].field_0 += msg.value
    else:
        if block.timestamp <= fundedAmount[arg1].field_1024:
            if block.timestamp >= fundedAmount[arg1].field_768:
                require ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(msg.sender)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = msg.sender
                    stor8[address(msg.sender)] = holder.length
                given[arg1][address(msg.sender)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(msg.sender)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = msg.sender
                    stor8[address(msg.sender)] = holder.length
                given[arg1][address(msg.sender)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
        else:
            if block.timestamp >= fundedAmount[arg1].field_768:
                require ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(msg.sender)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = msg.sender
                    stor8[address(msg.sender)] = holder.length
                given[arg1][address(msg.sender)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(msg.sender)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = msg.sender
                    stor8[address(msg.sender)] = holder.length
                given[arg1][address(msg.sender)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
        fundedAmount[arg1].field_1792 += msg.value
        if fundedAmount[arg1].field_256 == msg.value + fundedAmount[arg1].field_1792:
            fundedAmount[arg1].field_512 = fundedAmount[arg1].field_1792
            lastFueledFundingID = arg1
            fundedAmount[arg1].field_1024 = block.timestamp
            emit FundingFueled(fundedAmount[arg1].field_512, arg1);
        given[arg1][address(msg.sender)].field_0 += msg.value
    return 1
}

function cloneTokens(uint256 arg1, uint256 arg2) {
    uint8(stor6.field_176) = 1
    require ext_code.size(clonedFromAddress)
    call clonedFromAddress.numberOfHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if arg1:
        if not arg2:
            idx = arg1
            s = 0
            s = 0
            while idx <= ext_call.return_data[0]:
                require ext_code.size(clonedFromAddress)
                call clonedFromAddress.0xb1a1318a with:
                     gas gas_remaining - 50 wei
                    args idx
                require ext_call.success
                mem[128] = 0
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(clonedFromAddress)
                call clonedFromAddress.0x70a08231 with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 9
                if not balanceOf[address(ext_call.return_data[0])]:
                    if ext_call.return_data[0]:
                        if not stor8[address(ext_call.return_data[0])]:
                            holder.length++
                            if not holder.length <= holder.length + 1:
                                s = holder.length + sha3(7) + 1
                                while sha3(7) + holder.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            require holder.length < holder.length
                            address(holder[holder.length]) = address(ext_call.return_data[0])
                            stor8[address(ext_call.return_data[0])] = holder.length
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = 9
                        balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
                        totalSupply += ext_call.return_data[0]
                        mem[96] = ext_call.return_data[0]
                        emit TokensCreated(ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]));
                idx = idx + 1
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                continue 
        else:
            if arg2 <= ext_call.return_data[0]:
                idx = arg1
                s = 0
                s = 0
                while idx <= arg2:
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0xb1a1318a with:
                         gas gas_remaining - 50 wei
                        args idx
                    require ext_call.success
                    mem[128] = 0
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 9
                    if not balanceOf[address(ext_call.return_data[0])]:
                        if ext_call.return_data[0]:
                            if not stor8[address(ext_call.return_data[0])]:
                                holder.length++
                                if not holder.length <= holder.length + 1:
                                    s = holder.length + sha3(7) + 1
                                    while sha3(7) + holder.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                require holder.length < holder.length
                                address(holder[holder.length]) = address(ext_call.return_data[0])
                                stor8[address(ext_call.return_data[0])] = holder.length
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = 9
                            balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
                            totalSupply += ext_call.return_data[0]
                            mem[96] = ext_call.return_data[0]
                            emit TokensCreated(ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]));
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    continue 
            else:
                idx = arg1
                s = 0
                s = 0
                while idx <= ext_call.return_data[0]:
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0xb1a1318a with:
                         gas gas_remaining - 50 wei
                        args idx
                    require ext_call.success
                    mem[128] = 0
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 9
                    if not balanceOf[address(ext_call.return_data[0])]:
                        if ext_call.return_data[0]:
                            if not stor8[address(ext_call.return_data[0])]:
                                holder.length++
                                if not holder.length <= holder.length + 1:
                                    s = holder.length + sha3(7) + 1
                                    while sha3(7) + holder.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                require holder.length < holder.length
                                address(holder[holder.length]) = address(ext_call.return_data[0])
                                stor8[address(ext_call.return_data[0])] = holder.length
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = 9
                            balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
                            totalSupply += ext_call.return_data[0]
                            mem[96] = ext_call.return_data[0]
                            emit TokensCreated(ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]));
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    continue 
    else:
        if not arg2:
            idx = 1
            s = 0
            s = 0
            while idx <= ext_call.return_data[0]:
                require ext_code.size(clonedFromAddress)
                call clonedFromAddress.0xb1a1318a with:
                     gas gas_remaining - 50 wei
                    args idx
                require ext_call.success
                mem[128] = 0
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(clonedFromAddress)
                call clonedFromAddress.0x70a08231 with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 9
                if not balanceOf[address(ext_call.return_data[0])]:
                    if ext_call.return_data[0]:
                        if not stor8[address(ext_call.return_data[0])]:
                            holder.length++
                            if not holder.length <= holder.length + 1:
                                s = holder.length + sha3(7) + 1
                                while sha3(7) + holder.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            require holder.length < holder.length
                            address(holder[holder.length]) = address(ext_call.return_data[0])
                            stor8[address(ext_call.return_data[0])] = holder.length
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = 9
                        balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
                        totalSupply += ext_call.return_data[0]
                        mem[96] = ext_call.return_data[0]
                        emit TokensCreated(ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]));
                idx = idx + 1
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                continue 
        else:
            if arg2 <= ext_call.return_data[0]:
                idx = 1
                s = 0
                s = 0
                while idx <= arg2:
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0xb1a1318a with:
                         gas gas_remaining - 50 wei
                        args idx
                    require ext_call.success
                    mem[128] = 0
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 9
                    if not balanceOf[address(ext_call.return_data[0])]:
                        if ext_call.return_data[0]:
                            if not stor8[address(ext_call.return_data[0])]:
                                holder.length++
                                if not holder.length <= holder.length + 1:
                                    s = holder.length + sha3(7) + 1
                                    while sha3(7) + holder.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                require holder.length < holder.length
                                address(holder[holder.length]) = address(ext_call.return_data[0])
                                stor8[address(ext_call.return_data[0])] = holder.length
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = 9
                            balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
                            totalSupply += ext_call.return_data[0]
                            mem[96] = ext_call.return_data[0]
                            emit TokensCreated(ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]));
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    continue 
            else:
                idx = 1
                s = 0
                s = 0
                while idx <= ext_call.return_data[0]:
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0xb1a1318a with:
                         gas gas_remaining - 50 wei
                        args idx
                    require ext_call.success
                    mem[128] = 0
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(clonedFromAddress)
                    call clonedFromAddress.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 9
                    if not balanceOf[address(ext_call.return_data[0])]:
                        if ext_call.return_data[0]:
                            if not stor8[address(ext_call.return_data[0])]:
                                holder.length++
                                if not holder.length <= holder.length + 1:
                                    s = holder.length + sha3(7) + 1
                                    while sha3(7) + holder.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                require holder.length < holder.length
                                address(holder[holder.length]) = address(ext_call.return_data[0])
                                stor8[address(ext_call.return_data[0])] = holder.length
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = 9
                            balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
                            totalSupply += ext_call.return_data[0]
                            mem[96] = ext_call.return_data[0]
                            emit TokensCreated(ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]));
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    continue 
    return 0
}

function buyTokenFromModerator(uint256 arg1, address arg2, uint256 arg3, bool arg4) payable {
    require address(fundedAmount[arg1].field_0) == msg.sender
    require arg1
    if arg3:
        require arg3 <= fundedAmount[arg1].field_1024
        require arg3 >= fundedAmount[arg1].field_768
        require msg.value + fundedAmount[arg1].field_1792 <= fundedAmount[arg1].field_256
        if arg3 <= fundedAmount[arg1].field_1024:
            if arg3 >= fundedAmount[arg1].field_768:
                require ((100 * arg3 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * arg3 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * arg3 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * arg3 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * arg3 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * arg3 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
        else:
            if arg3 >= fundedAmount[arg1].field_768:
                require ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
    else:
        require block.timestamp <= fundedAmount[arg1].field_1024
        require block.timestamp >= fundedAmount[arg1].field_768
        require msg.value + fundedAmount[arg1].field_1792 <= fundedAmount[arg1].field_256
        if block.timestamp <= fundedAmount[arg1].field_1024:
            if block.timestamp >= fundedAmount[arg1].field_768:
                require ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * block.timestamp * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
        else:
            if block.timestamp >= fundedAmount[arg1].field_768:
                require ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_1024 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
            else:
                require ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                require msg.value
                require fundedAmount[arg1].field_1280 * msg.value / msg.value == fundedAmount[arg1].field_1280
                require 100 * fundedAmount[arg1].field_1280 * msg.value / 100 == fundedAmount[arg1].field_1280 * msg.value
                require 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                if not stor8[address(arg2)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    require holder.length < holder.length
                    address(holder[holder.length]) = arg2
                    stor8[address(arg2)] = holder.length
                if arg4:
                    given[arg1][address(arg2)].field_256 += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                else:
                    balanceOf[address(arg2)] += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    totalSupply += 100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100
                    emit TokensCreated((100 * fundedAmount[arg1].field_1280 * msg.value / ((100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) - (100 * fundedAmount[arg1].field_768 * fundedAmount[arg1].field_1536) / 876000 * 24 * 3600) + 100), msg.sender, arg2);
    fundedAmount[arg1].field_1792 += msg.value
    if fundedAmount[arg1].field_256 == msg.value + fundedAmount[arg1].field_1792:
        fundedAmount[arg1].field_512 = fundedAmount[arg1].field_1792
        lastFueledFundingID = arg1
        fundedAmount[arg1].field_1024 = block.timestamp
        emit FundingFueled(fundedAmount[arg1].field_512, arg1);
    given[arg1][address(arg2)].field_0 += msg.value
    return 1
}



}
