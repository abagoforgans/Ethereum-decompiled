contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    require not msg.value
    stor2 = code.data[11811 len 20]
    stor3 = code.data[11843 len 20]
    stor4 = code.data[11875 len 20]
    stor5 = code.data[11907 len 20]
    return code.data[428 len 11371]
}



// =====================  Runtime code  =====================


const blocksDelay = 5760


address owner;
address adminAddress;
address childAddress;
address canBurnWhiteListAddress;
address canReceiveMintWhitelistAddress;
address blackListAddress;
array of struct mintOperations;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
uint256 stor13;
uint128 stor14;
uint128 stor14; offset 80
address stor15;
uint256 stor16;
address stor17;
address stor18;
uint256 stor19;

function child() {
    return childAddress
}

function canReceiveMintWhitelist() {
    return canReceiveMintWhitelistAddress
}

function canBurnWhiteList() {
    return canBurnWhiteListAddress
}

function owner() {
    return owner
}

function blackList() {
    return blackListAddress
}

function mintOperations(uint256 arg1) {
    require arg1 < mintOperations.length
    return mintOperations[arg1].field_0, 
           mintOperations[arg1].field_256,
           mintOperations[arg1].field_512,
           mintOperations[arg1].field_768
}

function admin() {
    return adminAddress
}

function _fallback() {
  stop
}

function changeInsurerOperation() {
    return stor17, stor18, stor19
}

function transferOwnershipOperation() {
    return stor7, stor8, stor9
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function changeBurnBoundsOperation() {
    return stor10, stor11, stor12, stor13
}

function sub_d20c37f5(?) {
    return Mask(80, 0, stor14.field_0), Mask(80, 0, stor14.field_0), stor15, stor16
}

function transferAdminship(address arg1) {
    require msg.sender == owner
    emit AdminshipTransferred(adminAddress, arg1);
    adminAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function requestChangeInsurer(address arg1) {
    require msg.sender == adminAddress
    emit 0xc400bc7b: 192
    stor17 = arg1
    stor18 = adminAddress
    stor19 = block.number + 5760
}

function requestTransferOwnership(address arg1) {
    require msg.sender == adminAddress
    emit 0x35488035: 192
    stor7 = arg1
    stor8 = adminAddress
    stor9 = block.number + 5760
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function requestChangeBurnBounds(uint256 arg1, uint256 arg2) {
    require msg.sender == adminAddress
    emit 0x3051e39c: 224
    stor10 = arg1
    stor11 = arg2
    stor12 = adminAddress
    stor13 = block.number + 5760
}

function sub_7ec30266(?) {
    require msg.sender == adminAddress
    emit 0xf83b1bfc: 224
    Mask(80, 0, stor14.field_0) = Mask(80, 0, arg1)
    Mask(80, 0, stor14.field_80) = Mask(80, 0, arg2)
    stor15 = adminAddress
    stor16 = block.number + 5760
}

function updateList(address arg1, address arg2, bool arg3) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0xefbd9ec2 with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function finalizeChangeInsurer() {
    require msg.sender == adminAddress
    require stor18 == adminAddress
    require stor19 <= block.number
    stor17 = 0
    stor18 = 0
    stor19 = 0
    require ext_code.size(childAddress)
    call childAddress.0xbeaf56a6 with:
         gas gas_remaining - 710 wei
        args stor17
    require ext_call.success
}

function finalizeChangeBurnBounds() {
    require msg.sender == adminAddress
    require stor12 == adminAddress
    require stor13 <= block.number
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    require ext_code.size(childAddress)
    call childAddress.0x70df42e1 with:
         gas gas_remaining - 710 wei
        args stor10, stor11
    require ext_call.success
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_4e139149(?) {
    require msg.sender == adminAddress
    require stor15 == adminAddress
    require stor16 <= block.number
    Mask(80, 0, stor14.field_0) = 0
    Mask(80, 0, stor14.field_80) = 0
    stor15 = 0
    stor16 = 0
    require ext_code.size(childAddress)
    call childAddress.0x73f1caa5 with:
         gas gas_remaining - 710 wei
        args Mask(80, 0, stor14.field_0), Mask(80, 0, stor14.field_80)
    require ext_call.success
}

function finalizeMint(uint256 arg1) {
    require arg1 < mintOperations.length
    require mintOperations[arg1].field_512 == adminAddress
    require mintOperations[arg1].field_768 <= block.number
    require mintOperations[arg1].field_0 == msg.sender
    require arg1 < mintOperations.length
    mintOperations[arg1].field_0 = 0
    mintOperations[arg1].field_256 = 0
    mintOperations[arg1].field_512 = 0
    mintOperations[arg1].field_768 = 0
    require ext_code.size(childAddress)
    call childAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args mintOperations[arg1].field_0, mintOperations[arg1].field_256
    require ext_call.success
}

function requestMint(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    emit 0x7ab7adc4: 224, mintOperations.length, arg1
    mintOperations.length++
    if not mintOperations.length <= mintOperations.length + 1:
        idx = 4 * mintOperations.length + 1
        while 4 * mintOperations.length > idx:
            mintOperations[idx].field_0 = 0
            mintOperations[idx].field_256 = 0
            mintOperations[idx].field_512 = 0
            mintOperations[idx].field_768 = 0
            idx = idx + 4
            continue 
    mintOperations[mintOperations.length].field_0 = arg1
    mintOperations[mintOperations.length].field_256 = arg2
    mintOperations[mintOperations.length].field_512 = adminAddress
    mintOperations[mintOperations.length].field_768 = block.number + 5760
}

function sub_9d1d6b8a(?) {
    require stor8 == adminAddress
    require stor9 <= block.number
    require stor7 == msg.sender
    stor7 = 0
    stor8 = 0
    stor9 = 0
    require ext_code.size(childAddress)
    call childAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
    require ext_code.size(canBurnWhiteListAddress)
    call canBurnWhiteListAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
    require ext_code.size(canReceiveMintWhitelistAddress)
    call canReceiveMintWhitelistAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
    require ext_code.size(blackListAddress)
    call blackListAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
}



}
