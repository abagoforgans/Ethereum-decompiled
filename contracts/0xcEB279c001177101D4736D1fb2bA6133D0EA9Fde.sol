contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor3;
uint16 stor4;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor2 = msg.sender
    return code.data[76 len 2287]
}



// =====================  Runtime code  =====================


const name = 'DigiPulse Token'

const decimals = 8

const symbol = 'DGT'


mapping of uint256 balanceOf;
mapping of uint256 balanceInEth;
address stor2;
uint256 totalSupply;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor54B8;
uint256 stor9515;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getBalanceInEth(address arg1) {
    return balanceInEth[address(arg1)]
}

function getRemainingSupply() {
    return (-totalSupply + 16125 * 10^11)
}

function withdrawFundsToOwner(uint256 arg1) {
    require uint8(stor4.field_8)
    require eth.balance(this.address) >= arg1
    call stor2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function refundEther() {
    require uint8(stor4.field_0)
    require balanceInEth[address(msg.sender)]
    balanceInEth[address(msg.sender)] = 0
    call msg.sender with:
       value balanceInEth[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(balanceInEth[address(msg.sender)], msg.sender);
}

function _fallback() payable {
    require block.timestamp > 417176 * 3600
    require block.timestamp < 1504223999
    require not uint8(stor4.field_8)
    require msg.value
    require 250 * msg.value / 10^10 < -totalSupply + 16125 * 10^11
    s = 0
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < 4:
        if totalSupply >= s + 3275 * 10^11:
            s = (-5 * idx) + 115
            s = 3275 * 10^11
            idx = idx + 1
            s = s + 3275 * 10^11
            continue 
        if 250 * msg.value / 10^10:
            s = (-5 * idx) + 115
            s = 3275 * 10^11
            idx = idx + 1
            s = s + 3275 * 10^11
            continue 
        balanceInEth[address(msg.sender)] += msg.value
        emit Transfer(0, 0, msg.sender);
    balanceInEth[address(msg.sender)] += msg.value
    emit Transfer(0, 0, msg.sender);
}

function finalise() {
    require not uint8(stor4.field_0)
    require not uint8(stor4.field_8)
    if block.timestamp <= 1504223999:
        require totalSupply >= 16125 * 10^11
    if eth.balance(this.address) < 8000 * 10^18:
        uint8(stor4.field_0) = 1
    else:
        stor54B8 += 961735343125
        totalSupply += 961735343125
        emit Transfer(address rg1, address rg2, uint256 rg3):
                      961735343125,
        emit 0x0: 961735343125
        emit 0x8776a6fa: 961735343125
        stor9515 += 2 * 100 * totalSupply / 98 / 100
        totalSupply += 2 * 100 * totalSupply / 98 / 100
        emit Transfer(address rg1, address rg2, uint256 rg3):
                      (2 * 100 * totalSupply / 98 / 100),
        emit 0x0: (2 * 100 * totalSupply / 98 / 100)
        emit 0x663f98e9: (2 * 100 * totalSupply / 98 / 100)
        uint8(stor4.field_8) = 1
}



}
