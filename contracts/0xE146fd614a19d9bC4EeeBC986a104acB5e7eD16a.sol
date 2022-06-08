contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address erc20tokenAddress;
address stor3;
address stor4;

function erc20token() {
    return erc20tokenAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_ae18fd2e(?) {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_2df04c27(?) {
    require msg.sender == owner
    stor3 = arg1
    stor4 = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferToken() {
    require ext_code.size(erc20tokenAddress)
    call erc20tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20tokenAddress)
    call erc20tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_059993a8(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require 0 < arg1.length
    erc20tokenAddress = mem[140 len 20]
    require ext_code.size(erc20tokenAddress)
    call erc20tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor3)
    call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe0b10d33: erc20tokenAddress, 0, arg2
}

function sub_c0b47ffd(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length - 1 < arg1.length
    erc20tokenAddress = mem[(32 * arg1.length - 1) + 140 len 20]
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor3)
    call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg2 wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20tokenAddress)
    call erc20tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe0b10d33: erc20tokenAddress, 1, ext_call.return_data[0]
}



}
