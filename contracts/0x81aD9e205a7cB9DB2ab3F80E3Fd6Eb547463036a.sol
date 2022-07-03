contract main {




// =====================  Runtime code  =====================


uint16 totalModerators; offset 160
address owner;
mapping of uint8 stor1;
uint8 stor2;
mapping of struct requests;
address tradeContractAddress;
address dataContractAddress;
address monsterNFTContractAddress;

function dataContract() {
    return dataContractAddress
}

function getBurnInfo(uint256 arg1) {
    return requests[arg1].field_0
}

function moderators(address arg1) {
    return bool(stor1[arg1])
}

function monsterNFTContract() {
    return monsterNFTContractAddress
}

function totalModerators() {
    return totalModerators
}

function requests(uint256 arg1) {
    return requests[arg1].field_0
}

function owner() {
    return owner
}

function isMaintaining() {
    return bool(stor2)
}

function tradeContract() {
    return tradeContractAddress
}

function _fallback() payable {
    revert
}

function UpdateMaintaining(bool arg1) {
    require msg.sender == owner
    stor2 = uint8(arg1)
}

function ChangeOwner(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function AddModerator(address arg1) {
    require msg.sender == owner
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        totalModerators = uint16(totalModerators + 1)
}

function RemoveModerator(address arg1) {
    require msg.sender == owner
    if bool(stor1[address(arg1)]) == 1:
        stor1[address(arg1)] = 0
        totalModerators = uint16(totalModerators - 1)
}

function setContract(address arg1, address arg2, address arg3) {
    if owner != msg.sender:
        require bool(stor1[address(msg.sender)]) == 1
    monsterNFTContractAddress = arg1
    dataContractAddress = arg2
    tradeContractAddress = arg3
}

function sub_4d8a369e(?) {
    require not stor2
    require arg2
    require arg1
    require requests[arg2].field_0 <= 0
    require ext_code.size(dataContractAddress)
    call dataContractAddress.getMonsterObj(uint64 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require address(ext_call.return_data[64])
    require address(ext_call.return_data[64]) == msg.sender
    require ext_code.size(tradeContractAddress)
    call tradeContractAddress.isOnTrading(uint64 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(monsterNFTContractAddress)
    call monsterNFTContractAddress.burnMonster(uint64 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    requests[arg2].field_0 = arg1
    requests[arg2].field_64 = 0
}



}
