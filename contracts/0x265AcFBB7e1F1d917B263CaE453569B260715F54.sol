contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
uint256 sub_28b33ca3;
uint256 TOKEN_MAX;
uint256 sub_4a31aa21;
uint256 sub_654d7d15;
address managerAddress;
address newOwner;
mapping of struct votesBy;
uint256 sub_f4b99678;
uint256 sub_b4f2d138;
uint256 sub_f91a99bd;
uint256 sub_82925fc0;
uint256 minDeposit;
uint8 stor17;
uint8 stor17; offset 8
uint8 stor17; offset 16
address walletContractAddress; offset 24
uint256 stor17; offset 16
uint256 stor17; offset 8

function name() {
    return name[0 len name.length]
}

function sub_15bbd6c8(?) {
    return bool(uint8(stor17.field_0))
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_28b33ca3(?) {
    return sub_28b33ca3
}

function decimals() {
    return decimals
}

function minDeposit() {
    return minDeposit
}

function sub_46942076(?) {
    return bool(uint8(stor17.field_8))
}

function manager() {
    return managerAddress
}

function sub_4a31aa21(?) {
    return sub_4a31aa21
}

function sub_654d7d15(?) {
    return sub_654d7d15
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function sub_82925fc0(?) {
    return sub_82925fc0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function votesByAddress(address arg1) {
    return votesBy[arg1].field_0, bool(votesBy[arg1].field_256)
}

function TOKEN_MAX() {
    return TOKEN_MAX
}

function sub_b4f2d138(?) {
    return sub_b4f2d138
}

function walletContract() {
    return walletContractAddress
}

function newOwner() {
    return newOwner
}

function sub_f4b99678(?) {
    return sub_f4b99678
}

function sub_f91a99bd(?) {
    return sub_f91a99bd
}

function isPause() {
    return bool(uint8(stor17.field_16))
}

function sub_bc4b9b4f(?) {
    require msg.sender == managerAddress
    minDeposit = arg1
}

function sub_2a05ddcc(?) {
    require msg.sender == managerAddress
    sub_654d7d15 = arg1
}

function setPriceToken(uint256 arg1) {
    require msg.sender == managerAddress
    sub_28b33ca3 = arg1
}

function setContractWallet(address arg1) {
    require msg.sender == managerAddress
    walletContractAddress = arg1
}

function paused(bool arg1) {
    require msg.sender == managerAddress
    Mask(240, 0, stor17.field_16) = Mask(240, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == managerAddress
    require arg1 != managerAddress
    newOwner = arg1
}

function confirmOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(managerAddress, newOwner);
    managerAddress = newOwner
    newOwner = 0
}

function sub_076f97af(?) {
    require msg.sender == managerAddress
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, managerAddress, arg1);
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == managerAddress
    require arg1
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= sub_654d7d15
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if votesBy[address(msg.sender)].field_0 > 0:
        if not votesBy[address(msg.sender)].field_256:
            require sub_82925fc0 >= arg2
            sub_82925fc0 -= arg2
        else:
            require sub_f91a99bd >= arg2
            sub_f91a99bd -= arg2
    return 1
}

function sub_4e238d5a(?) {
    require msg.sender == managerAddress
    name.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
    symbol.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
}

function refundPayment() {
    require uint8(stor17.field_0)
    require balances[address(msg.sender)] > 0
    require eth.balance(this.address) > 0
    if uint8(stor17.field_16):
        revert with 0, 'Refund payment is paused.'
    if balances[address(msg.sender)]:
        require balances[address(msg.sender)]
        require balances[address(msg.sender)] * eth.balance(this.address) / balances[address(msg.sender)] == eth.balance(this.address)
    require totalSupply
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] * eth.balance(this.address) / totalSupply wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RefundPayment(msg.sender, balances[address(msg.sender)] * eth.balance(this.address) / totalSupply);
}

function sub_98bd8c19(?) {
    if votesBy[address(msg.sender)].field_0 > 0:
        votesBy[address(msg.sender)].field_0 = block.timestamp
        votesBy[address(msg.sender)].field_256 = 0
        require sub_f91a99bd >= balances[address(msg.sender)]
        sub_f91a99bd -= balances[address(msg.sender)]
        require sub_82925fc0 + balances[address(msg.sender)] >= sub_82925fc0
        sub_82925fc0 += balances[address(msg.sender)]
        emit 0xa25ca157: msg.sender, 0
        if sub_f91a99bd < sub_f4b99678:
            uint8(stor17.field_0) = 0
            if sub_82925fc0 >= sub_f4b99678:
                Mask(248, 0, stor17.field_8) = 1
        else:
            if sub_f91a99bd > sub_82925fc0:
                uint8(stor17.field_0) = 1
            else:
                uint8(stor17.field_0) = 0
                if sub_82925fc0 >= sub_f4b99678:
                    Mask(248, 0, stor17.field_8) = 1
}

function destroy(address arg1, uint256 arg2) {
    require msg.sender == managerAddress
    require balances[address(arg1)] >= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    require balances[address(arg1)] >= arg2
    balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    if votesBy[address(arg1)].field_0 > 0:
        if not votesBy[address(arg1)].field_256:
            require sub_82925fc0 >= arg2
            sub_82925fc0 -= arg2
        else:
            require sub_f91a99bd >= arg2
            sub_f91a99bd -= arg2
        if sub_f91a99bd < sub_f4b99678:
            uint8(stor17.field_0) = 0
            if sub_82925fc0 >= sub_f4b99678:
                Mask(248, 0, stor17.field_8) = 1
        else:
            if sub_f91a99bd > sub_82925fc0:
                uint8(stor17.field_0) = 1
            else:
                uint8(stor17.field_0) = 0
                if sub_82925fc0 >= sub_f4b99678:
                    Mask(248, 0, stor17.field_8) = 1
}

function refund(bool arg1) {
    require not uint8(stor17.field_0)
    require not uint8(stor17.field_8)
    require balances[address(msg.sender)] > 0
    require not votesBy[address(msg.sender)].field_0
    votesBy[address(msg.sender)].field_0 = block.timestamp
    votesBy[address(msg.sender)].field_256 = uint8(arg1)
    if not arg1:
        require sub_82925fc0 + balances[address(msg.sender)] >= sub_82925fc0
        sub_82925fc0 += balances[address(msg.sender)]
    else:
        require sub_f91a99bd + balances[address(msg.sender)] >= sub_f91a99bd
        sub_f91a99bd += balances[address(msg.sender)]
    emit 0x58b58f4b: msg.sender, arg1
    if sub_f91a99bd < sub_f4b99678:
        uint8(stor17.field_0) = 0
        if sub_82925fc0 >= sub_f4b99678:
            Mask(248, 0, stor17.field_8) = 1
    else:
        if sub_f91a99bd > sub_82925fc0:
            uint8(stor17.field_0) = 1
        else:
            uint8(stor17.field_0) = 0
            if sub_82925fc0 >= sub_f4b99678:
                Mask(248, 0, stor17.field_8) = 1
}

function _fallback() payable {
    if totalSupply >= sub_4a31aa21:
        revert with 0, 'Number of token is limited.'
    if uint8(stor17.field_0):
        revert with 0, 'Crowdsale is finished.'
    if uint8(stor17.field_16):
        revert with 0, 'Issue is paused.'
    if msg.value < minDeposit:
        revert with 0, 'Deposit is greater minDeposit'
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require sub_28b33ca3
    require totalSupply + (10^18 * msg.value / sub_28b33ca3) >= totalSupply
    totalSupply += 10^18 * msg.value / sub_28b33ca3
    require totalSupply <= sub_4a31aa21
    if votesBy[address(msg.sender)].field_0 > 0:
        if votesBy[address(msg.sender)].field_256:
            votesBy[address(msg.sender)].field_256 = 0
            require sub_f91a99bd >= balances[address(msg.sender)]
            sub_f91a99bd -= balances[address(msg.sender)]
            require sub_82925fc0 + balances[address(msg.sender)] >= sub_82925fc0
            sub_82925fc0 += balances[address(msg.sender)]
        require sub_82925fc0 + (10^18 * msg.value / sub_28b33ca3) >= sub_82925fc0
        sub_82925fc0 += 10^18 * msg.value / sub_28b33ca3
        if sub_f91a99bd < sub_f4b99678:
            uint8(stor17.field_0) = 0
            if sub_82925fc0 >= sub_f4b99678:
                Mask(248, 0, stor17.field_8) = 1
        else:
            if sub_f91a99bd > sub_82925fc0:
                uint8(stor17.field_0) = 1
            else:
                uint8(stor17.field_0) = 0
                if sub_82925fc0 >= sub_f4b99678:
                    Mask(248, 0, stor17.field_8) = 1
    if not balances[address(msg.sender)]:
        balances[address(msg.sender)] = 10^18 * msg.value / sub_28b33ca3
    else:
        require balances[address(msg.sender)] + (10^18 * msg.value / sub_28b33ca3) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += 10^18 * msg.value / sub_28b33ca3
    emit Transfer((10^18 * msg.value / sub_28b33ca3), 0, msg.sender);
    if walletContractAddress:
        if msg.value:
            require msg.value
            require msg.value * sub_b4f2d138 / msg.value == sub_b4f2d138
        call walletContractAddress with:
           value msg.value * sub_b4f2d138 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
