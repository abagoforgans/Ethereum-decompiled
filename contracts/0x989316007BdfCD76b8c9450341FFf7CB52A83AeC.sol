contract main {


// =======================  Init code  ======================


uint256 stor1;
uint8 stor2;
mapping of address stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
address stor8;
uint256 stor11;

function _fallback() payable {
    stor1 = 0
    stor2 = 1
    stor4 = 11 * 10^15
    require stor4 == (20 * stor4 / 20) + (stor4 % 20)
    require stor4 / 20 == (121 * stor4 / 20 / 121) + (stor4 / 20 % 121)
    stor5 = stor4 / 20 / 121
    stor11 = 0
    require not msg.value
    stor8 = msg.sender
    stor6[stor8] = stor4
    stor3[address(msg.sender)] = msg.sender
    return code.data[578 len 6665]
}



// =====================  Runtime code  =====================


const name = 'CoinxionLite'

const decimals = 8

const symbol = 'CXLT'


uint256 counter;
uint8 stor2;
mapping of address stor3;
uint256 totalsupply;
uint256 sub_0af2ceb7;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor8;
array of address stor10;
uint256 stor11;

function sub_0af2ceb7(?) {
    return sub_0af2ceb7
}

function totalSupply() {
    return totalsupply
}

function counter() {
    return counter
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalsupply() {
    return totalsupply
}

function sub_a91713b0(?) {
    return stor10.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function sub_4484d334(?) {
    require msg.sender == stor8
    stor2 = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require msg.sender == stor8
    call stor8 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if stor8 != msg.sender:
        if stor10.length <= 0:
            stor3[address(msg.sender)] = msg.sender
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = msg.sender
        else:
            if stor3[address(msg.sender)] != msg.sender:
                stor3[address(msg.sender)] = msg.sender
                stor10.length++
                if not stor10.length <= stor10.length + 1:
                    idx = stor10.length + 1
                    while stor10.length > idx:
                        uint256(stor10[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor10[stor10.length]) = msg.sender
        emit 0x4238a372: arg2, stor10.length, 14, 'address length'
    return 1
}

function sub_2e7e6f49(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor8
    stor2 = 1
    counter++
    if counter == 122:
        counter = 1
        require totalsupply == (20 * totalsupply / 20) + (totalsupply % 20)
        require totalsupply / 20 == (121 * totalsupply / 20 / 121) + (totalsupply / 20 % 121)
        sub_0af2ceb7 = totalsupply / 20 / 121
    if stor2:
        if stor10.length > 0:
            idx = 0
            while idx < stor10.length:
                mem[0] = address(stor10[idx])
                mem[32] = 6
                stor11 += balanceOf[address(stor10[idx])]
                mem[mem[64] + 32] = stor11
                mem[mem[64]] = 64
                mem[mem[64] + 64] = 22
                mem[mem[64] + 96] = 'address_three_days_sum'
                emit 0x4238a372: Array(len=22, data='address_three_days_sum'), stor11
                idx = idx + 1
                continue 
            mem[mem[64] + 96] = 'address_three_days_sum'
            emit 0x4238a372: Array(len=22, data='address_three_days_sum'), stor11
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < stor10.length:
                emit 0x6682f67c: address(stor10[idx])
                mem[0] = address(stor10[idx])
                mem[32] = 6
                emit 0x4238a372: Array(len=13, data='balancebefore'), balanceOf[address(stor10[idx])]
                emit 0x4238a372: Array(len=4, data='val_'), balanceOf[address(stor10[idx])] * sub_0af2ceb7
                require stor11 > 0
                require stor11
                require balanceOf[address(stor10[idx])] * sub_0af2ceb7 == (stor11 * balanceOf[address(stor10[idx])] * sub_0af2ceb7 / stor11) + (balanceOf[address(stor10[idx])] * sub_0af2ceb7 % stor11)
                mem[mem[64] + 32] = balanceOf[address(stor10[idx])] * sub_0af2ceb7 / stor11
                mem[mem[64]] = 64
                mem[mem[64] + 64] = 17
                mem[mem[64] + 96] = 'token_to_transfer'
                emit 0x4238a372: Array(len=17, data='token_to_transfer'), balanceOf[address(stor10[idx])] * sub_0af2ceb7 / stor11
                if balanceOf[address(stor10[idx])] > 100 * 10^6:
                    require idx < stor10.length
                    balanceOf[address(stor10[idx])] += balanceOf[address(stor10[idx])] * sub_0af2ceb7 / stor11
                    mem[0] = address(stor10[idx])
                    mem[32] = 6
                    mem[mem[64] + 32] = balanceOf[address(stor10[idx])]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 12
                    mem[mem[64] + 96] = 'balanceafter'
                    emit 0x4238a372: Array(len=12, data='balanceafter'), balanceOf[address(stor10[idx])]
                s = balanceOf[address(stor10[idx])] * sub_0af2ceb7 / stor11
                s = balanceOf[address(stor10[idx])] * sub_0af2ceb7
                s = balanceOf[address(stor10[idx])]
                idx = idx + 1
                continue 
            emit 0x4238a372: Array(len=11, data='three_days_'), sub_0af2ceb7
            require totalsupply + sub_0af2ceb7 >= totalsupply
            require totalsupply + sub_0af2ceb7 >= sub_0af2ceb7
            totalsupply += sub_0af2ceb7
            emit supply(totalsupply);
            if stor10.length > 0:
                stor10.length = 0
                idx = 0
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
                stor11 = 0
}



}
