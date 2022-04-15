contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
array of address stor2;
uint8 stor3;
uint8 stor6;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 stor14;
uint8 stor16;
uint256 stor17;
uint256 stor18;
address stor19;

function _fallback() payable {
    stor3 = 0
    stor6 = 0
    stor10 = 2
    stor11 = 418786 * 3600
    stor12 = 1508889540
    stor13 = 0xaa53075b1092dcd19cc09121a8a84e708ac4534d
    stor14 = 3533568904593639
    stor16 = 0
    stor17 = 706713780918728 * 10^9
    stor18 = 706713780918728 * 10^9
    require not msg.value
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = msg.sender
    stor1[address(msg.sender)] = 1
    require stor17 > 0
    create contract with 0 wei
                    code: code.data[8183 len 2193], stor13
    require create.new_address
    stor19 = address(create.new_address)
    return code.data[465 len 7718]
}



// =====================  Runtime code  =====================


const name = 'CrowdWiz Token'

const decimals = 18

const symbol = 'WIZ'


uint256 totalSupply;
mapping of uint8 stor1;
array of struct stor2;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6;
mapping of struct transactions;
mapping of uint8 stor8;
uint256 transactionCount;
uint256 required;
uint256 startTimePreICO;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 isFinalized;
uint256 sub_a8ece5c5;
uint256 sub_ea58308f;
address vaultAddress;

function mintingFinished() {
    return bool(stor6)
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function isOwner(address arg1) {
    return bool(stor1[arg1])
}

function endTime() {
    return endTime
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor8[arg1][arg2])
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(isFinalized)
}

function transactions(uint256 arg1) {
    return transactions[arg1].field_0, transactions[arg1].field_256, bool(transactions[arg1].field_512)
}

function sub_a8ece5c5(?) {
    return sub_a8ece5c5
}

function startTimePreICO() {
    return startTimePreICO
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_ea58308f(?) {
    return sub_ea58308f
}

function vault() {
    return vaultAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function goalReached() {
    return weiRaised >= sub_a8ece5c5
}

function changeEndDate(uint256 arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    endTime = arg1
}

function unpause() {
    require bool(stor1[address(msg.sender)]) == 1
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require bool(stor1[address(msg.sender)]) == 1
    require not stor3
    stor3 = 1
    emit Pause()
}

function finishMinting() {
    require bool(stor1[address(msg.sender)]) == 1
    stor6 = 1
    emit MintFinished()
    return 1
}

function setRate(uint256 arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    rate = arg1
    emit 0x8a939c37: Array(len=11, data='New rate is'), arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimRefund() {
    require isFinalized
    require weiRaised < sub_a8ece5c5
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function withdrawEther(address arg1, uint256 arg2) {
    require bool(stor1[address(msg.sender)]) == 1
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(address(arg1), arg2);
}

function sub_0f69ce1e(?) {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = sha3(arg1, 8)
        if not stor8[arg1][stor2[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require bool(stor1[address(msg.sender)]) == 1
    require not stor6
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function addOwner(address arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    require not stor1[address(arg1)]
    require arg1
    stor1[address(arg1)] = 1
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[stor2.length].field_0 = arg1
}

function finalize() {
    require bool(stor1[address(msg.sender)]) == 1
    require not isFinalized
    require block.timestamp > endTime
    require ext_code.size(vaultAddress)
    if weiRaised < sub_a8ece5c5:
        call vaultAddress.0x8c52dc41 with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    isFinalized = 1
}

function sub_0d12cfd1(?) {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = sha3(arg1, 8)
        if not stor8[arg1][stor2[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getOwners() {
    if not stor2.length:
        mem[(32 * stor2.length) + 160] = 32
        mem[(32 * stor2.length) + 192] = stor2.length
        mem[(32 * stor2.length) + 224 len floor32(stor2.length)] = mem[160 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 160
           len (96 * stor2.length) + 64
    mem[160] = address(stor2.field_0)
    idx = 160
    s = 0
    while (32 * stor2.length) + 128 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 224 len floor32(stor2.length)] = mem[160 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[160 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 224 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function sub_019b0c2b(?) {
    require not transactions[arg1].field_512
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = sha3(arg1, 8)
        if not stor8[arg1][stor2[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        transactions[arg1].field_512 = 1
        require bool(stor1[address(msg.sender)]) == 1
        require not stor6
        require transactions[arg1].field_256 + totalSupply >= totalSupply
        totalSupply += transactions[arg1].field_256
        require transactions[arg1].field_256 + balanceOf[stor7[arg1].field_0] >= balanceOf[stor7[arg1].field_0]
        balanceOf[stor7[arg1].field_0] += transactions[arg1].field_256
        emit Mint(transactions[arg1].field_256, transactions[arg1].field_0);
        emit Transfer(transactions[arg1].field_256, 0, transactions[arg1].field_0);
        emit Execution(arg1);
}

function confirmTokenTransaction(uint256 arg1) {
    require stor1[address(msg.sender)]
    require transactions[arg1].field_0
    require not stor8[arg1][address(msg.sender)]
    stor8[arg1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, arg1);
    require not transactions[arg1].field_512
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = sha3(arg1, 8)
        if not stor8[arg1][stor2[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        transactions[arg1].field_512 = 1
        require bool(stor1[address(msg.sender)]) == 1
        require not stor6
        require transactions[arg1].field_256 + totalSupply >= totalSupply
        totalSupply += transactions[arg1].field_256
        require transactions[arg1].field_256 + balanceOf[stor7[arg1].field_0] >= balanceOf[stor7[arg1].field_0]
        balanceOf[stor7[arg1].field_0] += transactions[arg1].field_256
        emit Mint(transactions[arg1].field_256, transactions[arg1].field_0);
        emit Transfer(transactions[arg1].field_256, 0, transactions[arg1].field_0);
        emit Execution(arg1);
}

function sub_1ac2f6e1(?) {
    require arg1
    transactions[stor9].field_0 = arg1
    transactions[stor9].field_256 = arg2
    transactions[stor9].field_512 = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor1[address(msg.sender)]
    require transactions[stor9].field_0
    require not stor8[stor9][address(msg.sender)]
    stor8[stor9][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount);
    require not transactions[stor9].field_512
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = sha3(transactionCount, 8)
        if not stor8[stor9][stor2[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        transactions[stor9].field_512 = 1
        require bool(stor1[address(msg.sender)]) == 1
        require not stor6
        require transactions[stor9].field_256 + totalSupply >= totalSupply
        totalSupply += transactions[stor9].field_256
        require transactions[stor9].field_256 + balanceOf[stor7[stor9].field_0] >= balanceOf[stor7[stor9].field_0]
        balanceOf[stor7[stor9].field_0] += transactions[stor9].field_256
        emit Mint(transactions[stor9].field_256, transactions[stor9].field_0);
        emit Transfer(transactions[stor9].field_256, 0, transactions[stor9].field_0);
        emit Execution(transactionCount);
        return transactionCount
    return transactionCount
}

function buyTokens(address arg1) payable {
    require not stor3
    require arg1
    require block.timestamp >= startTimePreICO
    require block.timestamp <= endTime
    require msg.value
    require rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require bool(stor1[address(msg.sender)]) == 1
    require not stor6
    if block.timestamp <= startTimePreICO:
        require (10^18 * msg.value / rate) + totalSupply >= totalSupply
        totalSupply += 10^18 * msg.value / rate
        require (10^18 * msg.value / rate) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 10^18 * msg.value / rate
        emit Mint((10^18 * msg.value / rate), arg1);
        emit Transfer((10^18 * msg.value / rate), 0, arg1);
        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
    else:
        if block.timestamp <= startTimePreICO + (24 * 3600):
            require (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + totalSupply >= totalSupply
            totalSupply = (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + totalSupply
            require (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + balanceOf[address(arg1)]
            emit Mint(((10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100)), arg1);
            emit Transfer(((10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100)), 0, arg1);
            emit TokenPurchase(msg.value, (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100), msg.sender, arg1);
        else:
            if block.timestamp <= startTimePreICO + (48 * 24 * 3600):
                require (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + totalSupply >= totalSupply
                totalSupply = (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + totalSupply
                require (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + balanceOf[address(arg1)]
                emit Mint(((10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100)), arg1);
                emit Transfer(((10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100)), 0, arg1);
                emit TokenPurchase(msg.value, (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100), msg.sender, arg1);
            else:
                if block.timestamp > startTimePreICO + (72 * 24 * 3600):
                    require (10^18 * msg.value / rate) + totalSupply >= totalSupply
                    totalSupply += 10^18 * msg.value / rate
                    require (10^18 * msg.value / rate) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 10^18 * msg.value / rate
                    emit Mint((10^18 * msg.value / rate), arg1);
                    emit Transfer((10^18 * msg.value / rate), 0, arg1);
                    emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                else:
                    require (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + totalSupply >= totalSupply
                    totalSupply = (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + totalSupply
                    require (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + balanceOf[address(arg1)]
                    emit Mint(((10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100)), arg1);
                    emit Transfer(((10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100)), 0, arg1);
                    emit TokenPurchase(msg.value, (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100), msg.sender, arg1);
}

function _fallback() payable {
    require not stor3
    require msg.sender
    require block.timestamp >= startTimePreICO
    require block.timestamp <= endTime
    require msg.value
    require rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require bool(stor1[address(msg.sender)]) == 1
    require not stor6
    if block.timestamp <= startTimePreICO:
        require (10^18 * msg.value / rate) + totalSupply >= totalSupply
        totalSupply += 10^18 * msg.value / rate
        require (10^18 * msg.value / rate) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value / rate
        emit Mint((10^18 * msg.value / rate), msg.sender);
        emit Transfer((10^18 * msg.value / rate), 0, msg.sender);
        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
    else:
        if block.timestamp <= startTimePreICO + (24 * 3600):
            require (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + totalSupply >= totalSupply
            totalSupply = (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + totalSupply
            require (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100) + balanceOf[address(msg.sender)]
            emit Mint(((10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100)), msg.sender);
            emit Transfer(((10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100)), 0, msg.sender);
            emit TokenPurchase(msg.value, (10^18 * msg.value / rate) + (15 * 10^18 * msg.value / rate / 100), msg.sender, msg.sender);
        else:
            if block.timestamp <= startTimePreICO + (48 * 24 * 3600):
                require (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + totalSupply >= totalSupply
                totalSupply = (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + totalSupply
                require (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100) + balanceOf[address(msg.sender)]
                emit Mint(((10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100)), msg.sender);
                emit Transfer(((10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100)), 0, msg.sender);
                emit TokenPurchase(msg.value, (10^18 * msg.value / rate) + (10 * 10^18 * msg.value / rate / 100), msg.sender, msg.sender);
            else:
                if block.timestamp > startTimePreICO + (72 * 24 * 3600):
                    require (10^18 * msg.value / rate) + totalSupply >= totalSupply
                    totalSupply += 10^18 * msg.value / rate
                    require (10^18 * msg.value / rate) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / rate
                    emit Mint((10^18 * msg.value / rate), msg.sender);
                    emit Transfer((10^18 * msg.value / rate), 0, msg.sender);
                    emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                else:
                    require (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + totalSupply >= totalSupply
                    totalSupply = (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + totalSupply
                    require (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100) + balanceOf[address(msg.sender)]
                    emit Mint(((10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100)), msg.sender);
                    emit Transfer(((10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100)), 0, msg.sender);
                    emit TokenPurchase(msg.value, (10^18 * msg.value / rate) + (5 * 10^18 * msg.value / rate / 100), msg.sender, msg.sender);
}



}
