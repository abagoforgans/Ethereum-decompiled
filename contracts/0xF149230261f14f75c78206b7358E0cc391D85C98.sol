contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    stor1 = 100000000 * 10^18
    stor5 = code.data[10462 len 20]
    stor6 = code.data[10494 len 20]
    create contract with 0 wei
                    code: code.data[9271 len 1179], stor5
    require create.new_address
    stor4 = address(create.new_address)
    require ext_code.size(stor4)
    call stor4.isSYNVault() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if stor1:
        require stor1
        require 5500 * stor1 / stor1 == 5500
    stor7 = 5500 * stor1 / 10000
    require stor7 <= 100000000 * 10^18
    if stor1:
        require stor1
        require 2000 * stor1 / stor1 == 2000
    stor9 = 2000 * stor1 / 10000
    require stor2[stor6] + stor9 >= stor2[stor6]
    stor2[stor6] += stor9
    emit Transfer(stor9, 0, stor6);
    require stor9 <= -stor7 + 100000000 * 10^18
    if stor1:
        require stor1
        require 950 * stor1 / stor1 == 950
    require stor2[stor4] + (950 * stor1 / 10000) >= stor2[stor4]
    stor2[stor4] += 950 * stor1 / 10000
    emit Transfer((950 * stor1 / 10000), 0, stor4);
    require 950 * stor1 / 10000 <= -stor7 + -stor9 + 100000000 * 10^18
    if stor1:
        require stor1
        require 100 * stor1 / stor1 == 100
    stor8 = 100 * stor1 / 10000
    require stor8 <= -stor7 + -stor9 + -(950 * stor1 / 10000) + 100000000 * 10^18
    require stor2[stor5] + -stor7 + -stor9 + -(950 * stor1 / 10000) + -stor8 + 100000000 * 10^18 >= stor2[stor5]
    stor2[stor5] = stor2[stor5] + -stor7 + -stor9 + -(950 * stor1 / 10000) + -stor8 + 100000000 * 10^18
    emit Transfer((-stor7 + -stor9 + -(950 * stor1 / 10000) + -stor8 + 100000000 * 10^18), 0, stor5);
    return code.data[2307 len 6964]
}



// =====================  Runtime code  =====================


const name = 'SynchroCoin'

const startDate = (418359 * 3600)

const vaultPercentage = 950

const decimals = 18

const initialSupply = 100000000 * 10^18

const bountyPercentage = 100

const totalFundedEther = 755427897026000000400

const businessPercentage = 1450

const hundredPercent = 10000

const symbol = 'SYC'

const firstPresaleEnd = 1503835140

const totalConsideredFundedEther = (251269784851638889 * 3600)

const rewardPoolPercentage = 2000

const crowdSalePercentage = 5500

const endDate = 1508511599

const firstPresaleStart = (417468 * 3600)

const secondPresaleStart = (417924 * 3600)

const secondPresaleEnd = 1504785540


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address vaultAddress;
address businessAddress;
address rewardPoolAddress;
uint256 crowdSaleTokens;
uint256 bountyTokens;
uint256 rewardPoolTokens;

function businessAddress() {
    return businessAddress
}

function totalSupply() {
    return totalSupply
}

function bountyTokens() {
    return bountyTokens
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function rewardPoolAddress() {
    return rewardPoolAddress
}

function owner() {
    return owner
}

function crowdSaleTokens() {
    return crowdSaleTokens
}

function rewardPoolTokens() {
    return rewardPoolTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function completeBountyDistribution() {
    require msg.sender == owner
    require balanceOf[stor5] + bountyTokens >= balanceOf[stor5]
    balanceOf[stor5] += bountyTokens
    emit Transfer(bountyTokens, 0, businessAddress);
    bountyTokens = 0
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getBonusMultiplierAt(uint256 arg1) {
    if arg1 >= 417468 * 3600:
        if arg1 < 1503835140:
            return 140
        if arg1 >= 417924 * 3600:
            if arg1 < 1504785540:
                return 130
    if arg1 < 418383 * 3600:
        return 120
    if arg1 < 418527 * 3600:
        return 115
    if arg1 < 418695 * 3600:
        return 110
    if arg1 < 418863 * 3600:
        return 105
    if arg1 > 1508511599:
        return 0
    return 100
}

function distributeBountyTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= bountyTokens
        bountyTokens -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        require idx < arg2.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_34));
        idx = idx + 1
        continue 
}

function distributeCrowdsaleTokens(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2 >= 10^17
    require arg3 >= 417468 * 3600
    require arg3 <= 1508511599
    if arg3 >= 417468 * 3600:
        if arg3 < 1503835140:
            if arg2:
                require arg2
                require 140 * arg2 / arg2 == 140
            if 140 * arg2 / 100:
                require 140 * arg2 / 100
                require 140 * arg2 / 100 * crowdSaleTokens / 140 * arg2 / 100 == crowdSaleTokens
            require balanceOf[address(arg1)] + (140 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 140 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600
            emit Transfer((140 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600), 0, arg1);
            return (140 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600)
        if arg3 >= 417924 * 3600:
            if arg3 < 1504785540:
                if arg2:
                    require arg2
                    require 130 * arg2 / arg2 == 130
                if 130 * arg2 / 100:
                    require 130 * arg2 / 100
                    require 130 * arg2 / 100 * crowdSaleTokens / 130 * arg2 / 100 == crowdSaleTokens
                require balanceOf[address(arg1)] + (130 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 130 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600
                emit Transfer((130 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600), 0, arg1);
                return (130 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600)
    if arg3 < 418383 * 3600:
        if arg2:
            require arg2
            require 120 * arg2 / arg2 == 120
        if 120 * arg2 / 100:
            require 120 * arg2 / 100
            require 120 * arg2 / 100 * crowdSaleTokens / 120 * arg2 / 100 == crowdSaleTokens
        require balanceOf[address(arg1)] + (120 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 120 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600
        emit Transfer((120 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600), 0, arg1);
        return (120 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600)
    if arg3 < 418527 * 3600:
        if arg2:
            require arg2
            require 115 * arg2 / arg2 == 115
        if 115 * arg2 / 100:
            require 115 * arg2 / 100
            require 115 * arg2 / 100 * crowdSaleTokens / 115 * arg2 / 100 == crowdSaleTokens
        require balanceOf[address(arg1)] + (115 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 115 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600
        emit Transfer((115 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600), 0, arg1);
        return (115 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600)
    if arg3 < 418695 * 3600:
        if arg2:
            require arg2
            require 110 * arg2 / arg2 == 110
        if 110 * arg2 / 100:
            require 110 * arg2 / 100
            require 110 * arg2 / 100 * crowdSaleTokens / 110 * arg2 / 100 == crowdSaleTokens
        require balanceOf[address(arg1)] + (110 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 110 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600
        emit Transfer((110 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600), 0, arg1);
        return (110 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600)
    if arg3 < 418863 * 3600:
        if arg2:
            require arg2
            require 105 * arg2 / arg2 == 105
        if 105 * arg2 / 100:
            require 105 * arg2 / 100
            require 105 * arg2 / 100 * crowdSaleTokens / 105 * arg2 / 100 == crowdSaleTokens
        require balanceOf[address(arg1)] + (105 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 105 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600
        emit Transfer((105 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600), 0, arg1);
        return (105 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600)
    if arg3 > 1508511599:
        if arg2:
            require arg2
            require not 0 / arg2
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, 0, arg1);
        return 0
    if arg2:
        require arg2
        require 100 * arg2 / arg2 == 100
    if 100 * arg2 / 100:
        require 100 * arg2 / 100
        require 100 * arg2 / 100 * crowdSaleTokens / 100 * arg2 / 100 == crowdSaleTokens
    require balanceOf[address(arg1)] + (100 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 100 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600
    emit Transfer((100 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600), 0, arg1);
    return (100 * arg2 / 100 * crowdSaleTokens / 251269784851638889 * 3600)
}



}
