contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1304]
}



// =====================  Runtime code  =====================


address owner;
uint256 price;
address tokenAddress;
mapping of struct entryStorage;

function entryStorage(bytes32 arg1) {
    return entryStorage[arg1].field_0, entryStorage[arg1].field_256
}

function owner() {
    return owner
}

function price() {
    return price
}

function token() {
    return tokenAddress
}

function _fallback() {
    revert
}

function setRegistrationPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function setTokenAddress(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function makeRegistration(bytes32 arg1) {
    require owner == msg.sender
    if entryStorage[arg1].field_0:
        emit EntryExistAlready(arg1, block.timestamp);
        revert
    entryStorage[arg1].field_0 = block.number
    entryStorage[arg1].field_256 = block.timestamp
    emit EntryAdded(arg1, block.number, block.timestamp);
}

function makePayableRegistration(bytes32 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, owner
    require ext_call.success
    require ext_call.return_data[0] >= price
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, owner, price
    require ext_call.success
    require ext_call.return_data[0]
    if entryStorage[arg1].field_0:
        emit EntryExistAlready(arg1, block.timestamp);
        revert
    entryStorage[arg1].field_0 = block.number
    entryStorage[arg1].field_256 = block.timestamp
    emit EntryAdded(arg1, block.number, block.timestamp);
}



}
