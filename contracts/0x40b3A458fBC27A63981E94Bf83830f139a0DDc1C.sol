contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
address stor5;
address stor6;
address stor9;
address stor10;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor3 = 0
    stor4 = 0x1111111111111111111111111111111111111111
    stor5 = address('""""""""""""""""""""')
    stor14 = 10^6
    require not msg.value
    stor12 = block.timestamp
    stor6 = code.data[10086 len 20]
    stor9 = code.data[10118 len 20]
    stor10 = code.data[10150 len 20]
    require 7 * 10^6 * stor14 / 7 * 10^6 == stor14
    stor0 = 7 * 10^6 * stor14
    require 3 * 10^6 * stor14 / 3 * 10^6 == stor14
    stor1[stor4] = 3 * 10^6 * stor14
    require 10^6 * stor14 / 10^6 == stor14
    stor1[stor5] = 10^6 * stor14
    require 3 * 10^6 * stor14 / 3 * 10^6 == stor14
    stor1[stor10] = 3 * 10^6 * stor14
    require 7 * 10^6 * stor14 / 7 * 10^6 == stor14
    stor13 = 7 * 10^6 * stor14
    return code.data[1127 len 8947]
}



// =====================  Runtime code  =====================


const name = 'Silver'

const decimals = 6

const symbol = 'SLVR'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address burnAddress;
address vaultAddress;
address sub_b2c09468Address;
address founderAddress;
address minterAddress;
address issuerAddress;
address adminAddress;
address operationsAddress;
mapping of uint8 stor11;
uint256 inception;
uint256 sub_0e0ea30b;
uint256 stor14;

function minter() {
    return minterAddress
}

function sub_0e0ea30b(?) {
    return sub_0e0ea30b
}

function totalSupply() {
    return totalSupply
}

function issuer() {
    return issuerAddress
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function burnAddress() {
    return burnAddress
}

function inception() {
    return inception
}

function operations() {
    return operationsAddress
}

function sub_b2c09468(?) {
    return sub_b2c09468Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function authorizeBurner(address arg1) {
    require msg.sender == adminAddress
    stor11[address(arg1)] = 1
}

function changeMinter(address arg1) {
    require msg.sender == adminAddress
    minterAddress = arg1
    return 0
}

function changeFounder(address arg1) {
    require msg.sender == founderAddress
    founderAddress = arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_caaae932(?) {
    require msg.sender == adminAddress
    allowance[stor4][stor8] = 0
    issuerAddress = arg1
    allowance[stor4][stor8] = balanceOf[stor4]
    return 1
}

function changeIssuer(address arg1) {
    require msg.sender == adminAddress
    allowance[stor4][stor8] = 0
    issuerAddress = arg1
    allowance[stor4][stor8] = balanceOf[stor4]
    return 1
}

function changeAdmin(address arg1) {
    require msg.sender == founderAddress
    allowance[stor5][stor9] = 0
    adminAddress = arg1
    allowance[stor5][stor9] = balanceOf[stor5]
    return 1
}

function mintTokens(uint256 arg1) {
    require msg.sender == minterAddress
    require sub_0e0ea30b + arg1 >= sub_0e0ea30b
    require sub_0e0ea30b + arg1 <= totalSupply
    balanceOf[stor4] += arg1
    sub_0e0ea30b += arg1
    emit Mint(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_296fb521(?) {
    require msg.sender == adminAddress
    require allowance[stor5][stor9] >= arg2
    if balanceOf[stor5] >= arg2:
        if allowance[stor5][address(msg.sender)] >= arg2:
            if arg2 > 0:
                balanceOf[address(arg1)] += arg2
                balanceOf[stor5] -= arg2
                allowance[stor5][address(msg.sender)] -= arg2
                emit Transfer(arg2, sub_b2c09468Address, arg1);
    emit Issue(arg2, arg1, msg.sender);
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require msg.sender == issuerAddress
    require allowance[stor4][stor8] >= arg2
    if balanceOf[stor4] >= arg2:
        if allowance[stor4][address(msg.sender)] >= arg2:
            if arg2 > 0:
                balanceOf[address(arg1)] += arg2
                balanceOf[stor4] -= arg2
                allowance[stor4][address(msg.sender)] -= arg2
                emit Transfer(arg2, vaultAddress, arg1);
    emit Issue(arg2, arg1, msg.sender);
    return 1
}

function sub_9185e030(?) {
    require msg.sender == adminAddress
    require inception <= block.timestamp
    if block.timestamp - inception >= 131400 * 24 * 3600:
        require 23 * 10^6 * stor14 / 23 * 10^6 == stor14
        totalSupply = 23 * 10^6 * stor14
    else:
        if block.timestamp - inception >= 87600 * 24 * 3600:
            require 19 * 10^6 * stor14 / 19 * 10^6 == stor14
            totalSupply = 19 * 10^6 * stor14
        else:
            require block.timestamp - inception >= 43800 * 24 * 3600
            require 14 * 10^6 * stor14 / 14 * 10^6 == stor14
            totalSupply = 14 * 10^6 * stor14
    return 0
}

function burnTokens(address arg1) {
    require stor11[address(msg.sender)]
    require allowance[address(arg1)][address(msg.sender)] > 0
    if balanceOf[address(arg1)] < allowance[address(arg1)][address(msg.sender)]:
        emit Burn(allowance[address(arg1)][address(msg.sender)], msg.sender);
        require allowance[address(arg1)][address(msg.sender)] <= sub_0e0ea30b
    else:
        if allowance[address(arg1)][address(msg.sender)] < allowance[address(arg1)][address(msg.sender)]:
            emit Burn(allowance[address(arg1)][address(msg.sender)], msg.sender);
            require allowance[address(arg1)][address(msg.sender)] <= sub_0e0ea30b
        else:
            if allowance[address(arg1)][address(msg.sender)] <= 0:
                emit Burn(allowance[address(arg1)][address(msg.sender)], msg.sender);
            else:
                balanceOf[stor3] += allowance[address(arg1)][address(msg.sender)]
                balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] = 0
                emit Transfer(allowance[address(arg1)][address(msg.sender)], arg1, burnAddress);
                emit Burn(allowance[address(arg1)][address(msg.sender)], msg.sender);
                require allowance[address(arg1)][address(msg.sender)] <= sub_0e0ea30b
    sub_0e0ea30b -= allowance[address(arg1)][address(msg.sender)]
}



}
