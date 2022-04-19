contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 3023]
}



// =====================  Runtime code  =====================


address rootAddress;
uint256 totalSupply;
mapping of uint8 stor2;
mapping of uint256 allowance;
array of address contributors;
mapping of struct balance;

function getAllowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return totalSupply
}

function sub_253da8bd(?) {
    return contributors.length
}

function contributors(uint256 arg1) {
    require arg1 < contributors.length
    return address(contributors[arg1])
}

function modules(address arg1) {
    return bool(stor2[arg1])
}

function getModule(address arg1) {
    return bool(stor2[address(arg1)])
}

function getTotalSupply() {
    return totalSupply
}

function root() {
    return rootAddress
}

function getBalance(address arg1) {
    return balance[address(arg1)].field_0
}

function kill() {
    require rootAddress == msg.sender
    selfdestruct(rootAddress)
}

function _fallback() payable {
    revert
}

function transferRoot(address arg1) {
    require rootAddress == msg.sender
    rootAddress = arg1
}

function decTotalSupply(uint256 arg1) {
    require 1 == bool(stor2[address(msg.sender)])
    totalSupply -= arg1
    return 1
}

function incTotalSupply(uint256 arg1) {
    require 1 == bool(stor2[address(msg.sender)])
    totalSupply += arg1
    return 1
}

function setApprove(address arg1, address arg2, uint256 arg3) {
    require 1 == bool(stor2[address(msg.sender)])
    allowance[address(arg1)][address(arg2)] = arg3
    return 1
}

function decApprove(address arg1, address arg2, uint256 arg3) {
    require 1 == bool(stor2[address(msg.sender)])
    allowance[address(arg1)][address(arg2)] -= arg3
    return 1
}

function setModule(address arg1, bool arg2) {
    require rootAddress == msg.sender
    stor2[address(arg1)] = uint8(arg2)
    emit ModuleSet(arg1, arg2);
    return 1, address(arg1), arg2
}

function sub_486581ea(?) {
    require rootAddress == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function isContributor(address arg1) {
    if not contributors.length:
        return 0
    require balance[address(arg1)].field_256 < contributors.length
    return (address(contributors[stor5[address(arg1)].field_256]) == arg1)
}

function decBalance(address arg1, uint256 arg2) {
    require 1 == bool(stor2[address(msg.sender)])
    require contributors.length
    require balance[address(arg1)].field_256 < contributors.length
    require address(contributors[stor5[address(arg1)].field_256]) == arg1
    require arg2 <= balance[address(arg1)].field_0
    balance[address(arg1)].field_0 -= arg2
    emit BalanceAdj(arg2, Array(len=1, data='-'), msg.sender, arg1);
    return 1
}

function incBalance(address arg1, uint256 arg2) {
    require 1 == bool(stor2[address(msg.sender)])
    if not contributors.length:
        contributors.length++
        if not contributors.length <= contributors.length + 1:
            idx = contributors.length + 1
            while contributors.length > idx:
                uint256(contributors[idx]) = 0
                idx = idx + 1
                continue 
        address(contributors[contributors.length]) = arg1
        balance[address(arg1)].field_256 = contributors.length
    else:
        require balance[address(arg1)].field_256 < contributors.length
        if address(contributors[stor5[address(arg1)].field_256]) != arg1:
            contributors.length++
            if not contributors.length <= contributors.length + 1:
                idx = contributors.length + 1
                while contributors.length > idx:
                    uint256(contributors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributors[contributors.length]) = arg1
            balance[address(arg1)].field_256 = contributors.length
    require arg2 + balance[address(arg1)].field_0 >= balance[address(arg1)].field_0
    balance[address(arg1)].field_0 += arg2
    emit BalanceAdj(arg2, Array(len=1, data='+'), msg.sender, arg1);
    return 1
}



}
