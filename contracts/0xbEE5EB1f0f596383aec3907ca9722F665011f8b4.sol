contract main {




// =====================  Runtime code  =====================


address owner;
address signerAddress;
address protocolAddress;
address usdAddress;

function signer() {
    return signerAddress
}

function protocol() {
    return protocolAddress
}

function owner() {
    return owner
}

function usd() {
    return usdAddress
}

function _fallback() payable {
  stop
}

function setSigner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    signerAddress = arg1
}

function sub_fb3a1aab(?) {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function settle(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(protocolAddress)
    call protocolAddress.0x6a256b29 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fec6be0f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(protocolAddress)
    call protocolAddress.redeem(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_159a71dc(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(usdAddress)
    call usdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_70824841(?) payable {
    require calldata.size - 4 >= 256
    require msg.sender == tx.origin
    require arg2 > block.timestamp
    require arg1 <= 1
    signer = erecover(sha3(arg1, arg2, arg3, arg4, arg5), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == signerAddress
    require ext_code.size(protocolAddress)
    staticcall protocolAddress.seriesInfo(address arg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require arg1 <= 1
    if arg1:
        require not msg.value
        require ext_code.size(arg5)
        call arg5.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(protocolAddress)
        staticcall protocolAddress.writers(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg5), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            if ext_call.return_data[0] <= 0:
                call msg.sender with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(protocolAddress)
                call protocolAddress.close(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg5), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
        else:
            if arg4 <= 0:
                call msg.sender with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(protocolAddress)
                call protocolAddress.close(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg5), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
    else:
        require msg.value == arg4
        require ext_code.size(arg5)
        staticcall arg5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            if arg3 - ext_call.return_data[0] > 0:
                require ext_call.return_data[32] <= 1
                require ext_code.size(protocolAddress)
                if ext_call.return_data[32]:
                    call protocolAddress.open(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), arg3 - ext_call.return_data[0]
                else:
                    call protocolAddress.open(address arg1, uint256 arg2) with:
                       value arg3 - ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(arg5), arg3 - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg5)
        call arg5.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
