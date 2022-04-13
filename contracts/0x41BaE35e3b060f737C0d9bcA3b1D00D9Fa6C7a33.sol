contract main {


// =======================  Init code  ======================


array of uint256 stor3;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = '0.0.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 0
    stor8 = 0
    require not msg.value
    return code.data[277 len 3956]
}



// =====================  Runtime code  =====================


const name = 'ttoken'

const decimals = 18

const symbol = 'tc'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address treasuryAddress;
address newContractAddr;
uint256 currentSupply;
uint256 sub_10332546;
uint256 sub_6f915979;

function sub_10332546(?) {
    return sub_10332546
}

function totalSupply() {
    return totalSupply
}

function newContractAddr() {
    return newContractAddr
}

function version() {
    return version[0 len version.length]
}

function treasury() {
    return treasuryAddress
}

function sub_6f915979(?) {
    return sub_6f915979
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function currentSupply() {
    return currentSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    require msg.value
    emit IssueToken(msg.value, msg.sender);
}

function changeOwner(address arg1) {
    require treasuryAddress == msg.sender
    require arg1
    treasuryAddress = arg1
}

function sub_ae04b416(?) {
    treasuryAddress = msg.sender
    currentSupply = 400000000 * 10^18
    totalSupply = 1000000000 * 10^18
}

function setMigrateContract(address arg1) {
    require treasuryAddress == msg.sender
    require newContractAddr != arg1
    newContractAddr = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function depositETH() {
    require treasuryAddress == msg.sender
    require eth.balance(this.address)
    call treasuryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function decreaseSupply(uint256 arg1) {
    require treasuryAddress == msg.sender
    require (10^18 * arg1) + sub_10332546 <= currentSupply
    require 10^18 * arg1 <= currentSupply
    currentSupply += -1 * 10^18 * arg1
    emit DecreaseSupply((10^18 * arg1));
}

function increaseSupply(uint256 arg1) {
    require treasuryAddress == msg.sender
    require (10^18 * arg1) + currentSupply <= totalSupply
    require (10^18 * arg1) + currentSupply >= currentSupply
    currentSupply += 10^18 * arg1
    emit IncreaseSupply((10^18 * arg1));
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_18a6a236(?) {
    require treasuryAddress == msg.sender
    require arg2
    require arg1
    require (10^18 * arg2) + sub_10332546 <= currentSupply
    require (10^18 * arg2) + sub_10332546 >= sub_10332546
    sub_10332546 += 10^18 * arg2
    require (10^18 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
    emit 0xead809cb: (10^18 * arg2), arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_1e859724(?) {
    require newContractAddr
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] + sub_6f915979 >= sub_6f915979
    sub_6f915979 += balanceOf[address(msg.sender)]
    require ext_code.size(newContractAddr)
    call newContractAddr.migrate(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit 0xe41d7190: balanceOf[address(msg.sender)], msg.sender
}



}
