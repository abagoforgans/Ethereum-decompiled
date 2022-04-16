contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[1423 len 20]
    stor4 = 1
    stor1 = code.data[1423 len 20]
    return code.data[172 len 1239]
}



// =====================  Runtime code  =====================


address owner;
address tokenContractAddress;
address sub_440bbff7Address;
uint256 totalMigrated;
uint8 stor4;
mapping of uint256 balancesOf;

function registered() {
    return bool(stor4)
}

function sub_440bbff7(?) {
    return sub_440bbff7Address
}

function tokenContract() {
    return tokenContractAddress
}

function balancesOf(address arg1) {
    return balancesOf[arg1]
}

function owner() {
    return owner
}

function totalMigrated() {
    return totalMigrated
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_4fe5ea69(?) {
    require owner == msg.sender
    require stor4
    sub_440bbff7Address = arg1
}

function migrateFrom(address arg1, uint256 arg2) {
    require tokenContractAddress == msg.sender
    require arg2
    if balancesOf[address(arg1)]:
        balancesOf[address(arg1)] += arg2
    else:
        balancesOf[address(arg1)] = arg2
}

function sub_7be77ddd(?) {
    require owner == msg.sender
    if sub_440bbff7Address:
        if balancesOf[address(arg1)]:
            require ext_code.size(sub_440bbff7Address)
            call sub_440bbff7Address.0xf0f9109d with:
                 gas gas_remaining - 710 wei
                args address(arg1), balancesOf[address(arg1)]
            require ext_call.success
            if 1 == bool(ext_call.return_data[0]):
                balancesOf[address(arg1)] = 0
}



}
