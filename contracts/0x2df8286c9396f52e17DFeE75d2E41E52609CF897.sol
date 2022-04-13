contract main {


// =======================  Init code  ======================


address stor1;
uint128 stor4; offset 160

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor1 = msg.sender
    return code.data[127 len 7564]
}



// =====================  Runtime code  =====================


const name = 'Silent Notary Token'

const decimals = 4

const symbol = 'SNTR'

const BUYOUT_PRICE = 2 * 10^11


uint256 totalSupply;
address owner;
array of address holders;
mapping of struct balances;
uint8 stor4; offset 160
uint128 stor4; offset 160
address crowdsaleAgentAddress;
mapping of uint256 allowance;

function crowdsaleAgent() {
    return crowdsaleAgentAddress
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1].field_0, bool(balances[arg1].field_256)
}

function holders(uint256 arg1) {
    require arg1 < holders.length
    return address(holders[arg1])
}

function balanceOf(address arg1) {
    return balances[address(arg1)].field_0
}

function owner() {
    return owner
}

function released() {
    return bool(uint8(stor4.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    require msg.value > 0
    emit Deposit(msg.value, msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function releaseTokenTransfer() {
    require msg.sender == crowdsaleAgentAddress
    Mask(96, 0, stor4.field_160) = 1
}

function setCrowdsaleAgent(address arg1) {
    require msg.sender == owner
    require 0 == bool(uint8(stor4.field_160))
    crowdsaleAgentAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleAgentAddress
    require not uint8(stor4.field_160)
    if not balances[address(arg1)].field_256:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        address(holders[holders.length]) = arg1
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    require balances[address(arg1)].field_0 + arg2 >= balances[address(arg1)].field_0
    require balances[address(arg1)].field_0 + arg2 >= arg2
    balances[address(arg1)].field_0 += arg2
    balances[address(arg1)].field_256 = 1
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not uint8(stor4.field_160):
        require msg.sender == crowdsaleAgentAddress
    if not balances[address(arg1)].field_256:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        address(holders[holders.length]) = arg1
    require arg2 <= balances[address(msg.sender)].field_0
    balances[address(msg.sender)].field_0 -= arg2
    require balances[address(arg1)].field_0 + arg2 >= balances[address(arg1)].field_0
    require balances[address(arg1)].field_0 + arg2 >= arg2
    balances[address(arg1)].field_0 += arg2
    balances[address(arg1)].field_256 = 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 68
    if not uint8(stor4.field_160):
        require msg.sender == crowdsaleAgentAddress
    if not balances[address(arg2)].field_256:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        address(holders[holders.length]) = arg2
    require balances[address(arg2)].field_0 + arg3 >= balances[address(arg2)].field_0
    require balances[address(arg2)].field_0 + arg3 >= arg3
    balances[address(arg2)].field_0 += arg3
    require arg3 <= balances[address(arg1)].field_0
    balances[address(arg1)].field_0 -= arg3
    balances[address(arg2)].field_256 = 1
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyout(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not balances[address(msg.sender)].field_256:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        address(holders[holders.length]) = msg.sender
    require arg1 != msg.sender
    require eth.balance(this.address) >= arg2
    require 2 * 10^11 <= arg2
    if arg2:
        require arg2
        require 10000 * arg2 / arg2 == 10000
    require 10000 * arg2 == (2 * 10^11 * 10000 * arg2 / 2 * 10^11) + (10000 * arg2 % 2 * 10^11)
    require balances[address(msg.sender)].field_0 + (10000 * arg2 / 2 * 10^11) >= balances[address(msg.sender)].field_0
    require balances[address(msg.sender)].field_0 + (10000 * arg2 / 2 * 10^11) >= 10000 * arg2 / 2 * 10^11
    balances[address(msg.sender)].field_0 += 10000 * arg2 / 2 * 10^11
    require 10000 * arg2 / 2 * 10^11 <= balances[address(arg1)].field_0
    balances[address(arg1)].field_0 -= 10000 * arg2 / 2 * 10^11
    balances[address(msg.sender)].field_256 = 1
    emit Transfer((10000 * arg2 / 2 * 10^11), arg1, msg.sender);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Pay(arg2, arg1);
}



}
