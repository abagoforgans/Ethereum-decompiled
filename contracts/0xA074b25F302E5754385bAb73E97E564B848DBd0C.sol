contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
uint8 stor7; offset 152
address stor7;
address stor8;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = msg.sender
    stor6 = 0xb5d39a8ea30005f9114bf936025de2d6f353813e
    Mask(152, 0, stor7.field_0) = 0xa591199f53907480e1f5a00958b93b43200fe4
    uint8(stor7.field_152) = 0
    stor8 = 0xd19c131400e73c71bbb2bc1666dba8fe22d242d
    require not msg.value
    return code.data[161 len 3100]
}



// =====================  Runtime code  =====================


const name = 'CTN1'

const decimals = 18

const symbol = 'CT1'

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rate;
uint256 check;
address owner;
address founder1Address;
address founder2Address;
address founder3Address;
uint256 tokenAmount;

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function Founder3() {
    return founder3Address
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

function Burn() {
    require owner == msg.sender
    totalSupply = 10^6
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require rate
    tokenAmount = msg.value / rate
    require arg2 == msg.value / rate
    require arg2
    require arg1 == msg.sender
    totalSupply += arg2
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), 0, arg1);
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
    require totalSupply <= 999999
    if totalSupply < 25000:
        rate = 34 * 10^13
    else:
        rate = 17 * 10^14
        if totalSupply >= 125000:
            rate = 34 * 10^14
            if totalSupply >= 525000:
                rate = 68 * 10^14
    tokenAmount = 0
    require rate
    tokenAmount = msg.value / rate
    require msg.value / rate >= 0
    check = 0
    require tokenAmount + totalSupply >= totalSupply
    require tokenAmount + totalSupply >= tokenAmount
    check = tokenAmount + totalSupply
    require tokenAmount + totalSupply <= 10^6
    if totalSupply < 25000:
        require check <= 25000
    if totalSupply < 125000:
        require check <= 125000
    if totalSupply < 525000:
        require check <= 525000
    if (balanceOf[address(msg.sender)] / 10^18) + tokenAmount > 200:
        require totalSupply >= 25000
    require rate
    tokenAmount = msg.value / rate
    require tokenAmount == msg.value / rate
    require tokenAmount
    require msg.sender == msg.sender
    totalSupply += tokenAmount
    balanceOf[address(msg.sender)] += 10^18 * tokenAmount
    emit Transfer((10^18 * tokenAmount), 0, msg.sender);
    tokenAmount = 0
    check = 0
    rate = 0
    call founder1Address with:
       value 49 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call founder2Address with:
       value 2 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call founder3Address with:
       value 49 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}



}
