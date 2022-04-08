contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    require msg.value <= 0
    stor1 = code.data[2361 len 20]
    stor2 = code.data[2381 len 32]
    return code.data[134 len 2215]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 sub_3a0a82ad;
mapping of address ownerOf;
mapping of uint256 sub_9bf77fb4;
uint256 sub_4ad2daaf;

function sub_3a0a82ad(?) {
    return sub_3a0a82ad
}

function sub_4ad2daaf(?) {
    return sub_4ad2daaf
}

function ownerOf(bytes32 arg1) {
    return ownerOf[arg1]
}

function owner() {
    return owner
}

function sub_9bf77fb4(?) {
    return sub_9bf77fb4[arg1]
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() {
  stop
}

function setMinimumDeposit(uint256 arg1) {
    require owner == msg.sender
    sub_3a0a82ad = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function reclaimEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_ef5d6bbb(?) {
    require ownerOf[arg1] == msg.sender
    require arg2
    require arg2 != this.address
    require tokenAddress != arg2
    ownerOf[arg1] = arg2
    emit 0x575875f7: arg1, arg2
}

function reclaimContract(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function sub_dccbaa99(?) {
    require ownerOf[arg1] == msg.sender
    ownerOf[arg1] = 0
    sub_9bf77fb4[arg1] = 0
    require sub_9bf77fb4[arg1] <= sub_4ad2daaf
    sub_4ad2daaf -= sub_9bf77fb4[arg1]
    emit 0x575875f7: arg1, 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args ownerOf[arg1], sub_9bf77fb4[arg1]
    require ext_call.success
}

function sub_9ba55439(?) {
    require not ownerOf[arg1]
    require arg2 >= sub_3a0a82ad
    ownerOf[arg1] = msg.sender
    sub_9bf77fb4[arg1] = arg2
    require arg2 + sub_4ad2daaf >= sub_4ad2daaf
    sub_4ad2daaf += arg2
    emit 0x575875f7: arg1, msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if tokenAddress != arg1:
        if ext_code.size(arg1):
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0]
            if ext_call.success:
    else:
        if sub_4ad2daaf <= ext_call.return_data[0]:
            if ext_code.size(arg1):
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args owner, ext_call.return_data[0] - sub_4ad2daaf
                if ext_call.success:
    revert
}



}
