contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of struct stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor14;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor0 = 0
    mem[96] = 2500
    mem[128] = 2500
    mem[160] = 2000
    mem[192] = 2000
    mem[224] = 1500
    mem[256] = 1500
    mem[288] = 1000
    mem[320] = 1000
    mem[352] = 500
    mem[384] = 500
    stor3.length = 10
    s = 0
    idx = 96
    while 416 > idx:
        stor3[s].field_0 = mem[idx + 30 len 2]
        stor3[s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while stor3.length > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 10^18
    stor12 = 5000
    stor16 = 0
    stor17 = 10000
    require not msg.value
    stor1 = msg.sender
    stor14 = code.data[9028 len 20]
    return code.data[576 len 8440]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
const sub_299fb30c(?) = 1000000 * 10^18

const sub_bdb2f9cd(?) = 500000 * 10^18

const MAX_PREICO_SUPPLY = 16500000 * 10^18

const DECIMALS = 10^18

const MAX_PRESALE_SUPPLY = 1250000 * 10^18

const MAX_ICO_SUPPLY = 32250000 * 10^18


uint256 stor0;
address owner;
address newOwner;
array of uint256 sub_a6cbdf07;
uint8 currentState;
address tokenAddress; offset 8
uint256 sub_4f153fe8;
uint256 totalPreICOSupply;
uint256 totalICOSupply;
uint256 sub_aeab26be;
uint256 totalReferralSupply;
uint256 totalFunds;
uint256 tokenPrice;
uint256 bonus;
uint256 currentPrice;
address beneficiaryAddress;
mapping of uint256 refundBalance;
uint256 countMembers;
uint256 stor17;

function currentState() {
    require currentState <= 7
    return currentState
}

function countMembers() {
    return countMembers
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_4f153fe8(?) {
    return sub_4f153fe8
}

function refundBalance(address arg1) {
    return refundBalance[address(arg1)]
}

function getCountMembers() {
    return countMembers
}

function bonus() {
    return bonus
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function totalReferralSupply() {
    return totalReferralSupply
}

function totalFunds() {
    return totalFunds
}

function currentPrice() {
    return currentPrice
}

function sub_a6cbdf07(?) {
    require arg1 < sub_a6cbdf07.length
    return sub_a6cbdf07[arg1]
}

function sub_aeab26be(?) {
    return sub_aeab26be
}

function totalICOSupply() {
    return totalICOSupply
}

function newOwner() {
    return newOwner
}

function token() {
    return tokenAddress
}

function totalPreICOSupply() {
    return totalPreICOSupply
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setBonus(uint256 arg1) {
    require msg.sender == owner
    require currentState <= 7
    require currentState != 7
    bonus = arg1
}

function setTokenPrice(uint256 arg1) {
    require msg.sender == owner
    require currentState <= 7
    require currentState != 7
    currentPrice = arg1
}

function initialize(address arg1) {
    require msg.sender == owner
    require currentState <= 7
    require not currentState
    require arg1
    tokenAddress = arg1
    currentPrice = tokenPrice
}

function getBonus() {
    if not bonus:
        if stor17:
            return (100 * bonus / stor17)
    else:
        if bonus:
            if 100 * bonus / bonus == 100:
                if stor17:
                    return (100 * bonus / stor17)
    revert
}

function refund() {
    require stor0 <= 0
    stor0 = -1
    require currentState <= 7
    require currentState == 5
    require refundBalance[address(msg.sender)]
    refundBalance[address(msg.sender)] = 0
    call msg.sender with:
       value refundBalance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require stor0 <= 0
    stor0 = -1
    require msg.sender == owner
    require currentState <= 7
    if currentState != 3:
        require currentState <= 7
        require currentState == 6
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e18d6f97(?) {
    require msg.sender == owner
    require currentState <= 7
    if currentState != 1:
        require currentState <= 7
        if currentState != 2:
            require currentState <= 7
            require currentState == 4
    require arg3 <= 2
    if arg3 != 2:
        require arg3 <= 2
        if not arg3:
            require sub_aeab26be + arg2 >= sub_aeab26be
            require sub_aeab26be + arg2 <= 500000 * 10^18
        else:
            require arg3 <= 2
            if arg3 == 1:
                require totalReferralSupply + arg2 >= totalReferralSupply
                require totalReferralSupply + arg2 <= 1000000 * 10^18
    else:
        require currentState <= 7
        if currentState == 1:
            require sub_4f153fe8 + arg2 >= sub_4f153fe8
            require sub_4f153fe8 + arg2 <= 1250000 * 10^18
        else:
            require currentState <= 7
            if currentState == 2:
                require totalPreICOSupply + arg2 >= totalPreICOSupply
                require totalPreICOSupply + arg2 <= 16500000 * 10^18
            else:
                require currentState <= 7
                if currentState == 4:
                    require totalICOSupply + arg2 >= totalICOSupply
                    require totalICOSupply + arg2 <= 32250000 * 10^18
    require stor0 <= 0
    stor0 = -1
    require arg3 <= 2
    if arg3 != 2:
        require arg3 <= 2
        if not arg3:
            require sub_aeab26be + arg2 >= sub_aeab26be
            sub_aeab26be += arg2
        else:
            require arg3 <= 2
            if arg3 == 1:
                require totalReferralSupply + arg2 >= totalReferralSupply
                totalReferralSupply += arg2
    else:
        require currentState <= 7
        if currentState == 1:
            require sub_4f153fe8 + arg2 >= sub_4f153fe8
            sub_4f153fe8 += arg2
        else:
            require currentState <= 7
            if currentState == 2:
                require totalPreICOSupply + arg2 >= totalPreICOSupply
                totalPreICOSupply += arg2
            else:
                require currentState <= 7
                if currentState == 4:
                    require totalICOSupply + arg2 >= totalICOSupply
                    totalICOSupply += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require arg3 <= 2
    emit 0xde3eaba8: arg2, arg2, arg3, arg1
}

function sub_2baf2eb4(?) {
    require msg.sender == owner
    require currentState <= 7
    require currentState <= 7
    if currentState != 1:
        if currentState != 2:
            require currentState <= 7
            require currentState == 4
    if currentState == 4:
        if totalICOSupply:
            require totalICOSupply
            require 10 * totalICOSupply / totalICOSupply == 10
        if 10 * totalICOSupply / 32250000 * 10^18 < sub_a6cbdf07.length:
            bonus = sub_a6cbdf07[10 * stor7 / 32250000 * 10^18]
        else:
            require sub_a6cbdf07.length - 1 < sub_a6cbdf07.length
            bonus = sub_a6cbdf07[sub_a6cbdf07.length]
    if arg2:
        require arg2
        require arg2 * bonus / arg2 == bonus
    require stor17
    require arg2 + (arg2 * bonus / stor17) >= arg2
    require arg3 <= 2
    if arg3 != 2:
        require arg3 <= 2
        if not arg3:
            require sub_aeab26be + arg2 + (arg2 * bonus / stor17) >= sub_aeab26be
            require sub_aeab26be + arg2 + (arg2 * bonus / stor17) <= 500000 * 10^18
        else:
            require arg3 <= 2
            if arg3 == 1:
                require totalReferralSupply + arg2 + (arg2 * bonus / stor17) >= totalReferralSupply
                require totalReferralSupply + arg2 + (arg2 * bonus / stor17) <= 1000000 * 10^18
    else:
        require currentState <= 7
        if currentState == 1:
            require sub_4f153fe8 + arg2 + (arg2 * bonus / stor17) >= sub_4f153fe8
            require sub_4f153fe8 + arg2 + (arg2 * bonus / stor17) <= 1250000 * 10^18
        else:
            require currentState <= 7
            if currentState == 2:
                require totalPreICOSupply + arg2 + (arg2 * bonus / stor17) >= totalPreICOSupply
                require totalPreICOSupply + arg2 + (arg2 * bonus / stor17) <= 16500000 * 10^18
            else:
                require currentState <= 7
                if currentState == 4:
                    require totalICOSupply + arg2 + (arg2 * bonus / stor17) >= totalICOSupply
                    require totalICOSupply + arg2 + (arg2 * bonus / stor17) <= 32250000 * 10^18
    require stor0 <= 0
    stor0 = -1
    require arg3 <= 2
    if arg3 != 2:
        require arg3 <= 2
        if not arg3:
            require sub_aeab26be + arg2 + (arg2 * bonus / stor17) >= sub_aeab26be
            sub_aeab26be = sub_aeab26be + arg2 + (arg2 * bonus / stor17)
        else:
            require arg3 <= 2
            if arg3 == 1:
                require totalReferralSupply + arg2 + (arg2 * bonus / stor17) >= totalReferralSupply
                totalReferralSupply = totalReferralSupply + arg2 + (arg2 * bonus / stor17)
    else:
        require currentState <= 7
        if currentState == 1:
            require sub_4f153fe8 + arg2 + (arg2 * bonus / stor17) >= sub_4f153fe8
            sub_4f153fe8 = sub_4f153fe8 + arg2 + (arg2 * bonus / stor17)
        else:
            require currentState <= 7
            if currentState == 2:
                require totalPreICOSupply + arg2 + (arg2 * bonus / stor17) >= totalPreICOSupply
                totalPreICOSupply = totalPreICOSupply + arg2 + (arg2 * bonus / stor17)
            else:
                require currentState <= 7
                if currentState == 4:
                    require totalICOSupply + arg2 + (arg2 * bonus / stor17) >= totalICOSupply
                    totalICOSupply = totalICOSupply + arg2 + (arg2 * bonus / stor17)
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 + (arg2 * bonus / stor17)
    require ext_call.success
    require arg3 <= 2
    emit 0xde3eaba8: arg2 + (arg2 * bonus / stor17), arg2, arg3, arg1
}

function setState(uint8 arg1) {
    require msg.sender == owner
    require currentState <= 7
    require currentState != 7
    require arg1 <= 7
    if arg1 != 7:
        require currentState <= 7
        if currentState:
            require currentState <= 7
            if currentState != 1:
                require currentState <= 7
                if currentState != 2:
                    require currentState <= 7
                    if currentState != 3:
                        require currentState <= 7
                        if currentState != 4:
                            require currentState <= 7
                            require currentState == 5
                            require arg1 <= 7
                            require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 5:
                                require arg1 <= 7
                                if arg1 != 6:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                    else:
                        require arg1 <= 7
                        if arg1 != 4:
                            require currentState <= 7
                            if currentState != 4:
                                require currentState <= 7
                                require currentState == 5
                                require arg1 <= 7
                                require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 5:
                                    require arg1 <= 7
                                    if arg1 != 6:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                else:
                    require arg1 <= 7
                    if arg1 != 5:
                        require arg1 <= 7
                        if arg1 != 3:
                            require currentState <= 7
                            if currentState != 3:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 4:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
            else:
                require arg1 <= 7
                if arg1 != 2:
                    require currentState <= 7
                    if currentState != 2:
                        require currentState <= 7
                        if currentState != 3:
                            require currentState <= 7
                            if currentState != 4:
                                require currentState <= 7
                                require currentState == 5
                                require arg1 <= 7
                                require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 5:
                                    require arg1 <= 7
                                    if arg1 != 6:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 4:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                    else:
                        require arg1 <= 7
                        if arg1 != 5:
                            require arg1 <= 7
                            if arg1 != 3:
                                require currentState <= 7
                                if currentState != 3:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 4:
                                        require currentState <= 7
                                        if currentState != 4:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                                        else:
                                            require arg1 <= 7
                                            if arg1 != 5:
                                                require arg1 <= 7
                                                if arg1 != 6:
                                                    require currentState <= 7
                                                    require currentState == 5
                                                    require arg1 <= 7
                                                    require arg1 == 6
        else:
            require arg1 <= 7
            if arg1 != 1:
                require currentState <= 7
                if currentState != 1:
                    require currentState <= 7
                    if currentState != 2:
                        require currentState <= 7
                        if currentState != 3:
                            require currentState <= 7
                            if currentState != 4:
                                require currentState <= 7
                                require currentState == 5
                                require arg1 <= 7
                                require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 5:
                                    require arg1 <= 7
                                    if arg1 != 6:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 4:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                    else:
                        require arg1 <= 7
                        if arg1 != 5:
                            require arg1 <= 7
                            if arg1 != 3:
                                require currentState <= 7
                                if currentState != 3:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 4:
                                        require currentState <= 7
                                        if currentState != 4:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                                        else:
                                            require arg1 <= 7
                                            if arg1 != 5:
                                                require arg1 <= 7
                                                if arg1 != 6:
                                                    require currentState <= 7
                                                    require currentState == 5
                                                    require arg1 <= 7
                                                    require arg1 == 6
                else:
                    require arg1 <= 7
                    if arg1 != 2:
                        require currentState <= 7
                        if currentState != 2:
                            require currentState <= 7
                            if currentState != 3:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 4:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 5:
                                require arg1 <= 7
                                if arg1 != 3:
                                    require currentState <= 7
                                    if currentState != 3:
                                        require currentState <= 7
                                        if currentState != 4:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                                        else:
                                            require arg1 <= 7
                                            if arg1 != 5:
                                                require arg1 <= 7
                                                if arg1 != 6:
                                                    require currentState <= 7
                                                    require currentState == 5
                                                    require arg1 <= 7
                                                    require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 4:
                                            require currentState <= 7
                                            if currentState != 4:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
                                            else:
                                                require arg1 <= 7
                                                if arg1 != 5:
                                                    require arg1 <= 7
                                                    if arg1 != 6:
                                                        require currentState <= 7
                                                        require currentState == 5
                                                        require arg1 <= 7
                                                        require arg1 == 6
    require arg1 <= 7
    if arg1 == 6:
        require stor0 <= 0
        stor0 = -1
        require ext_code.size(tokenAddress)
        call tokenAddress.start() with:
             gas gas_remaining - 710 wei
        require ext_call.success
    require arg1 <= 7
    currentState = arg1
}



}
