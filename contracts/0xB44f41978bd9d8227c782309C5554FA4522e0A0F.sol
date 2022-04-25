contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 4641]
}



// =====================  Runtime code  =====================


const decimals = 18

const capacity = (2160493825 * 10^14 * 3600)


address owner;
address tokenAddress;
address kycAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 weiRaised;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint128 stor8; offset 168
uint128 stor8; offset 160
address walletAddress;

function pauseFlag() {
    return bool(uint8(stor8.field_168))
}

function initialized() {
    return bool(uint8(stor8.field_160))
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function kyc() {
    return kycAddress
}

function token() {
    return tokenAddress
}

function round() {
    return stor3, stor4, stor5, stor6
}

function pause() {
    require msg.sender == owner
    Mask(88, 0, stor8.field_168) = 1
}

function resume() {
    require msg.sender == owner
    Mask(88, 0, stor8.field_168) = 0
}

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0aff4365(?) {
    require uint8(stor8.field_160)
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require stor6 >= arg2
    require arg1
    require arg2 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require arg2 <= stor6
    stor6 -= arg2
}

function sub_7bd6984a(?) {
    require msg.sender == owner
    require arg2
    require arg3
    require not uint8(stor8.field_160)
    tokenAddress = arg2
    kycAddress = arg3
    require msg.sender == owner
    require arg1
    walletAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x88c041430a8cc6169490831d7f7aac4137ed9e90, 2160493825 * 10^13 * 3600
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x20f20cd8532a514c874bc8cc30e9f41e019b3142, 432098765 * 10^14 * 3600
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xba28febe61802f58fdd840c2244470d502e1ebcd, 2160493825 * 10^13 * 3600
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xa620230a7fafa4c76d788738c271f17e9fb4e138, 54012345625 * 10^12 * 3600
    require ext_call.success
    stor3 = arg4
    stor4 = arg5
    stor5 = 4753086415 * 10^13 * 3600
    stor6 = 4753086415 * 10^13 * 3600
    Mask(96, 0, stor8.field_160) = 1
}

function _fallback() payable {
    require uint8(stor8.field_160)
    require not uint8(stor8.field_168)
    require ext_code.size(kycAddress)
    call kycAddress.0x2c617c8c with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] == 1:
        require msg.value > 0
        require block.timestamp >= stor3
        require block.timestamp < stor4
        require msg.value
        require msg.value
        require 11330 * msg.value / msg.value == 11330
        require 11330 * msg.value > 0
        require stor6 >= 11330 * msg.value
        require msg.sender
        require 11330 * msg.value > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 11330 * msg.value
        require ext_call.success
        require 11330 * msg.value <= stor6
        stor6 += -11330 * msg.value
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokenPurchase(msg.value, 11330 * msg.value, msg.sender);
    else:
        require ext_call.return_data[0] == 2
        require msg.value > 0
        require block.timestamp >= stor3
        require block.timestamp < stor4
        require msg.value
        require msg.value
        require 11000 * msg.value / msg.value == 11000
        require 11000 * msg.value > 0
        require stor6 >= 11000 * msg.value
        require msg.sender
        require 11000 * msg.value > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 11000 * msg.value
        require ext_call.success
        require 11000 * msg.value <= stor6
        stor6 += -11000 * msg.value
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokenPurchase(msg.value, 11000 * msg.value, msg.sender);
}



}
