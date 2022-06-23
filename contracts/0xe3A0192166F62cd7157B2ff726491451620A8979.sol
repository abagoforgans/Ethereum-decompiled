contract main {




// =====================  Runtime code  =====================


const decimals = 18

const totalEthereumBalance = eth.balance(this.address)

const allowance(address arg1, address arg2) = 0


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
uint256 dividendFee_;
uint256 sub_476cd51b;
uint256 sub_a0cd9565;
uint256 sub_63c1bea2;
mapping of uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 sub_028d5c48;
mapping of uint256 referralBalance_;
mapping of uint256 stor11;
mapping of uint256 stor12;
uint256 totalSupply;
uint256 stor14;
mapping of uint8 stor15;
uint8 onlyAmbassadors;
address stor16;
address owner; offset 8

function sub_028d5c48(?) {
    return sub_028d5c48[arg1]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function onlyAmbassadors() {
    return bool(onlyAmbassadors)
}

function administrators(bytes32 arg1) {
    return bool(stor15[arg1])
}

function sub_476cd51b(?) {
    return sub_476cd51b
}

function stakingRequirement() {
    return stakingRequirement
}

function sub_63c1bea2(?) {
    return sub_63c1bea2
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function dividendFee_() {
    return dividendFee_
}

function sub_a0cd9565(?) {
    return sub_a0cd9565
}

function referralBalance_(address arg1) {
    return referralBalance_[arg1]
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_030f61f9(?) {
    sub_028d5c48[address(arg1)] -= arg2
    emit 0x392815b1 
}

function disableInitialStage() {
    require stor15[msg.sender]
    onlyAmbassadors = 0
}

function approve(address arg1, uint256 arg2) {
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setStakingRequirement(uint256 arg1) {
    require stor15[msg.sender]
    stakingRequirement = arg1
}

function setAdministrator(bytes32 arg1, bool arg2) {
    require stor15[msg.sender]
    stor15[arg1] = uint8(arg2)
}

function setName(string arg1) {
    require stor15[msg.sender]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require stor15[msg.sender]
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_dfa57da4(?) {
    require msg.sender == owner
    dividendFee_ = arg1
    sub_476cd51b = arg2
    sub_a0cd9565 = arg3
    sub_63c1bea2 = arg4
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (balanceOf[address(arg1)] * stor14) + (sub_028d5c48[address(arg1)] * stor14) - stor11[address(arg1)]) >> 64)
}

function tokensToEthereum_(uint256 arg1) {
    require 5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1)
    return ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    sub_028d5c48[address(arg1)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)])
    return (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64)
}

function sellPrice() {
    if not totalSupply:
        return 99995 * 10^9
    require 9999999999999999995 * 10^9 <= (5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 99995000000000 * 10^18
    require dividendFee_
    require (5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18 / dividendFee_ <= (5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18
    return (((5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18) - ((5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18 / dividendFee_))
}

function buyPrice() {
    if not totalSupply:
        return 100005 * 10^9
    require 9999999999999999995 * 10^9 <= (5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 99995000000000 * 10^18
    require dividendFee_
    require ((5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18) + ((5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18 / dividendFee_) >= (5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18
    return (((5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18) + ((5000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (0x59bdcaeb38c206130db1a320 * 3600) / 10^18 / dividendFee_))
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1)
    require dividendFee_
    require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / dividendFee_ <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    return (((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / dividendFee_))
}

function withdraw() {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] > 0
    stor11[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)])
    referralBalance_[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]), msg.sender);
}

function calculateTokensReceived(uint256 arg1) {
    require dividendFee_
    require arg1 / dividendFee_ <= arg1
    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * arg1) + (-10000000000000000000000000000 * 10^18 * arg1 / dividendFee_) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * arg1) + (-10000000000000000000000000000 * 10^18 * arg1 / dividendFee_) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
    while s < t:
        require s
        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * arg1) + (-10000000000000000000000000000 * 10^18 * arg1 / dividendFee_) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
        t = s
        continue 
    if 100000000000000 * 10^18 <= t:
        return ((t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply)
    revert
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg2 > 0
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require dividendFee_
    require arg2 / dividendFee_ <= arg2
    require 5 * 10^9 * ((arg2 / dividendFee_) + 10^18)^2 + -(arg2 / dividendFee_) - 10^18 / 10^18 / 2 <= (99995 * 10^9 * arg2 / dividendFee_) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg2 / dividendFee_)
    require arg2 / dividendFee_ <= totalSupply
    totalSupply -= arg2 / dividendFee_
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 - (arg2 / dividendFee_) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / dividendFee_)
    stor11[address(msg.sender)] += -1 * stor14 * arg2
    stor11[address(arg1)] = stor11[address(arg1)] + (arg2 * stor14) - (arg2 / dividendFee_ * stor14)
    require totalSupply
    require stor14 + ((99995 * 10^9 * arg2 / dividendFee_) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg2 / dividendFee_) - (5 * 10^9 * ((arg2 / dividendFee_) + 10^18)^2 + -(arg2 / dividendFee_) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply) >= stor14
    stor14 += (99995 * 10^9 * arg2 / dividendFee_) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg2 / dividendFee_) - (5 * 10^9 * ((arg2 / dividendFee_) + 10^18)^2 + -(arg2 / dividendFee_) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 10, '0xc2985578'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require not onlyAmbassadors
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] > 0:
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] > 0
        stor11[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)])
        referralBalance_[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]), msg.sender);
    require dividendFee_ / 100
    require arg2 / dividendFee_ / 100 <= arg2
    require 5 * 10^9 * ((arg2 / dividendFee_ / 100) + 10^18)^2 + -(arg2 / dividendFee_ / 100) - 10^18 / 10^18 / 2 <= (99995 * 10^9 * arg2 / dividendFee_ / 100) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg2 / dividendFee_ / 100)
    require arg2 / dividendFee_ / 100 <= totalSupply
    totalSupply -= arg2 / dividendFee_ / 100
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 - (arg2 / dividendFee_ / 100) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / dividendFee_ / 100)
    stor11[address(msg.sender)] += -1 * stor14 * arg2
    stor11[address(arg1)] = stor11[address(arg1)] + (arg2 * stor14) - (arg2 / dividendFee_ / 100 * stor14)
    require totalSupply
    require stor14 + ((99995 * 10^9 * arg2 / dividendFee_ / 100) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg2 / dividendFee_ / 100) - (5 * 10^9 * ((arg2 / dividendFee_ / 100) + 10^18)^2 + -(arg2 / dividendFee_ / 100) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply) >= stor14
    stor14 += (99995 * 10^9 * arg2 / dividendFee_ / 100) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg2 / dividendFee_ / 100) - (5 * 10^9 * ((arg2 / dividendFee_ / 100) + 10^18)^2 + -(arg2 / dividendFee_ / 100) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply
    emit Transfer((arg2 - (arg2 / dividendFee_ / 100)), msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1)
    if not (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
        require sub_476cd51b + 1 >= sub_476cd51b
        require 0 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
        if totalSupply > 0:
            require totalSupply
            require stor14 + (0 / totalSupply) >= stor14
            stor14 += 0 / totalSupply
        call msg.sender with:
           value (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onTokenSell(arg1, (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, msg.sender);
    else:
        require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
        require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == dividendFee_
        require sub_476cd51b + 1 >= sub_476cd51b
        if not (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20:
            if not (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20:
                require 0 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor14 + (0 / totalSupply) >= stor14
                    stor14 += 0 / totalSupply
                call msg.sender with:
                   value (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onTokenSell(arg1, (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, msg.sender);
            else:
                require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20
                require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 / (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 == sub_63c1bea2
                require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - (((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor14 + ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply) >= stor14
                    stor14 += (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                call msg.sender with:
                   value ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onTokenSell(arg1, ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2), msg.sender);
        else:
            require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20
            require ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) + (sub_476cd51b * (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) / (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 == sub_476cd51b + 1
            if not (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20:
                require 0 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor14 + (0 / totalSupply) >= stor14
                    stor14 += 0 / totalSupply
                balanceOf[stor16] = balanceOf[stor16] + ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) + (sub_476cd51b * (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20)
                call msg.sender with:
                   value (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onTokenSell(arg1, (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, msg.sender);
            else:
                require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20
                require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 / (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 == sub_63c1bea2
                require (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 <= (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - (((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor14 + ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply) >= stor14
                    stor14 += (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                balanceOf[stor16] = balanceOf[stor16] + ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) + (sub_476cd51b * (99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20)
                call msg.sender with:
                   value ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onTokenSell(arg1, ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * arg1) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * arg1) - (5 * 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2), msg.sender);
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
        if not (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18:
            require sub_476cd51b + 1 >= sub_476cd51b
            require 0 <= (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
            require balanceOf[address(msg.sender)] <= totalSupply
            totalSupply -= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * balanceOf[address(msg.sender)]) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 << 64)
            if totalSupply > 0:
                require totalSupply
                require stor14 + (0 / totalSupply) >= stor14
                stor14 += 0 / totalSupply
            call msg.sender with:
               value (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit onTokenSell(balanceOf[address(msg.sender)], (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, msg.sender);
        else:
            require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
            require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 == dividendFee_
            require sub_476cd51b + 1 >= sub_476cd51b
            if not (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20:
                if not (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20:
                    require 0 <= (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
                    require balanceOf[address(msg.sender)] <= totalSupply
                    totalSupply -= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = 0
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * balanceOf[address(msg.sender)]) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor14 + (0 / totalSupply) >= stor14
                        stor14 += 0 / totalSupply
                    call msg.sender with:
                       value (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onTokenSell(balanceOf[address(msg.sender)], (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, msg.sender);
                else:
                    require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20
                    require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 / (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 == sub_63c1bea2
                    require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 <= (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
                    require balanceOf[address(msg.sender)] <= totalSupply
                    totalSupply -= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = 0
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * balanceOf[address(msg.sender)]) - (((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor14 + ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply) >= stor14
                        stor14 += (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    call msg.sender with:
                       value ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onTokenSell(balanceOf[address(msg.sender)], ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2), msg.sender);
            else:
                require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20
                require ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) + (sub_476cd51b * (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) / (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 == sub_476cd51b + 1
                if not (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20:
                    require 0 <= (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
                    require balanceOf[address(msg.sender)] <= totalSupply
                    totalSupply -= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = 0
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * balanceOf[address(msg.sender)]) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor14 + (0 / totalSupply) >= stor14
                        stor14 += 0 / totalSupply
                    balanceOf[stor16] = balanceOf[stor16] + ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) + (sub_476cd51b * (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20)
                    call msg.sender with:
                       value (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onTokenSell(balanceOf[address(msg.sender)], (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, msg.sender);
                else:
                    require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20
                    require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 / (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 == sub_63c1bea2
                    require (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 <= (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
                    require balanceOf[address(msg.sender)] <= totalSupply
                    totalSupply -= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = 0
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * balanceOf[address(msg.sender)]) - (((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor14 + ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply) >= stor14
                        stor14 += (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    balanceOf[stor16] = balanceOf[stor16] + ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20) + (sub_476cd51b * (99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20)
                    call msg.sender with:
                       value ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onTokenSell(balanceOf[address(msg.sender)], ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((99995 * 10^9 * balanceOf[address(msg.sender)]) + (5 * 10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (5 * 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 * dividendFee_ / 100 / 20 * sub_63c1bea2), msg.sender);
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] > 0
    stor11[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)])
    referralBalance_[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]), msg.sender);
}

function _fallback() payable {
    if not onlyAmbassadors:
        onlyAmbassadors = 0
        if not msg.value:
            require 0 <= msg.value
            s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
            t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
            while s < t:
                require s
                s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000000 * 10^18 <= t
            require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
            require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
            if totalSupply <= 0:
                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            else:
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                require totalSupply
                stor14 += 0 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
        else:
            require msg.value
            require msg.value * dividendFee_ / msg.value == dividendFee_
            if not msg.value * dividendFee_ / 100 / 20:
                if not msg.value * dividendFee_ / 100 / 20:
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not msg.value * dividendFee_ / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require msg.value * dividendFee_ / 100 / 20
                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not msg.value * dividendFee_ / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require msg.value * dividendFee_ / 100 / 20
                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
            else:
                require msg.value * dividendFee_ / 100 / 20
                require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b / msg.value * dividendFee_ / 100 / 20 == sub_476cd51b
                if not msg.value * dividendFee_ / 100 / 20:
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not msg.value * dividendFee_ / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require msg.value * dividendFee_ / 100 / 20
                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not msg.value * dividendFee_ / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require msg.value * dividendFee_ / 100 / 20
                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
    else:
        if eth.balance(this.address) - msg.value > 20 * 10^18:
            onlyAmbassadors = 0
            if not msg.value:
                require 0 <= msg.value
                s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                while s < t:
                    require s
                    s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000000 * 10^18 <= t
                require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                else:
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                    require totalSupply
                    stor14 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
            else:
                require msg.value
                require msg.value * dividendFee_ / msg.value == dividendFee_
                if not msg.value * dividendFee_ / 100 / 20:
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b / msg.value * dividendFee_ / 100 / 20 == sub_476cd51b
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
        else:
            require bool(stor7[address(msg.sender)]) == 1
            require stor12[address(msg.sender)] + msg.value <= 10^18
            require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
            stor12[address(msg.sender)] += msg.value
            if not msg.value:
                require 0 <= msg.value
                s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                while s < t:
                    require s
                    s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000000 * 10^18 <= t
                require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                else:
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                    require totalSupply
                    stor14 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
            else:
                require msg.value
                require msg.value * dividendFee_ / msg.value == dividendFee_
                if not msg.value * dividendFee_ / 100 / 20:
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b / msg.value * dividendFee_ / 100 / 20 == sub_476cd51b
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
    emit onTokenPurchase(msg.value, (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply, msg.sender, 0);
}

function reinvest() {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] > 0
    stor11[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)])
    referralBalance_[address(msg.sender)] = 0
    if not onlyAmbassadors:
        onlyAmbassadors = 0
        if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]:
            require 0 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
            s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
            t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
            while s < t:
                require s
                s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000000 * 10^18 <= t
            require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
            require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
            if totalSupply <= 0:
                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            else:
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                require totalSupply
                stor14 += 0 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
        else:
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] == dividendFee_
            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                else:
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_a0cd9565
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 >= 0
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    balanceOf[stor16] += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
            else:
                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_476cd51b
                if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b >= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    balanceOf[stor16] += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b)
                else:
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_a0cd9565
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    require ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565) >= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    balanceOf[stor16] = balanceOf[stor16] + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
    else:
        if eth.balance(this.address) - (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) - referralBalance_[address(msg.sender)] > 20 * 10^18:
            onlyAmbassadors = 0
            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]:
                require 0 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                while s < t:
                    require s
                    s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000000 * 10^18 <= t
                require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                else:
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                    require totalSupply
                    stor14 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
            else:
                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] == dividendFee_
                if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                    if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                    else:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_a0cd9565
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 >= 0
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
                else:
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_476cd51b
                    if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b >= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b)
                    else:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_a0cd9565
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565) >= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] = balanceOf[stor16] + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
        else:
            require bool(stor7[address(msg.sender)]) == 1
            require stor12[address(msg.sender)] + (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] <= 10^18
            require stor12[address(msg.sender)] + (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] >= stor12[address(msg.sender)]
            stor12[address(msg.sender)] = stor12[address(msg.sender)] + (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]:
                require 0 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                while s < t:
                    require s
                    s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000000 * 10^18 <= t
                require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                else:
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                    require totalSupply
                    stor14 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
            else:
                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)] == dividendFee_
                if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                    if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                    else:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_a0cd9565
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 >= 0
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
                else:
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_476cd51b
                    if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b >= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b)
                    else:
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_a0cd9565
                        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)]
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + (0x1c06a5ec5433c60ddaa16406f5a400000000000 * referralBalance_[address(msg.sender)]) + (-10000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        require ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565) >= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20
                                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] = balanceOf[stor16] + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) + ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_476cd51b) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64 * dividendFee_) + (referralBalance_[address(msg.sender)] * dividendFee_) / 100 / 20 * sub_a0cd9565)
    emit onTokenPurchase((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)], (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply, msg.sender, 0);
    emit onReinvestment((Mask(192, 64, (balanceOf[address(msg.sender)] * stor14) + (sub_028d5c48[address(msg.sender)] * stor14) - stor11[address(msg.sender)]) >> 64) + referralBalance_[address(msg.sender)], (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply, msg.sender);
}

function sub_e4f23d88(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not onlyAmbassadors:
        onlyAmbassadors = 0
        if not msg.value:
            require 0 <= msg.value
            s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
            t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
            while s < t:
                require s
                s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000000 * 10^18 <= t
            require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
            require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
            if arg1:
                if arg1 != msg.sender:
                    if balanceOf[address(arg1)] >= stakingRequirement:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                        _3908 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != _3908:
                            require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
            if totalSupply <= 0:
                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            else:
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                require totalSupply
                stor14 += 0 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
        else:
            require msg.value
            require msg.value * dividendFee_ / msg.value == dividendFee_
            if not msg.value * dividendFee_ / 100 / 20:
                if not msg.value * dividendFee_ / 100 / 20:
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    if arg1:
                        if arg1 != msg.sender:
                            if balanceOf[address(arg1)] >= stakingRequirement:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                _3901 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != _3901:
                                    require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not msg.value * dividendFee_ / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require msg.value * dividendFee_ / 100 / 20
                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    if not arg1:
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                    else:
                        if arg1 == msg.sender:
                            require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            else:
                                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                if not msg.value * dividendFee_ / 100 / 20:
                                    require totalSupply
                                    stor14 += 0 / totalSupply
                                else:
                                    require msg.value * dividendFee_ / 100 / 20
                                    require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                    require totalSupply
                                    stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        else:
                            if balanceOf[address(arg1)] < stakingRequirement:
                                require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                else:
                                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                    if not msg.value * dividendFee_ / 100 / 20:
                                        require totalSupply
                                        stor14 += 0 / totalSupply
                                    else:
                                        require msg.value * dividendFee_ / 100 / 20
                                        require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                        require totalSupply
                                        stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            else:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                _3894 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3894:
                                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                else:
                                    require referralBalance_[address(arg1)] + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= referralBalance_[address(arg1)]
                                    referralBalance_[address(arg1)] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
            else:
                require msg.value * dividendFee_ / 100 / 20
                require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b / msg.value * dividendFee_ / 100 / 20 == sub_476cd51b
                if not msg.value * dividendFee_ / 100 / 20:
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    if not arg1:
                        require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                    else:
                        if arg1 == msg.sender:
                            require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        else:
                            if balanceOf[address(arg1)] < stakingRequirement:
                                require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                            else:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                _3887 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3887:
                                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                else:
                                    require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    else:
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                        if not msg.value * dividendFee_ / 100 / 20:
                            require totalSupply
                            stor14 += 0 / totalSupply
                        else:
                            require msg.value * dividendFee_ / 100 / 20
                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                            require totalSupply
                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                    require msg.value * dividendFee_ / 100 <= msg.value
                    s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                    t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    while s < t:
                        require s
                        s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 100000000000000 * 10^18 <= t
                    require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                    require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                    if not arg1:
                        require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                    else:
                        if arg1 == msg.sender:
                            require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                            if totalSupply <= 0:
                                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            else:
                                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                if not msg.value * dividendFee_ / 100 / 20:
                                    require totalSupply
                                    stor14 += 0 / totalSupply
                                else:
                                    require msg.value * dividendFee_ / 100 / 20
                                    require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                    require totalSupply
                                    stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        else:
                            if balanceOf[address(arg1)] < stakingRequirement:
                                require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                if totalSupply <= 0:
                                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                else:
                                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                    if not msg.value * dividendFee_ / 100 / 20:
                                        require totalSupply
                                        stor14 += 0 / totalSupply
                                    else:
                                        require msg.value * dividendFee_ / 100 / 20
                                        require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                        require totalSupply
                                        stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            else:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                _3880 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3880:
                                    require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                else:
                                    require referralBalance_[address(arg1)] + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= referralBalance_[address(arg1)]
                                    referralBalance_[address(arg1)] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
    else:
        if eth.balance(this.address) - msg.value > 20 * 10^18:
            onlyAmbassadors = 0
            if not msg.value:
                require 0 <= msg.value
                s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                while s < t:
                    require s
                    s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000000 * 10^18 <= t
                require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                if arg1:
                    if arg1 != msg.sender:
                        if balanceOf[address(arg1)] >= stakingRequirement:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                            _3943 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                            if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != _3943:
                                require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                else:
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                    require totalSupply
                    stor14 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
            else:
                require msg.value
                require msg.value * dividendFee_ / msg.value == dividendFee_
                if not msg.value * dividendFee_ / 100 / 20:
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if arg1:
                            if arg1 != msg.sender:
                                if balanceOf[address(arg1)] >= stakingRequirement:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3936 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != _3936:
                                        require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if not arg1:
                            require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            else:
                                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                if not msg.value * dividendFee_ / 100 / 20:
                                    require totalSupply
                                    stor14 += 0 / totalSupply
                                else:
                                    require msg.value * dividendFee_ / 100 / 20
                                    require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                    require totalSupply
                                    stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        else:
                            if arg1 == msg.sender:
                                require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                else:
                                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                    if not msg.value * dividendFee_ / 100 / 20:
                                        require totalSupply
                                        stor14 += 0 / totalSupply
                                    else:
                                        require msg.value * dividendFee_ / 100 / 20
                                        require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                        require totalSupply
                                        stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            else:
                                if balanceOf[address(arg1)] < stakingRequirement:
                                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                else:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3929 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3929:
                                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                    else:
                                        require referralBalance_[address(arg1)] + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= referralBalance_[address(arg1)]
                                        referralBalance_[address(arg1)] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b / msg.value * dividendFee_ / 100 / 20 == sub_476cd51b
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if not arg1:
                            require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        else:
                            if arg1 == msg.sender:
                                require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                            else:
                                if balanceOf[address(arg1)] < stakingRequirement:
                                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                else:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3922 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3922:
                                        require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                    else:
                                        require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if not arg1:
                            require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                            if totalSupply <= 0:
                                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            else:
                                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                if not msg.value * dividendFee_ / 100 / 20:
                                    require totalSupply
                                    stor14 += 0 / totalSupply
                                else:
                                    require msg.value * dividendFee_ / 100 / 20
                                    require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                    require totalSupply
                                    stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        else:
                            if arg1 == msg.sender:
                                require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                if totalSupply <= 0:
                                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                else:
                                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                    if not msg.value * dividendFee_ / 100 / 20:
                                        require totalSupply
                                        stor14 += 0 / totalSupply
                                    else:
                                        require msg.value * dividendFee_ / 100 / 20
                                        require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                        require totalSupply
                                        stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            else:
                                if balanceOf[address(arg1)] < stakingRequirement:
                                    require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                else:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3915 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3915:
                                        require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                    else:
                                        require referralBalance_[address(arg1)] + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= referralBalance_[address(arg1)]
                                        referralBalance_[address(arg1)] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
        else:
            require bool(stor7[address(msg.sender)]) == 1
            require stor12[address(msg.sender)] + msg.value <= 10^18
            require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
            stor12[address(msg.sender)] += msg.value
            if not msg.value:
                require 0 <= msg.value
                s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                while s < t:
                    require s
                    s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000000 * 10^18 <= t
                require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                if arg1:
                    if arg1 != msg.sender:
                        if balanceOf[address(arg1)] >= stakingRequirement:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                            _3978 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                            if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != _3978:
                                require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                else:
                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                    require totalSupply
                    stor14 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
            else:
                require msg.value
                require msg.value * dividendFee_ / msg.value == dividendFee_
                if not msg.value * dividendFee_ / 100 / 20:
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if arg1:
                            if arg1 != msg.sender:
                                if balanceOf[address(arg1)] >= stakingRequirement:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3971 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != _3971:
                                        require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if not arg1:
                            require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            else:
                                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                if not msg.value * dividendFee_ / 100 / 20:
                                    require totalSupply
                                    stor14 += 0 / totalSupply
                                else:
                                    require msg.value * dividendFee_ / 100 / 20
                                    require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                    require totalSupply
                                    stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        else:
                            if arg1 == msg.sender:
                                require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                else:
                                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                    if not msg.value * dividendFee_ / 100 / 20:
                                        require totalSupply
                                        stor14 += 0 / totalSupply
                                    else:
                                        require msg.value * dividendFee_ / 100 / 20
                                        require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                        require totalSupply
                                        stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            else:
                                if balanceOf[address(arg1)] < stakingRequirement:
                                    require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                else:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3964 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3964:
                                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                    else:
                                        require referralBalance_[address(arg1)] + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= referralBalance_[address(arg1)]
                                        referralBalance_[address(arg1)] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14)
                else:
                    require msg.value * dividendFee_ / 100 / 20
                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b / msg.value * dividendFee_ / 100 / 20 == sub_476cd51b
                    if not msg.value * dividendFee_ / 100 / 20:
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if not arg1:
                            require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        else:
                            if arg1 == msg.sender:
                                require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                            else:
                                if balanceOf[address(arg1)] < stakingRequirement:
                                    require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                else:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3957 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3957:
                                        require msg.value * dividendFee_ / 100 / 20 * sub_476cd51b >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                    else:
                                        require referralBalance_[address(arg1)] >= referralBalance_[address(arg1)]
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        else:
                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                            if not msg.value * dividendFee_ / 100 / 20:
                                require totalSupply
                                stor14 += 0 / totalSupply
                            else:
                                require msg.value * dividendFee_ / 100 / 20
                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                require totalSupply
                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
                    else:
                        require msg.value * dividendFee_ / 100 / 20
                        require msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565 / msg.value * dividendFee_ / 100 / 20 == sub_a0cd9565
                        require msg.value * dividendFee_ / 100 <= msg.value
                        s = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000001 / 2
                        t = (0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                        while s < t:
                            require s
                            s = ((0x1c06a5ec5433c60ddaa16406f5a400000000000 * msg.value) + (-10000000000000000000000000000 * 10^18 * msg.value * dividendFee_ / 100) + (25 * 10^18 * totalSupply^2) + (1000000000000000000000000 * 10^18 * totalSupply) + 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 100000000000000 * 10^18 <= t
                        require (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply > 0
                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                        require t - 100000000000000 * 10^18 / 5 * 10^9 > totalSupply
                        if not arg1:
                            require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                            if totalSupply <= 0:
                                totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            else:
                                require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                if not msg.value * dividendFee_ / 100 / 20:
                                    require totalSupply
                                    stor14 += 0 / totalSupply
                                else:
                                    require msg.value * dividendFee_ / 100 / 20
                                    require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                    require totalSupply
                                    stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                            balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                        else:
                            if arg1 == msg.sender:
                                require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                if totalSupply <= 0:
                                    totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                else:
                                    require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                    totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                    if not msg.value * dividendFee_ / 100 / 20:
                                        require totalSupply
                                        stor14 += 0 / totalSupply
                                    else:
                                        require msg.value * dividendFee_ / 100 / 20
                                        require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                        require totalSupply
                                        stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                            else:
                                if balanceOf[address(arg1)] < stakingRequirement:
                                    require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    else:
                                        require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                        totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                        if not msg.value * dividendFee_ / 100 / 20:
                                            require totalSupply
                                            stor14 += 0 / totalSupply
                                        else:
                                            require msg.value * dividendFee_ / 100 / 20
                                            require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                            require totalSupply
                                            stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                    balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                else:
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + -(arg3.length % 32) + floor32(arg3.length) + 192 len arg3.length % 32]
                                    _3950 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == _3950:
                                        require (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        balanceOf[stor16] = balanceOf[stor16] + (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b) - (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565)
                                    else:
                                        require referralBalance_[address(arg1)] + (msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565) >= referralBalance_[address(arg1)]
                                        referralBalance_[address(arg1)] += msg.value * dividendFee_ / 100 / 20 * sub_a0cd9565
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        else:
                                            require t - 100000000000000 * 10^18 / 5 * 10^9 >= totalSupply
                                            totalSupply = t - 100000000000000 * 10^18 / 5 * 10^9
                                            if not msg.value * dividendFee_ / 100 / 20:
                                                require totalSupply
                                                stor14 += 0 / totalSupply
                                            else:
                                                require msg.value * dividendFee_ / 100 / 20
                                                require msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 / msg.value * dividendFee_ / 100 / 20 == sub_63c1bea2
                                                require totalSupply
                                                stor14 += msg.value * dividendFee_ / 100 / 20 * sub_63c1bea2 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply
                                        balanceOf[stor16] += msg.value * dividendFee_ / 100 / 20 * sub_476cd51b
                                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (t - 100000000000000 * 10^18 / 5 * 10^9 * stor14) - (totalSupply * stor14) - (msg.value * dividendFee_ / 100 / 20 * sub_476cd51b)
    emit onTokenPurchase(msg.value, (t - 100000000000000 * 10^18 / 5 * 10^9) - totalSupply, msg.sender, arg1);
    return 0
}



}
