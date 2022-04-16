contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor4;
array of uint256 stor5;
uint256 stor6;
array of uint256 stor7;

function _fallback() payable {
    stor6 = 8
    bool(stor7.length) = 0
    stor7.length.field_1 = 0
    stor7.length.field_8 = mem[128 len 31]
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1[address(msg.sender)] = 0
    stor0 = 0
    stor4 = msg.sender
    emit LogSetOwner(msg.sender);
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'Word' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[440 len 8960]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address authorityAddress;
uint8 stor4; offset 160
address owner;
array of uint256 symbol;
uint256 decimals;
array of uint256 name;
address offerContractAddress;
uint256 tokenSellCost;
uint256 tokenBuyCost;
uint8 stor11;
uint256 secondsAfter;
uint256 depositPercents;
address iCOContractAddress;
address preICOContractAddress;
mapping of uint256 reservedCoins;
mapping of struct deposits;

function reservedCoins(address arg1) {
    return reservedCoins[arg1]
}

function name() {
    return name[0 len name.length]
}

function preICOContract() {
    return preICOContractAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function depositPercents() {
    return depositPercents
}

function tokenBuyCost() {
    return tokenBuyCost
}

function ICOContract() {
    return iCOContractAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(stor4)
}

function secondsAfter() {
    return secondsAfter
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function authority() {
    return authorityAddress
}

function OfferContract() {
    return offerContractAddress
}

function isSellable() {
    return bool(stor11)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenSellCost() {
    return tokenSellCost
}

function deposits(address arg1) {
    return deposits[arg1].field_0, deposits[arg1].field_256
}

function reserveCoins(address arg1, uint256 arg2) {
    require offerContractAddress == msg.sender
    balanceOf[address(arg1)] -= arg2
    reservedCoins[address(arg1)] += arg2
}

function declineCoins(address arg1, uint256 arg2) {
    require offerContractAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    reservedCoins[address(arg1)] -= arg2
}

function ICOmint(uint128 arg1) {
    require iCOContractAddress == msg.sender
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
}

function sendReward(address arg1, address arg2, uint256 arg3) {
    require offerContractAddress == msg.sender
    reservedCoins[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit LogSendReward(address(arg1), address(arg2), Array(len=11, data='Sent reward'));
}

function preICOmint(uint128 arg1) {
    require preICOContractAddress == msg.sender
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
}

function _fallback() payable {
    require stor11
    require tokenBuyCost
    balanceOf[address(this.address)] -= msg.value / tokenBuyCost
    balanceOf[msg.sender] += msg.value / tokenBuyCost
    emit LogBuyCoins(address(msg.sender), msg.value / tokenBuyCost, Array(len=12, data='Coins bought'));
}

function approve(address arg1, uint256 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function makeDeposit(uint256 arg1) {
    require balanceOf[address(msg.sender)] > arg1
    require not deposits[address(msg.sender)].field_0
    deposits[address(msg.sender)].field_0 = arg1
    deposits[address(msg.sender)].field_256 = block.timestamp
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit LogMakeDeposit(address(msg.sender), arg1, Array(len=12, data='Made deposit'));
}

function takeEther() payable {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
}

function setSellable(bool arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor11 = uint8(arg1)
}

function setICO(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    iCOContractAddress = arg1
}

function setSecondsAfter(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    secondsAfter = arg1
}

function setPreICO(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    preICOContractAddress = arg1
}

function setDepositPercents(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    depositPercents = arg1
}

function setOfferContract(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    offerContractAddress = arg1
}

function setBuyCourse(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor11 = 0
    tokenBuyCost = arg1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setSellCourse(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor11 = 0
    tokenSellCost = arg1
}

function setName(string arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function push(address arg1, uint128 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function pull(address arg1, uint128 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(arg1)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[msg.sender] + arg2 >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + arg2
    emit Transfer(arg2, arg1, msg.sender);
    return 1
}

function mint(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
}

function burn(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
}

function getEther(uint128 arg1) {
    require stor11
    require tokenSellCost > 0
    require 10 * balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require 10 * balanceOf[address(msg.sender)] / 100 >= arg1
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf[this.address] + arg1 >= balanceOf[this.address]
    balanceOf[address(this.address)] = balanceOf[this.address] + arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * tokenSellCost wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogGetEther(address(msg.sender), arg1 * tokenSellCost, Array(len=9, data='Got Ether'));
}

function getDeposit() {
    require deposits[address(msg.sender)].field_0
    require secondsAfter >= secondsAfter
    require block.timestamp > deposits[address(msg.sender)].field_256 + secondsAfter
    require depositPercents + 100 >= 100
    require (100 * deposits[address(msg.sender)].field_0) + (depositPercents * deposits[address(msg.sender)].field_0) >= deposits[address(msg.sender)].field_0
    require balanceOf[address(this.address)] > (100 * deposits[address(msg.sender)].field_0) + (depositPercents * deposits[address(msg.sender)].field_0) / 100
    require depositPercents + 100 >= 100
    require (100 * deposits[address(msg.sender)].field_0) + (depositPercents * deposits[address(msg.sender)].field_0) >= deposits[address(msg.sender)].field_0
    deposits[address(msg.sender)].field_0 = 0
    balanceOf[address(msg.sender)] += (100 * deposits[address(msg.sender)].field_0) + (depositPercents * deposits[address(msg.sender)].field_0) / 100
    balanceOf[this.address] -= (100 * deposits[address(msg.sender)].field_0) + (depositPercents * deposits[address(msg.sender)].field_0) / 100
    emit LogGetDeposit(address(msg.sender), (100 * deposits[address(msg.sender)].field_0) + (depositPercents * deposits[address(msg.sender)].field_0) / 100, Array(len=11, data='Got deposit'));
}

function bounty(address arg1, uint256 arg2) {
    if msg.sender == this.address:
        require balanceOf[address(this.address)] >= arg2
        balanceOf[address(arg1)] += arg2
        balanceOf[this.address] -= arg2
        emit LogBounty(address(arg1), arg2, Array(len=11, data='Sent bounty'));
    else:
        if owner == msg.sender:
            require balanceOf[address(this.address)] >= arg2
            balanceOf[address(arg1)] += arg2
            balanceOf[this.address] -= arg2
            emit LogBounty(address(arg1), arg2, Array(len=11, data='Sent bounty'));
        else:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
            require balanceOf[address(this.address)] >= arg2
            balanceOf[address(arg1)] += arg2
            balanceOf[this.address] -= arg2
            emit LogBounty(address rg1, uint256 rg2, string rg3):
                           arg1,
                           0,
                           96,
                           11,
                           'Sent bounty',
}

function etherBounty(address arg1, uint256 arg2) {
    if msg.sender == this.address:
        require eth.balance(this.address) >= arg2
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogEtherBounty(address(arg1), arg2, Array(len=17, data='Sent ether bounty'));
    else:
        if owner == msg.sender:
            require eth.balance(this.address) >= arg2
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogEtherBounty(address(arg1), arg2, Array(len=17, data='Sent ether bounty'));
        else:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
            require eth.balance(this.address) >= arg2
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogEtherBounty(address rg1, uint256 rg2, string rg3):
                                arg1,
                                0,
                                96,
                                17,
                                'Sent ether bounty',
}



}
