contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor9;
uint256 stor9; offset 8
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 19
    stor1.length.field_8 = 'Media Network Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'MNT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor4 = 0
    stor5 = 125000000 * 10^18
    stor6 = 0x9887c2da3ac5449f3d62d4a04372a4724c21f54c
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 0
    stor10 = 421847 * 3600
    stor11 = 1513435000
    stor12 = 7500 * 10^18
    stor15 = 10000
    require not msg.value
    stor0 = msg.sender
    stor13 = 0
    stor6 = code.data[6085 len 20]
    return code.data[759 len 5314]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 maxSupply;
address cjTeamWalletAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
uint256 saleEndTime;
uint256 saleStartTime;
uint256 maxEthToRaise;
uint256 totalEthRaised;
uint256 ethAvailable;
uint256 eth2mnt;

function name() {
    return name[0 len name.length]
}

function eth2mnt() {
    return eth2mnt
}

function totalSupply() {
    return totalSupply
}

function saleStartTime() {
    return saleStartTime
}

function decimals() {
    return decimals
}

function ethAvailable() {
    return ethAvailable
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalEthRaised() {
    return totalEthRaised
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function maxEthToRaise() {
    return maxEthToRaise
}

function cjTeamWallet() {
    return cjTeamWalletAddress
}

function saleEndTime() {
    return saleEndTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeCJTeamWallet(address arg1) {
    require msg.sender == owner
    cjTeamWalletAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function partialWithdrawal(uint256 arg1) {
    require msg.sender == owner
    call cjTeamWalletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    ethAvailable -= arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function endOfSaleFullWithdrawal() {
    require msg.sender == owner
    if uint8(stor9.field_8):
        call cjTeamWalletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        ethAvailable = 0
        require balanceOf[stor6] + 50000000 * 10^18 >= balanceOf[stor6]
        require totalSupply + 50000000 * 10^18 <= maxSupply
        totalSupply += 50000000 * 10^18
        balanceOf[stor6] += 50000000 * 10^18
        emit Transfer(50000000 * 10^18, 0, cjTeamWalletAddress);
    else:
        if block.timestamp > saleEndTime:
            call cjTeamWalletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            ethAvailable = 0
            require balanceOf[stor6] + 50000000 * 10^18 >= balanceOf[stor6]
            require totalSupply + 50000000 * 10^18 <= maxSupply
            totalSupply += 50000000 * 10^18
            balanceOf[stor6] += 50000000 * 10^18
            emit Transfer(50000000 * 10^18, 0, cjTeamWalletAddress);
}

function _fallback() payable {
    require msg.value
    require not uint8(stor9.field_8)
    require block.timestamp <= saleEndTime
    if not uint8(stor9.field_0):
        require block.timestamp >= saleStartTime
        uint8(stor9.field_0) = 1
    if maxEthToRaise > totalEthRaised + msg.value:
        totalEthRaised += msg.value
        ethAvailable += msg.value
        require balanceOf[address(msg.sender)] + (msg.value * eth2mnt) >= balanceOf[address(msg.sender)]
        require totalSupply + (msg.value * eth2mnt) <= maxSupply
        totalSupply += msg.value * eth2mnt
        balanceOf[address(msg.sender)] += msg.value * eth2mnt
        emit Transfer((msg.value * eth2mnt), 0, msg.sender);
        call cjTeamWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        totalEthRaised = maxEthToRaise
        ethAvailable = ethAvailable + maxEthToRaise - totalEthRaised
        require balanceOf[address(msg.sender)] + (maxEthToRaise * eth2mnt) - (totalEthRaised * eth2mnt) >= balanceOf[address(msg.sender)]
        require totalSupply + (maxEthToRaise * eth2mnt) - (totalEthRaised * eth2mnt) <= maxSupply
        totalSupply = totalSupply + (maxEthToRaise * eth2mnt) - (totalEthRaised * eth2mnt)
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (maxEthToRaise * eth2mnt) - (totalEthRaised * eth2mnt)
        emit Transfer(((maxEthToRaise * eth2mnt) - (totalEthRaised * eth2mnt)), 0, msg.sender);
        Mask(248, 0, stor9.field_8) = 1
        call msg.sender with:
           value msg.value - maxEthToRaise + totalEthRaised wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call cjTeamWalletAddress with:
           value maxEthToRaise - totalEthRaised wei
             gas 2300 * is_zero(value) wei
}



}
