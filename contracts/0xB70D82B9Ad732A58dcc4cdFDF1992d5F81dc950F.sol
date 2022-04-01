contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1131]




// =====================  Runtime code  =====================


array of struct addressOf;
mapping of uint256 ids;

function addressOf(uint256 arg1) {
    require arg1 < addressOf.length
    return addressOf[arg1].field_0
}

function ids(address arg1) {
    return ids[arg1]
}

function abiOf(uint256 arg1) {
    require arg1 < addressOf.length
    return addressOf[arg1].field_256
}

function numCampaigns() {
    return addressOf.length
}

function registeredAt(uint256 arg1) {
    require arg1 < addressOf.length
    return addressOf[arg1].field_512
}

function idOf(address arg1) {
    return ids[address(arg1)]
}

function _fallback() payable {
    revert 
}

function campaigns(uint256 arg1) {
    require arg1 < addressOf.length
    return addressOf[arg1].field_0, addressOf[arg1].field_256, addressOf[arg1].field_512
}

function register(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    if addressOf.length > 0:
        require ids[address(arg1)] < addressOf.length
        require addressOf[stor1[address(arg1)]].field_0 != arg1
    addressOf.length++
    if not addressOf.length <= addressOf.length + 1:
        idx = (3 * addressOf.length) + 3
        while 3 * addressOf.length > idx:
            addressOf[idx].field_0 = 0
            addressOf[idx].field_256 = 0
            addressOf[idx].field_512 = 0
            idx = idx + 3
            continue 
    ids[address(arg1)] = addressOf.length
    require addressOf.length < addressOf.length
    addressOf[addressOf.length].field_0 = arg1
    addressOf[addressOf.length].field_256 = arg2
    addressOf[addressOf.length].field_512 = block.timestamp
    emit CampaignRegistered(address(arg1), address(arg2), addressOf.length);
    return addressOf.length
}



}
