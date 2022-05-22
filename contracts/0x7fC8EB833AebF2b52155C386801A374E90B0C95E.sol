contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint8 stor3;
uint256 stor8;
mapping of uint8 stor10;
uint8 stor11;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 6
    stor0.length.field_8 = 'PowH3D' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'P3D' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 100 * 10^18
    stor8 = 0
    stor11 = 1
    require not msg.value
    stor10[0xdd8bb99b13fe33e1c32254dfb8fff3e71193f6b730a89dd33bfe5dedc6d83002] = 1
    stor3[0x8b4da1827932d71759687f925d17f81fc94e3a9d] = 1
    stor3[0x8e0d985f3ec1857bec39b76aaabdea6b31b67d53] = 1
    stor3[0x7563a35d5610ee7c9cd330e255da0e779a644c19] = 1
    stor3[0x215e3c713badb158a457e61f99325bbb5d278e57] = 1
    stor3[0xaff8b5cdcb339eef5e1100597740a394c7b9c6ca] = 1
    stor3[0x8dc6569c28521560eaf1890bc41b2f3fc2010e1b] = 1
    stor3[0xf14be3662fe4c9215c27698166759db6967de94f] = 1
    stor3[0x18e90fc6f70344f53ebd4f6070bf6aa23e2d748c] = 1
    stor3[0x49aae4d923207e80fc91e626bcb6532502264dfc] = 1
    stor3[0x3a0cca1a832644b60730e5d4c27947c5de609d62] = 1
    stor3[0x7ac74fcc1a71b106f12c55ee8f802c9f672ce40c] = 1
    stor3[0x2b219c2178f099de4e9a3667d5ccc2cc64da0763] = 1
    stor3[0x2a04c7335f90a6bd4e9c4f713dd792200e27f2e6] = 1
    stor3[0x35668818ba8f768d4c21787a6f45c86c69394dfd] = 1
    stor3[0xa3120da52e604ac3fc80a63813ef15476e0b6abd] = 1
    stor3[0x924e71ba600372e2410285423f1fe66799b717ec] = 1
    stor3[0x6ed450e062c20f929cb7ee72fcc53e9697980a18] = 1
    stor3[0x18864a6682c8eb79eea5b899f11bc94ef9a85adb] = 1
    stor3[0x9cc1bdc994b7a847705d19106287c0bf94ef04b5] = 1
    stor3[0x6926572813ec1438088963f208c61847df435a74] = 1
    stor3[0xe16ab764a02ae03681e351ac58fe79717c0ee8c6] = 1
    stor3[0x276f4a79f22d1bfc51bd8dc5b27bfd934c823932] = 1
    stor3[0xa2b4ed3e2f4bef09fb35101b76ef4cb9d3eecacf] = 1
    stor3[0x147fc6b04c95bce47d013c8d7a200ee434323669] = 1
    return code.data[3089 len 9116]
}



// =====================  Runtime code  =====================


const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
mapping of uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
uint256 totalSupply;
uint256 stor9;
mapping of uint8 stor10;
uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function onlyAmbassadors() {
    return bool(stor11)
}

function administrators(bytes32 arg1) {
    return bool(stor10[arg1])
}

function stakingRequirement() {
    return stakingRequirement
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function disableInitialStage() {
    require stor10[msg.sender]
    stor11 = 0
}

function setStakingRequirement(uint256 arg1) {
    require stor10[msg.sender]
    stakingRequirement = arg1
}

function setAdministrator(bytes32 arg1, bool arg2) {
    require stor10[msg.sender]
    stor10[arg1] = uint8(arg2)
}

function setName(string arg1) {
    require stor10[msg.sender]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require stor10[msg.sender]
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (stor9 * balanceOf[address(arg1)]) - stor6[address(arg1)]) >> 64)
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)])
    return (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64)
}

function sellPrice() {
    if not totalSupply:
        return (25 * 10^6 * 3600)
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) - ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 10))
}

function buyPrice() {
    if not totalSupply:
        return 11 * 10^10
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 10) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 10))
}

function withdraw() {
    require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    return (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10))
}

function calculateTokensReceived(uint256 arg1) {
    require arg1 / 10 <= arg1
    s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    if 100000000000 * 10^18 <= t:
        return ((t - 100000000000 * 10^18 / 10^10) - totalSupply)
    revert
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10) << 64)
    if totalSupply > 0:
        require totalSupply
        require stor9 + ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10 << 64 / totalSupply) >= stor9
        stor9 += (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10 << 64 / totalSupply
    emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require not stor11
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
        stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
        stor5[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit onWithdraw(((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
    require arg2 / 10 <= arg2
    require 10^10 * ((arg2 / 10) + 10^18)^2 + -(arg2 / 10) - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg2 / 10) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 10)
    require arg2 / 10 <= totalSupply
    totalSupply -= arg2 / 10
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 - (arg2 / 10) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
    stor6[address(msg.sender)] += -1 * stor9 * arg2
    stor6[address(arg1)] = stor6[address(arg1)] + (arg2 * stor9) - (arg2 / 10 * stor9)
    require totalSupply
    require stor9 + ((25 * 10^6 * 3600 * arg2 / 10) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 10) - (10^10 * ((arg2 / 10) + 10^18)^2 + -(arg2 / 10) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply) >= stor9
    stor9 += (25 * 10^6 * 3600 * arg2 / 10) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 10) - (10^10 * ((arg2 / 10) + 10^18)^2 + -(arg2 / 10) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply
    emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
    return 1
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
        require (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
        require balanceOf[address(msg.sender)] <= totalSupply
        totalSupply -= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10) << 64)
        if totalSupply > 0:
            require totalSupply
            require stor9 + ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10 << 64 / totalSupply) >= stor9
            stor9 += (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10 << 64 / totalSupply
        emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10), msg.sender);
    require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}

function _fallback() payable {
    if not stor11:
        stor11 = 0
        require msg.value / 10 / 3 <= msg.value / 10
        require msg.value / 10 <= msg.value
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - msg.value > 20 * 10^18:
            stor11 = 0
            require msg.value / 10 / 3 <= msg.value / 10
            require msg.value / 10 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require bool(stor3[address(msg.sender)]) == 1
            require stor7[address(msg.sender)] + msg.value <= 10^18
            require stor7[address(msg.sender)] + msg.value >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] += msg.value
            require msg.value / 10 / 3 <= msg.value / 10
            require msg.value / 10 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    require msg.value / 10 >= (msg.value / 10) - (msg.value / 10 / 3)
    if totalSupply <= 0:
        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (msg.value / 10 << 64)
    else:
        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
        totalSupply = t - 100000000000 * 10^18 / 10^10
        require totalSupply
        stor9 += msg.value / 10 << 64 / totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * msg.value / 10 << 64 / totalSupply) + (totalSupply * msg.value / 10 << 64 / totalSupply)
    emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, 0);
}

function buy(address arg1) payable {
    if not stor11:
        stor11 = 0
        require msg.value / 10 / 3 <= msg.value / 10
        require msg.value / 10 <= msg.value
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - msg.value > 20 * 10^18:
            stor11 = 0
            require msg.value / 10 / 3 <= msg.value / 10
            require msg.value / 10 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require bool(stor3[address(msg.sender)]) == 1
            require stor7[address(msg.sender)] + msg.value <= 10^18
            require stor7[address(msg.sender)] + msg.value >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] += msg.value
            require msg.value / 10 / 3 <= msg.value / 10
            require msg.value / 10 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    if not arg1:
        require msg.value / 10 >= (msg.value / 10) - (msg.value / 10 / 3)
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (msg.value / 10 << 64)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require totalSupply
            stor9 += msg.value / 10 << 64 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * msg.value / 10 << 64 / totalSupply) + (totalSupply * msg.value / 10 << 64 / totalSupply)
    else:
        if arg1 == msg.sender:
            require msg.value / 10 >= (msg.value / 10) - (msg.value / 10 / 3)
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (msg.value / 10 << 64)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require totalSupply
                stor9 += msg.value / 10 << 64 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * msg.value / 10 << 64 / totalSupply) + (totalSupply * msg.value / 10 << 64 / totalSupply)
        else:
            if balanceOf[address(arg1)] < stakingRequirement:
                require msg.value / 10 >= (msg.value / 10) - (msg.value / 10 / 3)
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (msg.value / 10 << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor9 += msg.value / 10 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * msg.value / 10 << 64 / totalSupply) + (totalSupply * msg.value / 10 << 64 / totalSupply)
            else:
                require stor5[address(arg1)] + (msg.value / 10 / 3) >= stor5[address(arg1)]
                stor5[address(arg1)] += msg.value / 10 / 3
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((msg.value / 10) - (msg.value / 10 / 3) << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor9 += (msg.value / 10) - (msg.value / 10 / 3) << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (msg.value / 10) - (msg.value / 10 / 3) << 64 / totalSupply) + (totalSupply * (msg.value / 10) - (msg.value / 10 / 3) << 64 / totalSupply)
    emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, arg1);
    return 0
}

function reinvest() {
    require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    if not stor11:
        stor11 = 0
        require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 / 3 <= (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10
        require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 <= (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) - stor5[address(msg.sender)] > 20 * 10^18:
            stor11 = 0
            require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 / 3 <= (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10
            require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 <= (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require bool(stor3[address(msg.sender)]) == 1
            require stor7[address(msg.sender)] + (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] <= 10^18
            require stor7[address(msg.sender)] + (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] = stor7[address(msg.sender)] + (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 / 3 <= (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10
            require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 <= (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 >= ((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10) - ((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 / 3)
    if totalSupply <= 0:
        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 << 64)
    else:
        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
        totalSupply = t - 100000000000 * 10^18 / 10^10
        require totalSupply
        stor9 += (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 << 64 / totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 << 64 / totalSupply) + (totalSupply * (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 10 << 64 / totalSupply)
    emit onTokenPurchase((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, 0);
    emit onReinvestment((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender);
}



}
