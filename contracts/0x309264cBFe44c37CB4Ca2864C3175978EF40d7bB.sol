contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;

function _fallback() payable {
    stor3 = 0
    stor4 = msg.sender
    stor5 = 0xb5d39a8ea30005f9114bf936025de2d6f353813e
    stor6 = 0xd19c131400e73c71bbb2bc1666dba8fe22d242d
    stor7 = 0x99eadcc6ab74c8769a83fb3c986e5c841bafd495
    stor8 = 0xdf85b85904a83b6b2c2a156bc02134bf9e0cdb9b
    require not msg.value
    return code.data[187 len 2859]
}



// =====================  Runtime code  =====================


const name = 'SCoin1'

const decimals = 18

const symbol = 'S1'

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 check;
address owner;
address founder1Address;
address founder2Address;
address founder3Address;
address sub_48500aaaAddress;
uint256 tokenAmount;

function totalSupply() {
    return totalSupply
}

function Founder3() {
    return founder3Address
}

function sub_48500aaa(?) {
    return sub_48500aaaAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function Founder2() {
    return founder2Address
}

function owner() {
    return owner
}

function check() {
    return check
}

function Founder1() {
    return founder1Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenAmount() {
    return tokenAmount
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    tokenAmount = msg.value / 185 * 10^11 * 3600
    require arg2 == msg.value / 185 * 10^11 * 3600
    require arg2
    require arg1 == msg.sender
    totalSupply += arg2
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require totalSupply <= 665
    require msg.value >= 185 * 10^11 * 3600
    require msg.value % 185 * 10^11 * 3600 <= 0
    tokenAmount = 0
    tokenAmount = msg.value / 185 * 10^11 * 3600
    require msg.value / 185 * 10^11 * 3600 >= 0
    check = 0
    require tokenAmount + totalSupply >= totalSupply
    require tokenAmount + totalSupply >= tokenAmount
    check = tokenAmount + totalSupply
    require tokenAmount + totalSupply <= 666
    tokenAmount = msg.value / 185 * 10^11 * 3600
    require tokenAmount == msg.value / 185 * 10^11 * 3600
    require tokenAmount
    require msg.sender == msg.sender
    totalSupply += tokenAmount
    balanceOf[address(msg.sender)] += 10^18 * tokenAmount
    emit Transfer((10^18 * tokenAmount), owner, msg.sender);
    tokenAmount = 0
    check = 0
    call founder1Address with:
       value msg.value / 4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call founder2Address with:
       value msg.value / 4 wei
         gas 2300 * is_zero(value) wei
    call founder3Address with:
       value msg.value / 4 wei
         gas 2300 * is_zero(value) wei
    call sub_48500aaaAddress with:
       value msg.value / 4 wei
         gas 2300 * is_zero(value) wei
}



}
