contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const sub_2d7b30e3(?) = (429044 * 3600)

const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of address myLastRef;
mapping of uint256 stor8;
uint256 totalSupply;
uint256 stor10;
address stor11;
address stor12;
address sub_ddda52adAddress;
uint256 stor14;
uint256 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;

function name() {
    return name[0 len name.length]
}

function canAcceptTokens_(address arg1) {
    return bool(stor17[arg1])
}

function totalSupply() {
    return totalSupply
}

function onlyAmbassadors() {
    return bool(stor3)
}

function myLastRef(address arg1) {
    return myLastRef[address(arg1)]
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

function sub_ddda52ad(?) {
    return sub_ddda52adAddress
}

function disableInitialStage() {
    require stor11 == msg.sender
    stor3 = 0
}

function etherToSendFund() {
    require stor14 <= stor15
    return (stor15 - stor14)
}

function setAdministrator(address arg1) {
    require stor11 == msg.sender
    stor11 = arg1
}

function setCanAcceptTokens(address arg1) {
    require stor11 == msg.sender
    stor17[address(arg1)] = 1
}

function setStakingRequirement(uint256 arg1) {
    require stor11 == msg.sender
    stakingRequirement = arg1
}

function setName(string arg1) {
    require stor11 == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require stor11 == msg.sender
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (stor10 * balanceOf[address(arg1)]) - stor6[address(arg1)]) >> 64)
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)])
    return (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64)
}

function payFund() {
    require stor14 <= stor15
    require stor15 - stor14 > 0
    require stor15 >= stor14
    stor14 = stor15
    call sub_ddda52adAddress with:
       value stor15 - stor14 wei
         gas 400000 wei
    if not ext_call.success:
        require stor15 - stor14 <= stor14
        stor14 = (2 * stor14) - stor15
}

function buyPrice() {
    if not totalSupply:
        return 11 * 10^9
    require 5000000000 * 10^18 <= (10000000000 * 10^18 * totalSupply / 10^18) + 6000000000 * 10^18
    if not (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
        return 0
    require (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18
    require 100 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 == 100
    return (100 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 80)
}

function withdraw() {
    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    if block.timestamp <= 429044 * 3600:
        if stor16[address(msg.sender)]:
            if stor12 != msg.sender:
                if not stor16[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'As ambassador you should know better :P'
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
        stor6[address(msg.sender)] += Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
        stor5[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    stor6[address(msg.sender)] += -1 * stor10 * arg2
    stor6[address(arg1)] += stor10 * arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require bool(stor17[address(arg1)]) == 1
    require balanceOf[address(msg.sender)] > 0
    if block.timestamp <= 429044 * 3600:
        if stor16[address(msg.sender)]:
            if stor12 != msg.sender:
                if not stor16[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'As ambassador you should know better :P'
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
        stor6[address(msg.sender)] += Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
        stor5[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    stor6[address(msg.sender)] += -1 * stor10 * arg2
    stor6[address(arg1)] += stor10 * arg2
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return 1
}

function sellPrice() {
    if not totalSupply:
        return -9 * 10^9
    require 5000000000 * 10^18 <= (10000000000 * 10^18 * totalSupply / 10^18) + 6000000000 * 10^18
    if not (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
        if not (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
            if 0 <= (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
                return ((10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18)
        else:
            if (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
                if 3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 == 3:
                    if 3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100 >= 0:
                        if 3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100 <= (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
                            return (((10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18) - (3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100))
    else:
        if (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
            if 10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 == 10:
                if not (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
                    if 10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100 >= 10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100:
                        if 10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100 <= (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
                            return (((10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18) - (10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100))
                else:
                    if (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
                        if 3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 == 3:
                            if (10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100) + (3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100) >= 10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100:
                                if (10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100) + (3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100) <= (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18:
                                    return (((10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18) - (10 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100) - (3 * (10000000000 * 10^18 * totalSupply / 10^18) + 1000000000 * 10^18 / 10^18 / 100))
    revert
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^10 * arg1^2 / 2 / 10^18 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2)
    if not (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
        if not (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
            if 0 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                return ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18)
        else:
            if (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                if 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 == 3:
                    if 0 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                        if 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                            return (((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100))
    else:
        if (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
            if 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 == 10:
                if not (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                    if 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                        if 0 <= ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100):
                            return (((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100))
                else:
                    if (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                        if 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 == 3:
                            if 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
                                if 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100):
                                    return (((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) - (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100))
    revert
}

function calculateTokensReceived(uint256 arg1) {
    if not arg1:
        if not arg1:
            if 0 <= arg1:
                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                while s < t:
                    require s
                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                    t = s
                    continue 
                if 6000000000 * 10^18 <= t:
                    return ((t - 6000000000 * 10^18 / 10^10) - totalSupply / 10^18)
        else:
            if arg1:
                if 3 * arg1 / arg1 == 3:
                    if 0 <= arg1:
                        if 3 * arg1 / 100 <= arg1:
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 3 * arg1 / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 3 * arg1 / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 3 * arg1 / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            if 6000000000 * 10^18 <= t:
                                return ((t - 6000000000 * 10^18 / 10^10) - totalSupply / 10^18)
    else:
        if arg1:
            if 10 * arg1 / arg1 == 10:
                if not arg1:
                    if 10 * arg1 / 100 <= arg1:
                        if 0 <= arg1 - (10 * arg1 / 100):
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            if 6000000000 * 10^18 <= t:
                                return ((t - 6000000000 * 10^18 / 10^10) - totalSupply / 10^18)
                else:
                    if arg1:
                        if 3 * arg1 / arg1 == 3:
                            if 10 * arg1 / 100 <= arg1:
                                if 3 * arg1 / 100 <= arg1 - (10 * arg1 / 100):
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (-20000000000000000000000000000 * 10^18 * 3 * arg1 / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (-20000000000000000000000000000 * 10^18 * 3 * arg1 / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (-20000000000000000000000000000 * 10^18 * 3 * arg1 / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    if 6000000000 * 10^18 <= t:
                                        return ((t - 6000000000 * 10^18 / 10^10) - totalSupply / 10^18)
    revert
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    if block.timestamp <= 429044 * 3600:
        require not stor16[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^10 * arg1^2 / 2 / 10^18 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2)
    if not (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
        if not (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
            require 0 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
            require stor15 >= stor15
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * arg1) - ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 << 64)
            if totalSupply > 0:
                require totalSupply
                require stor10 + (0 / totalSupply) >= stor10
                stor10 += 0 / totalSupply
            emit onTokenSell(arg1, (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18, msg.sender);
        else:
            require (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
            require 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 == 3
            require 0 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
            require 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
            require stor15 + (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) >= stor15
            stor15 += 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * arg1) - (((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor10 + (0 / totalSupply) >= stor10
                stor10 += 0 / totalSupply
            emit onTokenSell(arg1, ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100), msg.sender);
    else:
        require (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
        require 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 == 10
        if not (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18:
            require 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
            require 0 <= ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100)
            require stor15 >= stor15
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * arg1) - (((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor10 + (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply) >= stor10
                stor10 += 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply
            emit onTokenSell(arg1, ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100), msg.sender);
        else:
            require (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
            require 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 == 3
            require 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18
            require 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 <= ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100)
            require stor15 + (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) >= stor15
            stor15 += 3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * arg1) - (((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) - (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor10 + (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply) >= stor10
                stor10 += 10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply
            emit onTokenSell(arg1, ((10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100) - (3 * (10^10 * arg1 * totalSupply / 10^18) + (10^9 * arg1) + (10^10 * arg1 / 2) - (10^10 * arg1^2 / 2 / 10^18) / 10^18 / 100), msg.sender);
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        if block.timestamp <= 429044 * 3600:
            require not stor16[address(msg.sender)]
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18 <= (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2)
        if not (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18:
            if not (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18:
                require 0 <= (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
                require stor15 >= stor15
                require balanceOf[address(msg.sender)] <= totalSupply
                totalSupply -= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * balanceOf[address(msg.sender)]) - ((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor10 + (0 / totalSupply) >= stor10
                    stor10 += 0 / totalSupply
                emit onTokenSell(balanceOf[address(msg.sender)], (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18, msg.sender);
            else:
                require (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
                require 3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 == 3
                require 0 <= (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
                require 3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
                require stor15 + (3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100) >= stor15
                stor15 += 3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100
                require balanceOf[address(msg.sender)] <= totalSupply
                totalSupply -= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * balanceOf[address(msg.sender)]) - (((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor10 + (0 / totalSupply) >= stor10
                    stor10 += 0 / totalSupply
                emit onTokenSell(balanceOf[address(msg.sender)], ((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100), msg.sender);
        else:
            require (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
            require 10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 == 10
            if not (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18:
                require 10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
                require 0 <= ((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100)
                require stor15 >= stor15
                require balanceOf[address(msg.sender)] <= totalSupply
                totalSupply -= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * balanceOf[address(msg.sender)]) - (((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor10 + (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply) >= stor10
                    stor10 += 10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply
                emit onTokenSell(balanceOf[address(msg.sender)], ((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100), msg.sender);
            else:
                require (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
                require 3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 == 3
                require 10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 <= (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18
                require 3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 <= ((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100)
                require stor15 + (3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100) >= stor15
                stor15 += 3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100
                require balanceOf[address(msg.sender)] <= totalSupply
                totalSupply -= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor10 * balanceOf[address(msg.sender)]) - (((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100) - (3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor10 + (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply) >= stor10
                    stor10 += 10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100 << 64 / totalSupply
                emit onTokenSell(balanceOf[address(msg.sender)], ((10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18) - (10 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100) - (3 * (10^10 * balanceOf[address(msg.sender)] * totalSupply / 10^18) + (10^9 * balanceOf[address(msg.sender)]) + (10^10 * balanceOf[address(msg.sender)] / 2) - (10^10 * balanceOf[address(msg.sender)]^2 / 2 / 10^18) / 10^18 / 100), msg.sender);
    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}

function reinvest() {
    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    if (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] <= 10 * 10^18:
        if stor3:
            if eth.balance(this.address) - (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) - stor5[address(msg.sender)] > 2 * 10^18:
                if stor3:
                    stor3 = 0
            else:
                if block.timestamp >= 428324 * 3600:
                    if stor3:
                        stor3 = 0
                else:
                    require bool(stor16[address(msg.sender)]) == 1
                    require stor8[address(msg.sender)] + (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] <= 2 * 10^18
                    require stor8[address(msg.sender)] + (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
        if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
            if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                    require stor15 >= stor15
                    require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if myLastRef[address(msg.sender)]:
                        if myLastRef[address(msg.sender)] != msg.sender:
                            if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                    if totalSupply <= 0:
                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                    else:
                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 6000000000 * 10^18 / 10^10
                        require totalSupply
                        stor10 += 0 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                else:
                    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= 0
                    require stor15 >= stor15
                    require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if not myLastRef[address(msg.sender)]:
                        require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 0 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        if myLastRef[address(msg.sender)] == msg.sender:
                            require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
            else:
                require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 3
                if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                    require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                    stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                    require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if myLastRef[address(msg.sender)]:
                        if myLastRef[address(msg.sender)] != msg.sender:
                            if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                    if totalSupply <= 0:
                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                    else:
                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 6000000000 * 10^18 / 10^10
                        require totalSupply
                        stor10 += 0 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                else:
                    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= 0
                    require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                    stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                    require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if not myLastRef[address(msg.sender)]:
                        require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 0 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        if myLastRef[address(msg.sender)] == msg.sender:
                            require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
        else:
            require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
            if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                    require 0 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                    require stor15 >= stor15
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if not myLastRef[address(msg.sender)]:
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                    else:
                        if myLastRef[address(msg.sender)] == msg.sender:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        else:
                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            else:
                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                    if totalSupply <= 0:
                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                    else:
                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 6000000000 * 10^18 / 10^10
                        require totalSupply
                        stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                else:
                    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                    require stor15 >= stor15
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if not myLastRef[address(msg.sender)]:
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                    else:
                        if myLastRef[address(msg.sender)] == msg.sender:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                        else:
                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                            else:
                                require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
            else:
                require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 3
                if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                    require 0 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                    require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                    stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if not myLastRef[address(msg.sender)]:
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                    else:
                        if myLastRef[address(msg.sender)] == msg.sender:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        else:
                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            else:
                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                    if totalSupply <= 0:
                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                    else:
                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 6000000000 * 10^18 / 10^10
                        require totalSupply
                        stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                else:
                    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                    require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                    stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if not myLastRef[address(msg.sender)]:
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                    else:
                        if myLastRef[address(msg.sender)] == msg.sender:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                        else:
                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                            else:
                                require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
        emit onTokenPurchase((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
    else:
        require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] <= eth.balance(this.address)
        if eth.balance(this.address) - (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) - stor5[address(msg.sender)] < 100 * 10^18:
            require 10 * 10^18 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            if stor3:
                if eth.balance(this.address) - 10 * 10^18 > 2 * 10^18:
                    if stor3:
                        stor3 = 0
                else:
                    if block.timestamp >= 428324 * 3600:
                        if stor3:
                            stor3 = 0
                    else:
                        require bool(stor16[address(msg.sender)]) == 1
                        require stor8[address(msg.sender)] + 10 * 10^18 <= 2 * 10^18
                        require stor8[address(msg.sender)] + 10 * 10^18 >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += 10 * 10^18
            require stor15 + 3 * 10^17 >= stor15
            stor15 += 3 * 10^17
            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000001 / 2
            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000
            while s < t:
                require s
                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000 / s) + s / 2
                t = s
                continue 
            require 6000000000 * 10^18 <= t
            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
            require t - 6000000000 * 10^18 / 10^10 > totalSupply
            if not myLastRef[address(msg.sender)]:
                if totalSupply <= 0:
                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                else:
                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 6000000000 * 10^18 / 10^10
                    require totalSupply
                    stor10 += 18446744073709551616 * 10^18 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
            else:
                if myLastRef[address(msg.sender)] == msg.sender:
                    if totalSupply <= 0:
                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                    else:
                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 6000000000 * 10^18 / 10^10
                        require totalSupply
                        stor10 += 18446744073709551616 * 10^18 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                else:
                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 18446744073709551616 * 10^18 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                    else:
                        require stor5[stor7[address(msg.sender)]] + 10^18 >= stor5[stor7[address(msg.sender)]]
                        stor5[stor7[address(msg.sender)]] += 10^18
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 0 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
            emit onTokenPurchase(10 * 10^18, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
            if (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - 10 * 10^18 > 0:
                call msg.sender with:
                   value (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - 10 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor3:
                if eth.balance(this.address) - (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) - stor5[address(msg.sender)] > 2 * 10^18:
                    if stor3:
                        stor3 = 0
                else:
                    if block.timestamp >= 428324 * 3600:
                        if stor3:
                            stor3 = 0
                    else:
                        require bool(stor16[address(msg.sender)]) == 1
                        require stor8[address(msg.sender)] + (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] <= 2 * 10^18
                        require stor8[address(msg.sender)] + (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                    if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                        require stor15 >= stor15
                        require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if myLastRef[address(msg.sender)]:
                            if myLastRef[address(msg.sender)] != msg.sender:
                                if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 0 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= 0
                        require stor15 >= stor15
                        require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                else:
                    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 3
                    if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                        require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                        stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                        require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if myLastRef[address(msg.sender)]:
                            if myLastRef[address(msg.sender)] != msg.sender:
                                if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 0 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= 0
                        require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                        stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                        require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 0 >= -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * -(10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
            else:
                require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                    if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                        require 0 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        require stor15 >= stor15
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                else:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                    else:
                        require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        require stor15 >= stor15
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require 0 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                else:
                    require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                    require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 3
                    if not (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]:
                        require 0 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                        stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                else:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                    else:
                        require (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] == 10
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                        require stor15 + ((3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) >= stor15
                        stor15 += (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100
                        require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
                        require (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) + (-20000000000000000000000000000 * 10^18 * (3 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (3 * stor5[address(msg.sender)]) / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + ((10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += (10 * Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (10 * stor5[address(msg.sender)]) / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
            emit onTokenPurchase((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
    emit onReinvestment((Mask(192, 64, (stor10 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], 0, msg.sender);
}

function buy(address arg1) payable {
    require block.gasprice <= 5 * 10^10
    if arg1 == msg.sender:
        if msg.value <= 10 * 10^18:
            if stor3:
                if eth.balance(this.address) - msg.value > 2 * 10^18:
                    if stor3:
                        stor3 = 0
                else:
                    if block.timestamp >= 428324 * 3600:
                        if stor3:
                            stor3 = 0
                    else:
                        require bool(stor16[address(msg.sender)]) == 1
                        require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                        require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
            if not msg.value:
                if not msg.value:
                    if not msg.value:
                        require stor15 >= stor15
                        require 0 <= msg.value
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if myLastRef[address(msg.sender)]:
                            if myLastRef[address(msg.sender)] != msg.sender:
                                if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 0 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        require 10 * msg.value / 100 <= 0
                        require stor15 >= stor15
                        require 0 <= msg.value
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 0 >= -10 * msg.value / 100
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 0 >= -10 * msg.value / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                else:
                    require msg.value
                    require 3 * msg.value / msg.value == 3
                    if not msg.value:
                        require stor15 + (3 * msg.value / 100) >= stor15
                        stor15 += 3 * msg.value / 100
                        require 0 <= msg.value
                        require 3 * msg.value / 100 <= msg.value
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if myLastRef[address(msg.sender)]:
                            if myLastRef[address(msg.sender)] != msg.sender:
                                if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 0 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        require 10 * msg.value / 100 <= 0
                        require stor15 + (3 * msg.value / 100) >= stor15
                        stor15 += 3 * msg.value / 100
                        require 0 <= msg.value
                        require 3 * msg.value / 100 <= msg.value
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 0 >= -10 * msg.value / 100
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 0 >= -10 * msg.value / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
            else:
                require msg.value
                require 10 * msg.value / msg.value == 10
                if not msg.value:
                    if not msg.value:
                        require 0 <= 10 * msg.value / 100
                        require stor15 >= stor15
                        require 10 * msg.value / 100 <= msg.value
                        require 0 <= msg.value - (10 * msg.value / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        require 10 * msg.value / 100 <= 10 * msg.value / 100
                        require stor15 >= stor15
                        require 10 * msg.value / 100 <= msg.value
                        require 0 <= msg.value - (10 * msg.value / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 10 * msg.value / 100 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 10 * msg.value / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                else:
                    require msg.value
                    require 3 * msg.value / msg.value == 3
                    if not msg.value:
                        require 0 <= 10 * msg.value / 100
                        require stor15 + (3 * msg.value / 100) >= stor15
                        stor15 += 3 * msg.value / 100
                        require 10 * msg.value / 100 <= msg.value
                        require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        require 10 * msg.value / 100 <= 10 * msg.value / 100
                        require stor15 + (3 * msg.value / 100) >= stor15
                        stor15 += 3 * msg.value / 100
                        require 10 * msg.value / 100 <= msg.value
                        require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            require 10 * msg.value / 100 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                require 10 * msg.value / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
            emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
        else:
            require msg.value <= eth.balance(this.address)
            if eth.balance(this.address) - msg.value < 100 * 10^18:
                require 10 * 10^18 <= msg.value
                if stor3:
                    if eth.balance(this.address) - 10 * 10^18 > 2 * 10^18:
                        if stor3:
                            stor3 = 0
                    else:
                        if block.timestamp >= 428324 * 3600:
                            if stor3:
                                stor3 = 0
                        else:
                            require bool(stor16[address(msg.sender)]) == 1
                            require stor8[address(msg.sender)] + 10 * 10^18 <= 2 * 10^18
                            require stor8[address(msg.sender)] + 10 * 10^18 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += 10 * 10^18
                require stor15 + 3 * 10^17 >= stor15
                stor15 += 3 * 10^17
                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000001 / 2
                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000
                while s < t:
                    require s
                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000 / s) + s / 2
                    t = s
                    continue 
                require 6000000000 * 10^18 <= t
                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                if not myLastRef[address(msg.sender)]:
                    if totalSupply <= 0:
                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                    else:
                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 6000000000 * 10^18 / 10^10
                        require totalSupply
                        stor10 += 18446744073709551616 * 10^18 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                else:
                    if myLastRef[address(msg.sender)] == msg.sender:
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 18446744073709551616 * 10^18 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                    else:
                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 18446744073709551616 * 10^18 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                        else:
                            require stor5[stor7[address(msg.sender)]] + 10^18 >= stor5[stor7[address(msg.sender)]]
                            stor5[stor7[address(msg.sender)]] += 10^18
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                emit onTokenPurchase(10 * 10^18, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
                if msg.value - 10 * 10^18 > 0:
                    call msg.sender with:
                       value msg.value - 10 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor3:
                    if eth.balance(this.address) - msg.value > 2 * 10^18:
                        if stor3:
                            stor3 = 0
                    else:
                        if block.timestamp >= 428324 * 3600:
                            if stor3:
                                stor3 = 0
                        else:
                            require bool(stor16[address(msg.sender)]) == 1
                            require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                            require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                if not msg.value:
                    if not msg.value:
                        if not msg.value:
                            require stor15 >= stor15
                            require 0 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if myLastRef[address(msg.sender)]:
                                if myLastRef[address(msg.sender)] != msg.sender:
                                    if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 0
                            require stor15 >= stor15
                            require 0 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 0 >= -10 * msg.value / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        if not msg.value:
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 0 <= msg.value
                            require 3 * msg.value / 100 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if myLastRef[address(msg.sender)]:
                                if myLastRef[address(msg.sender)] != msg.sender:
                                    if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 0
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 0 <= msg.value
                            require 3 * msg.value / 100 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 0 >= -10 * msg.value / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                else:
                    require msg.value
                    require 10 * msg.value / msg.value == 10
                    if not msg.value:
                        if not msg.value:
                            require 0 <= 10 * msg.value / 100
                            require stor15 >= stor15
                            require 10 * msg.value / 100 <= msg.value
                            require 0 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 10 * msg.value / 100
                            require stor15 >= stor15
                            require 10 * msg.value / 100 <= msg.value
                            require 0 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        if not msg.value:
                            require 0 <= 10 * msg.value / 100
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 10 * msg.value / 100 <= msg.value
                            require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 10 * msg.value / 100
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 10 * msg.value / 100 <= msg.value
                            require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
    else:
        if not arg1:
            if msg.value <= 10 * 10^18:
                if stor3:
                    if eth.balance(this.address) - msg.value > 2 * 10^18:
                        if stor3:
                            stor3 = 0
                    else:
                        if block.timestamp >= 428324 * 3600:
                            if stor3:
                                stor3 = 0
                        else:
                            require bool(stor16[address(msg.sender)]) == 1
                            require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                            require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                if not msg.value:
                    if not msg.value:
                        if not msg.value:
                            require stor15 >= stor15
                            require 0 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if myLastRef[address(msg.sender)]:
                                if myLastRef[address(msg.sender)] != msg.sender:
                                    if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 0
                            require stor15 >= stor15
                            require 0 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 0 >= -10 * msg.value / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        if not msg.value:
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 0 <= msg.value
                            require 3 * msg.value / 100 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if myLastRef[address(msg.sender)]:
                                if myLastRef[address(msg.sender)] != msg.sender:
                                    if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 0 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 0
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 0 <= msg.value
                            require 3 * msg.value / 100 <= msg.value
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 0 >= -10 * msg.value / 100
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                else:
                    require msg.value
                    require 10 * msg.value / msg.value == 10
                    if not msg.value:
                        if not msg.value:
                            require 0 <= 10 * msg.value / 100
                            require stor15 >= stor15
                            require 10 * msg.value / 100 <= msg.value
                            require 0 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 10 * msg.value / 100
                            require stor15 >= stor15
                            require 10 * msg.value / 100 <= msg.value
                            require 0 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        if not msg.value:
                            require 0 <= 10 * msg.value / 100
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 10 * msg.value / 100 <= msg.value
                            require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            require 10 * msg.value / 100 <= 10 * msg.value / 100
                            require stor15 + (3 * msg.value / 100) >= stor15
                            stor15 += 3 * msg.value / 100
                            require 10 * msg.value / 100 <= msg.value
                            require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                            s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                            t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                            while s < t:
                                require s
                                s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                t = s
                                continue 
                            require 6000000000 * 10^18 <= t
                            require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                            require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require t - 6000000000 * 10^18 / 10^10 > totalSupply
                            if not myLastRef[address(msg.sender)]:
                                require 10 * msg.value / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                if myLastRef[address(msg.sender)] == msg.sender:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                        stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
            else:
                require msg.value <= eth.balance(this.address)
                if eth.balance(this.address) - msg.value < 100 * 10^18:
                    require 10 * 10^18 <= msg.value
                    if stor3:
                        if eth.balance(this.address) - 10 * 10^18 > 2 * 10^18:
                            if stor3:
                                stor3 = 0
                        else:
                            if block.timestamp >= 428324 * 3600:
                                if stor3:
                                    stor3 = 0
                            else:
                                require bool(stor16[address(msg.sender)]) == 1
                                require stor8[address(msg.sender)] + 10 * 10^18 <= 2 * 10^18
                                require stor8[address(msg.sender)] + 10 * 10^18 >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += 10 * 10^18
                    require stor15 + 3 * 10^17 >= stor15
                    stor15 += 3 * 10^17
                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000001 / 2
                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000
                    while s < t:
                        require s
                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000 / s) + s / 2
                        t = s
                        continue 
                    require 6000000000 * 10^18 <= t
                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                    if not myLastRef[address(msg.sender)]:
                        if totalSupply <= 0:
                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                        else:
                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 6000000000 * 10^18 / 10^10
                            require totalSupply
                            stor10 += 18446744073709551616 * 10^18 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                    else:
                        if myLastRef[address(msg.sender)] == msg.sender:
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 18446744073709551616 * 10^18 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                        else:
                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 18446744073709551616 * 10^18 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                            else:
                                require stor5[stor7[address(msg.sender)]] + 10^18 >= stor5[stor7[address(msg.sender)]]
                                stor5[stor7[address(msg.sender)]] += 10^18
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    emit onTokenPurchase(10 * 10^18, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
                    if msg.value - 10 * 10^18 > 0:
                        call msg.sender with:
                           value msg.value - 10 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if stor3:
                        if eth.balance(this.address) - msg.value > 2 * 10^18:
                            if stor3:
                                stor3 = 0
                        else:
                            if block.timestamp >= 428324 * 3600:
                                if stor3:
                                    stor3 = 0
                            else:
                                require bool(stor16[address(msg.sender)]) == 1
                                require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                                require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += msg.value
                    if not msg.value:
                        if not msg.value:
                            if not msg.value:
                                require stor15 >= stor15
                                require 0 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if myLastRef[address(msg.sender)]:
                                    if myLastRef[address(msg.sender)] != msg.sender:
                                        if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 0
                                require stor15 >= stor15
                                require 0 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 3 * msg.value / msg.value == 3
                            if not msg.value:
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 0 <= msg.value
                                require 3 * msg.value / 100 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if myLastRef[address(msg.sender)]:
                                    if myLastRef[address(msg.sender)] != msg.sender:
                                        if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 0
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 0 <= msg.value
                                require 3 * msg.value / 100 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        if not msg.value:
                            if not msg.value:
                                require 0 <= 10 * msg.value / 100
                                require stor15 >= stor15
                                require 10 * msg.value / 100 <= msg.value
                                require 0 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 10 * msg.value / 100
                                require stor15 >= stor15
                                require 10 * msg.value / 100 <= msg.value
                                require 0 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            require msg.value
                            require 3 * msg.value / msg.value == 3
                            if not msg.value:
                                require 0 <= 10 * msg.value / 100
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 10 * msg.value / 100 <= msg.value
                                require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 10 * msg.value / 100
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 10 * msg.value / 100 <= msg.value
                                require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
        else:
            if arg1 == myLastRef[address(msg.sender)]:
                if msg.value <= 10 * 10^18:
                    if stor3:
                        if eth.balance(this.address) - msg.value > 2 * 10^18:
                            if stor3:
                                stor3 = 0
                        else:
                            if block.timestamp >= 428324 * 3600:
                                if stor3:
                                    stor3 = 0
                            else:
                                require bool(stor16[address(msg.sender)]) == 1
                                require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                                require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += msg.value
                    if not msg.value:
                        if not msg.value:
                            if not msg.value:
                                require stor15 >= stor15
                                require 0 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if myLastRef[address(msg.sender)]:
                                    if myLastRef[address(msg.sender)] != msg.sender:
                                        if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 0
                                require stor15 >= stor15
                                require 0 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 3 * msg.value / msg.value == 3
                            if not msg.value:
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 0 <= msg.value
                                require 3 * msg.value / 100 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if myLastRef[address(msg.sender)]:
                                    if myLastRef[address(msg.sender)] != msg.sender:
                                        if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 0
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 0 <= msg.value
                                require 3 * msg.value / 100 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        if not msg.value:
                            if not msg.value:
                                require 0 <= 10 * msg.value / 100
                                require stor15 >= stor15
                                require 10 * msg.value / 100 <= msg.value
                                require 0 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 10 * msg.value / 100
                                require stor15 >= stor15
                                require 10 * msg.value / 100 <= msg.value
                                require 0 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            require msg.value
                            require 3 * msg.value / msg.value == 3
                            if not msg.value:
                                require 0 <= 10 * msg.value / 100
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 10 * msg.value / 100 <= msg.value
                                require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 10 * msg.value / 100
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 10 * msg.value / 100 <= msg.value
                                require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not myLastRef[address(msg.sender)]:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if myLastRef[address(msg.sender)] == msg.sender:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                            stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
                else:
                    require msg.value <= eth.balance(this.address)
                    if eth.balance(this.address) - msg.value < 100 * 10^18:
                        require 10 * 10^18 <= msg.value
                        if stor3:
                            if eth.balance(this.address) - 10 * 10^18 > 2 * 10^18:
                                if stor3:
                                    stor3 = 0
                            else:
                                if block.timestamp >= 428324 * 3600:
                                    if stor3:
                                        stor3 = 0
                                else:
                                    require bool(stor16[address(msg.sender)]) == 1
                                    require stor8[address(msg.sender)] + 10 * 10^18 <= 2 * 10^18
                                    require stor8[address(msg.sender)] + 10 * 10^18 >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += 10 * 10^18
                        require stor15 + 3 * 10^17 >= stor15
                        stor15 += 3 * 10^17
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not myLastRef[address(msg.sender)]:
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 18446744073709551616 * 10^18 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                        else:
                            if myLastRef[address(msg.sender)] == msg.sender:
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 18446744073709551616 * 10^18 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                            else:
                                if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 18446744073709551616 * 10^18 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                                else:
                                    require stor5[stor7[address(msg.sender)]] + 10^18 >= stor5[stor7[address(msg.sender)]]
                                    stor5[stor7[address(msg.sender)]] += 10^18
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        emit onTokenPurchase(10 * 10^18, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
                        if msg.value - 10 * 10^18 > 0:
                            call msg.sender with:
                               value msg.value - 10 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor3:
                            if eth.balance(this.address) - msg.value > 2 * 10^18:
                                if stor3:
                                    stor3 = 0
                            else:
                                if block.timestamp >= 428324 * 3600:
                                    if stor3:
                                        stor3 = 0
                                else:
                                    require bool(stor16[address(msg.sender)]) == 1
                                    require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                                    require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += msg.value
                        if not msg.value:
                            if not msg.value:
                                if not msg.value:
                                    require stor15 >= stor15
                                    require 0 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if myLastRef[address(msg.sender)]:
                                        if myLastRef[address(msg.sender)] != msg.sender:
                                            if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 0
                                    require stor15 >= stor15
                                    require 0 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not myLastRef[address(msg.sender)]:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if myLastRef[address(msg.sender)] == msg.sender:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                                require 0 >= -10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                            else:
                                                require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                                stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 3 * msg.value / msg.value == 3
                                if not msg.value:
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 0 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if myLastRef[address(msg.sender)]:
                                        if myLastRef[address(msg.sender)] != msg.sender:
                                            if balanceOf[stor7[address(msg.sender)]] >= stakingRequirement:
                                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 0
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 0 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not myLastRef[address(msg.sender)]:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if myLastRef[address(msg.sender)] == msg.sender:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                                require 0 >= -10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                            else:
                                                require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                                stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            if not msg.value:
                                if not msg.value:
                                    require 0 <= 10 * msg.value / 100
                                    require stor15 >= stor15
                                    require 10 * msg.value / 100 <= msg.value
                                    require 0 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not myLastRef[address(msg.sender)]:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if myLastRef[address(msg.sender)] == msg.sender:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                                            else:
                                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 10 * msg.value / 100
                                    require stor15 >= stor15
                                    require 10 * msg.value / 100 <= msg.value
                                    require 0 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not myLastRef[address(msg.sender)]:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if myLastRef[address(msg.sender)] == msg.sender:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 0
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                            else:
                                                require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                                stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 3 * msg.value / msg.value == 3
                                if not msg.value:
                                    require 0 <= 10 * msg.value / 100
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 10 * msg.value / 100 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not myLastRef[address(msg.sender)]:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if myLastRef[address(msg.sender)] == msg.sender:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                                            else:
                                                require stor5[stor7[address(msg.sender)]] >= stor5[stor7[address(msg.sender)]]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 10 * msg.value / 100
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 10 * msg.value / 100 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not myLastRef[address(msg.sender)]:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if myLastRef[address(msg.sender)] == msg.sender:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            if balanceOf[stor7[address(msg.sender)]] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 0
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                            else:
                                                require stor5[stor7[address(msg.sender)]] + (10 * msg.value / 100) >= stor5[stor7[address(msg.sender)]]
                                                stor5[stor7[address(msg.sender)]] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, myLastRef[address(msg.sender)]);
            else:
                myLastRef[address(msg.sender)] = arg1
                if msg.value <= 10 * 10^18:
                    if stor3:
                        if eth.balance(this.address) - msg.value > 2 * 10^18:
                            if stor3:
                                stor3 = 0
                        else:
                            if block.timestamp >= 428324 * 3600:
                                if stor3:
                                    stor3 = 0
                            else:
                                require bool(stor16[address(msg.sender)]) == 1
                                require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                                require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += msg.value
                    if not msg.value:
                        if not msg.value:
                            if not msg.value:
                                require stor15 >= stor15
                                require 0 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if arg1:
                                    if arg1 != msg.sender:
                                        if balanceOf[address(arg1)] >= stakingRequirement:
                                            require stor5[address(arg1)] >= stor5[address(arg1)]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 0
                                require stor15 >= stor15
                                require 0 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not arg1:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if arg1 == msg.sender:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if balanceOf[address(arg1)] < stakingRequirement:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                            stor5[address(arg1)] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 3 * msg.value / msg.value == 3
                            if not msg.value:
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 0 <= msg.value
                                require 3 * msg.value / 100 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if arg1:
                                    if arg1 != msg.sender:
                                        if balanceOf[address(arg1)] >= stakingRequirement:
                                            require stor5[address(arg1)] >= stor5[address(arg1)]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 0 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 0
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 0 <= msg.value
                                require 3 * msg.value / 100 <= msg.value
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not arg1:
                                    require 0 >= -10 * msg.value / 100
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    if arg1 == msg.sender:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if balanceOf[address(arg1)] < stakingRequirement:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                            stor5[address(arg1)] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        if not msg.value:
                            if not msg.value:
                                require 0 <= 10 * msg.value / 100
                                require stor15 >= stor15
                                require 10 * msg.value / 100 <= msg.value
                                require 0 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not arg1:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if arg1 == msg.sender:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if balanceOf[address(arg1)] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            require stor5[address(arg1)] >= stor5[address(arg1)]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 10 * msg.value / 100
                                require stor15 >= stor15
                                require 10 * msg.value / 100 <= msg.value
                                require 0 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not arg1:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if arg1 == msg.sender:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if balanceOf[address(arg1)] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                            stor5[address(arg1)] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        else:
                            require msg.value
                            require 3 * msg.value / msg.value == 3
                            if not msg.value:
                                require 0 <= 10 * msg.value / 100
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 10 * msg.value / 100 <= msg.value
                                require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not arg1:
                                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                                else:
                                    if arg1 == msg.sender:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if balanceOf[address(arg1)] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            require stor5[address(arg1)] >= stor5[address(arg1)]
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                require 10 * msg.value / 100 <= 10 * msg.value / 100
                                require stor15 + (3 * msg.value / 100) >= stor15
                                stor15 += 3 * msg.value / 100
                                require 10 * msg.value / 100 <= msg.value
                                require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                while s < t:
                                    require s
                                    s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                    t = s
                                    continue 
                                require 6000000000 * 10^18 <= t
                                require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                if not arg1:
                                    require 10 * msg.value / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    if arg1 == msg.sender:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if balanceOf[address(arg1)] < stakingRequirement:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                            stor5[address(arg1)] += 10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                    emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, arg1);
                else:
                    require msg.value <= eth.balance(this.address)
                    if eth.balance(this.address) - msg.value < 100 * 10^18:
                        require 10 * 10^18 <= msg.value
                        if stor3:
                            if eth.balance(this.address) - 10 * 10^18 > 2 * 10^18:
                                if stor3:
                                    stor3 = 0
                            else:
                                if block.timestamp >= 428324 * 3600:
                                    if stor3:
                                        stor3 = 0
                                else:
                                    require bool(stor16[address(msg.sender)]) == 1
                                    require stor8[address(msg.sender)] + 10 * 10^18 <= 2 * 10^18
                                    require stor8[address(msg.sender)] + 10 * 10^18 >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += 10 * 10^18
                        require stor15 + 3 * 10^17 >= stor15
                        stor15 += 3 * 10^17
                        s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000001 / 2
                        t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000
                        while s < t:
                            require s
                            s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + 0x1a6f877426aa5926e0d83fd68ab41850359f8539100000000000000 / s) + s / 2
                            t = s
                            continue 
                        require 6000000000 * 10^18 <= t
                        require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                        require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                        require t - 6000000000 * 10^18 / 10^10 > totalSupply
                        if not arg1:
                            if totalSupply <= 0:
                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                            else:
                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                require totalSupply
                                stor10 += 18446744073709551616 * 10^18 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                        else:
                            if arg1 == msg.sender:
                                if totalSupply <= 0:
                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                                else:
                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor10 += 18446744073709551616 * 10^18 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                            else:
                                if balanceOf[address(arg1)] < stakingRequirement:
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) + (-1 * totalSupply * stor10) - 18446744073709551616 * 10^18
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 18446744073709551616 * 10^18 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 18446744073709551616 * 10^18 / totalSupply) + (totalSupply * 18446744073709551616 * 10^18 / totalSupply)
                                else:
                                    require stor5[address(arg1)] + 10^18 >= stor5[address(arg1)]
                                    stor5[address(arg1)] += 10^18
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        emit onTokenPurchase(10 * 10^18, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, arg1);
                        if msg.value - 10 * 10^18 > 0:
                            call msg.sender with:
                               value msg.value - 10 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor3:
                            if eth.balance(this.address) - msg.value > 2 * 10^18:
                                if stor3:
                                    stor3 = 0
                            else:
                                if block.timestamp >= 428324 * 3600:
                                    if stor3:
                                        stor3 = 0
                                else:
                                    require bool(stor16[address(msg.sender)]) == 1
                                    require stor8[address(msg.sender)] + msg.value <= 2 * 10^18
                                    require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += msg.value
                        if not msg.value:
                            if not msg.value:
                                if not msg.value:
                                    require stor15 >= stor15
                                    require 0 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if arg1:
                                        if arg1 != msg.sender:
                                            if balanceOf[address(arg1)] >= stakingRequirement:
                                                require stor5[address(arg1)] >= stor5[address(arg1)]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 0
                                    require stor15 >= stor15
                                    require 0 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not arg1:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if arg1 == msg.sender:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            if balanceOf[address(arg1)] < stakingRequirement:
                                                require 0 >= -10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                            else:
                                                require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                                stor5[address(arg1)] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                            else:
                                require msg.value
                                require 3 * msg.value / msg.value == 3
                                if not msg.value:
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 0 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if arg1:
                                        if arg1 != msg.sender:
                                            if balanceOf[address(arg1)] >= stakingRequirement:
                                                require stor5[address(arg1)] >= stor5[address(arg1)]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 0 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 0
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 0 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not arg1:
                                        require 0 >= -10 * msg.value / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 0 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                    else:
                                        if arg1 == msg.sender:
                                            require 0 >= -10 * msg.value / 100
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 0 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                        else:
                                            if balanceOf[address(arg1)] < stakingRequirement:
                                                require 0 >= -10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                                            else:
                                                require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                                stor5[address(arg1)] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) + (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += -10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * -10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * -10 * msg.value / 100 << 64 / totalSupply)
                        else:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            if not msg.value:
                                if not msg.value:
                                    require 0 <= 10 * msg.value / 100
                                    require stor15 >= stor15
                                    require 10 * msg.value / 100 <= msg.value
                                    require 0 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not arg1:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if arg1 == msg.sender:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            if balanceOf[address(arg1)] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                                            else:
                                                require stor5[address(arg1)] >= stor5[address(arg1)]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 10 * msg.value / 100
                                    require stor15 >= stor15
                                    require 10 * msg.value / 100 <= msg.value
                                    require 0 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not arg1:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if arg1 == msg.sender:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            if balanceOf[address(arg1)] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 0
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                            else:
                                                require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                                stor5[address(arg1)] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                            else:
                                require msg.value
                                require 3 * msg.value / msg.value == 3
                                if not msg.value:
                                    require 0 <= 10 * msg.value / 100
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 10 * msg.value / 100 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not arg1:
                                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                                    else:
                                        if arg1 == msg.sender:
                                            require 10 * msg.value / 100 >= 10 * msg.value / 100
                                        else:
                                            if balanceOf[address(arg1)] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 10 * msg.value / 100
                                            else:
                                                require stor5[address(arg1)] >= stor5[address(arg1)]
                                    if totalSupply <= 0:
                                        totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                    else:
                                        require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 6000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                else:
                                    require msg.value
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 100 <= 10 * msg.value / 100
                                    require stor15 + (3 * msg.value / 100) >= stor15
                                    stor15 += 3 * msg.value / 100
                                    require 10 * msg.value / 100 <= msg.value
                                    require 3 * msg.value / 100 <= msg.value - (10 * msg.value / 100)
                                    s = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + 0x177db8791763073b79985459a56a9a89100000000000001 / 2
                                    t = (100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600)
                                    while s < t:
                                        require s
                                        s = ((100 * 10^18 * totalSupply^2) + (120000000000000000000 * 10^18 * totalSupply) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (-20000000000000000000000000000 * 10^18 * 3 * msg.value / 100) + (0x1aba4714957d300d0e549208b31adb10000000000000 * 3600) / s) + s / 2
                                        t = s
                                        continue 
                                    require 6000000000 * 10^18 <= t
                                    require (t - 6000000000 * 10^18 / 10^10) - totalSupply > 0
                                    require t - 6000000000 * 10^18 / 10^10 >= (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                    require t - 6000000000 * 10^18 / 10^10 > totalSupply
                                    if not arg1:
                                        require 10 * msg.value / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                        else:
                                            require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 6000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                    else:
                                        if arg1 == msg.sender:
                                            require 10 * msg.value / 100 >= 0
                                            if totalSupply <= 0:
                                                totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                            else:
                                                require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                totalSupply = t - 6000000000 * 10^18 / 10^10
                                                require totalSupply
                                                stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                        else:
                                            if balanceOf[address(arg1)] < stakingRequirement:
                                                require 10 * msg.value / 100 >= 0
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (10 * msg.value / 100 << 64)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 10 * msg.value / 100 << 64 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                                            else:
                                                require stor5[address(arg1)] + (10 * msg.value / 100) >= stor5[address(arg1)]
                                                stor5[address(arg1)] += 10 * msg.value / 100
                                                if totalSupply <= 0:
                                                    totalSupply = (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10)
                                                else:
                                                    require t - 6000000000 * 10^18 / 10^10 >= totalSupply
                                                    totalSupply = t - 6000000000 * 10^18 / 10^10
                                                    require totalSupply
                                                    stor10 += 0 / totalSupply
                                                    require balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10) - totalSupply
                                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 6000000000 * 10^18 / 10^10 * stor10) - (totalSupply * stor10) - (t - 6000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
                        emit onTokenPurchase(msg.value, (t - 6000000000 * 10^18 / 10^10) - totalSupply, msg.sender, arg1);
    return 0
}



}
