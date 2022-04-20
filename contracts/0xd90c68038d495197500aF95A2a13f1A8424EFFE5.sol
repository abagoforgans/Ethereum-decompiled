contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor3; offset 160
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor3 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 4368 * 24 * 3600
    stor9 = 17472 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor4 = code.data[2256 len 20]
    stor5 = code.data[2288 len 20]
    return code.data[183 len 2061]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1

const proxyPayment(address arg1) = 0


address owner;
address newOwner;
address shpAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
address trusteeAddress;
uint32 stor4;
address reserveAddress;
uint32 stor5;
address foundersAddress;
uint256 reserveTokens;
uint256 foundersTokens;
uint256 WEEKS_26;
uint256 WEEKS_104;

function foundersTokens() {
    return foundersTokens
}

function reserveTokens() {
    return reserveTokens
}

function WEEKS_104() {
    return WEEKS_104
}

function shp() {
    return shpAddress
}

function owner() {
    return owner
}

function grantsCreated() {
    return bool(uint8(stor3.field_160))
}

function tokenCountSet() {
    return bool(uint8(stor3.field_168))
}

function WEEKS_26() {
    return WEEKS_26
}

function newOwner() {
    return newOwner
}

function foundersAddress() {
    return address(foundersAddress)
}

function reserveAddress() {
    return address(reserveAddress)
}

function trustee() {
    return trusteeAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setContracts(address arg1, address arg2) {
    require owner == msg.sender
    shpAddress = arg1
    trusteeAddress = arg2
}

function setTokenCounts(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor3.field_168)
    reserveTokens = arg1
    foundersTokens = arg2
    uint8(stor3.field_168) = 1
}

function createVestingGrants() {
    require owner == msg.sender
    require not uint8(stor3.field_160)
    require ext_code.size(trusteeAddress)
    call trusteeAddress.0x5ee7e96d with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor4), reserveTokens, block.timestamp, block.timestamp + WEEKS_26, block.timestamp + WEEKS_104, 0
    require ext_call.success
    require ext_code.size(trusteeAddress)
    call trusteeAddress.0x5ee7e96d with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor5), foundersTokens, block.timestamp, block.timestamp + WEEKS_26, block.timestamp + WEEKS_104, 0
    require ext_call.success
    uint8(stor3.field_160) = 1
}



}
