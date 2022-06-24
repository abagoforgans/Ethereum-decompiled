contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x2585e4a14da274d02df09b222d4606b10a4e940
    stor0 = msg.sender
    return code.data[171 len 2590]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of uint8 stor2;

function owner() {
    return owner
}

function sub_ef09fb1e(?) {
    return bool(stor2[arg1])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function tokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOf(address arg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function returnOwnership() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.transferOwnership(address arg1) with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function returnTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOf(address arg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function sub_1020a8a2(?) {
    require msg.sender == owner
    require ('cd', 4).length == ('cd', 36).length
    require not stor2[cd[68]]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    stor2[cd[68]] = 1
}



}
