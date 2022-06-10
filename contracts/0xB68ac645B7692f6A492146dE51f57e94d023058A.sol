contract main {




// =====================  Runtime code  =====================


#
#  - sub_05151e10(?)
#  - setCOO(address arg1, bytes arg2)
#  - sub_38b95641(?)
#  - setTokenAddress(address arg1, bytes arg2)
#  - getCEOHashing(address arg1, uint256 arg2)
#  - getCOOHashing(address arg1, uint256 arg2)
#  - sub_8924eba6(?)
#  - getTokenAddressHashing(address arg1, uint256 arg2)
#  - setCEO(address arg1, bytes arg2)
#
address ceoAddress;
address cfoAddress;
address cooAddress;
address systemAddress;
mapping of struct nonces;
address tokenAddress;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function getNonces(address arg1) {
    return nonces[address(arg1)].field_0
}

function cooAddress() {
    return cooAddress
}

function systemAddress() {
    return systemAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function sub_bcba2c4f(?) {
    return sha3(0, arg1, arg2, arg3, Mask(192, 0, arg3))
}

function getCFOHashing(address arg1, uint256 arg2) {
    return sha3(0, arg1, uint64(arg2), Mask(192, 0, arg2))
}

function recover(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if arg2.length != 65:
        return 0
    require 65 == arg2.length
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            return 0
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), Mask(224, 0, arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function setCFO(address arg1, bytes arg2) {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require arg1
    require ceoAddress != arg1
    require cooAddress != arg1
    mem[216 len 24] = nonces[msg.sender].field_0
    mem[216 len arg2.length] = arg2[all]
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    if arg2.length != 65:
        require msg.sender
        if cooAddress:
            if ceoAddress:
                require not cfoAddress
    else:
        require 65 == arg2.length
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg1, nonces[msg.sender].field_192, nonces[msg.sender].field_0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) != msg.sender
            if cooAddress != address(signer):
                if ceoAddress != address(signer):
                    require cfoAddress == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27) != 28:
                require msg.sender
                if cooAddress:
                    if ceoAddress:
                        require not cfoAddress
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg1, nonces[msg.sender].field_192, nonces[msg.sender].field_0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require address(signer) != msg.sender
                if cooAddress != address(signer):
                    if ceoAddress != address(signer):
                        require cfoAddress == address(signer)
    nonces[msg.sender].field_0++
    cfoAddress = arg1
}

function sub_380987fc(?) {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    mem[216 len 64] = 0, arg1, arg2, nonces[msg.sender].field_192
    mem[248 len arg3.length] = arg3[all]
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    if arg3.length != 65:
        require msg.sender
        if cooAddress:
            if ceoAddress:
                require not cfoAddress
    else:
        require 65 == arg3.length
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg1, arg2, nonces[msg.sender].field_192, nonces[msg.sender].field_0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27 << 248, mem[248], nonces[msg.sender].field_0, mem[304 len 8]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) != msg.sender
            if cooAddress != address(signer):
                if ceoAddress != address(signer):
                    require cfoAddress == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27) != 28:
                require msg.sender
                if cooAddress:
                    if ceoAddress:
                        require not cfoAddress
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg1, arg2, nonces[msg.sender].field_192, nonces[msg.sender].field_0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27 << 248, mem[248], nonces[msg.sender].field_0, mem[304 len 8]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require address(signer) != msg.sender
                if cooAddress != address(signer):
                    if ceoAddress != address(signer):
                        require cfoAddress == address(signer)
    nonces[msg.sender].field_0++
    require eth.balance(this.address) > 0
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6d893147: address(arg1), arg2
}

function sub_ea01df7e(?) {
    require tokenAddress
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    mem[216 len 64] = 0, arg1, arg2, nonces[msg.sender].field_192
    mem[248 len arg3.length] = arg3[all]
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    if arg3.length != 65:
        require msg.sender
        if cooAddress:
            if ceoAddress:
                require not cfoAddress
    else:
        require 65 == arg3.length
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg1, arg2, nonces[msg.sender].field_192, nonces[msg.sender].field_0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27 << 248, mem[248], nonces[msg.sender].field_0, mem[304 len 8]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) != msg.sender
            if cooAddress != address(signer):
                if ceoAddress != address(signer):
                    require cfoAddress == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27) != 28:
                require msg.sender
                if cooAddress:
                    if ceoAddress:
                        require not cfoAddress
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg1, arg2, nonces[msg.sender].field_192, nonces[msg.sender].field_0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 312, 32))), 0) - 256) + 27 << 248, mem[248], nonces[msg.sender].field_0, mem[304 len 8]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require address(signer) != msg.sender
                if cooAddress != address(signer):
                    if ceoAddress != address(signer):
                        require cfoAddress == address(signer)
    nonces[msg.sender].field_0++
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x28699484: address(arg1), arg2
}



}
