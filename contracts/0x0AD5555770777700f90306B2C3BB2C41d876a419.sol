contract main {




// =====================  Runtime code  =====================


#
#  - setCOO(address arg1, bytes arg2)
#  - setTokenAddress(address arg1, bytes arg2)
#  - getCEOHashing(address arg1, uint256 arg2)
#  - getCOOHashing(address arg1, uint256 arg2)
#  - getTokenAddressHashing(address arg1, uint256 arg2)
#  - setCEO(address arg1, bytes arg2)
#
address ceoAddress;
address cfoAddress;
address cooAddress;
address systemAddress;
uint256 cLevelTxCount_;
mapping of struct nonce;
address sub_5b3c1da1Address;
address sub_46c14d27Address;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint8 stor8; offset 176
address prizeAddress;
address tokenAddress;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function prizeAddress() {
    return prizeAddress
}

function sub_46c14d27(?) {
    return sub_46c14d27Address
}

function CLevelTxCount_() {
    return cLevelTxCount_
}

function sub_5b3c1da1(?) {
    return sub_5b3c1da1Address
}

function cooAddress() {
    return cooAddress
}

function getNonce() {
    return nonce[msg.sender].field_0
}

function systemAddress() {
    return systemAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_70a7dadf(?) {
    return sha3(0, arg1, arg2, arg3, arg4)
}

function getCFOHashing(address arg1, uint256 arg2) {
    mem[216] = uint128(arg2), 0, uint32(arg1) or Mask(64, 192, mem[216])
    return sha3(0, arg1, uint64(arg2), mem[216 len 24])
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

function sub_6bee2b3b(?) {
    require tokenAddress
    require msg.sender == systemAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.recoverSigner(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 160, this.address, arg1, arg2, arg5, arg4.length, arg4[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.transferPreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 160, this.address, arg1, arg2, arg5, arg4.length, arg4[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x21b4a04b: arg3 << 192, arg1, address(ext_call.return_data[0])
}

function sub_6c719524(?) {
    require tokenAddress
    mem[236 len 96] = 0, arg3, arg1, arg2, Mask(160, 96, arg6) >> 96
    mem[268 len arg5.length] = arg5[all]
    if arg5.length != 65:
        require not systemAddress
    else:
        require 65 == arg5.length
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg3, arg1, arg2, arg6)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) - 256) + 27 << 248, mem[268], mem[300]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require systemAddress == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) - 256) + 27) != 28:
                require not systemAddress
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, arg3, arg1, arg2, arg6)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 96, 0, 0, ('param', 'arg6')), ('mem', ('range', 344, 20)))), 0) - 256) + 27 << 248, mem[268], mem[300]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require systemAddress == address(signer)
    require ext_code.size(tokenAddress)
    call tokenAddress.recoverSigner(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Array(len=arg4.length, data=arg4[all]), address(this.address), arg1, arg2, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.transferPreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Array(len=arg4.length, data=arg4[all]), address(this.address), arg1, arg2, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x21b4a04b: arg3 << 192, arg1, address(ext_call.return_data[0])
}

function setCFO(address arg1, bytes arg2) {
    if msg.sender == cooAddress:
        require arg1
        require ceoAddress != arg1
        require cooAddress != arg1
        mem[216] = nonce[msg.sender].field_0, 0, uint32(arg1) or Mask(64, 192, mem[216])
        _475 = sha3(0, arg1, nonce[msg.sender].field_192, mem[216 len 24])
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
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _475), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
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
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _475), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require address(signer) != msg.sender
                    if cooAddress != address(signer):
                        if ceoAddress != address(signer):
                            require cfoAddress == address(signer)
    else:
        if msg.sender == ceoAddress:
            require arg1
            require ceoAddress != arg1
            require cooAddress != arg1
            mem[216] = nonce[msg.sender].field_0, 0, uint32(arg1) or Mask(64, 192, mem[216])
            _480 = sha3(0, arg1, nonce[msg.sender].field_192, mem[216 len 24])
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
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _480), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
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
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _480), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        require address(signer) != msg.sender
                        if cooAddress != address(signer):
                            if ceoAddress != address(signer):
                                require cfoAddress == address(signer)
        else:
            require msg.sender == cfoAddress
            require arg1
            require ceoAddress != arg1
            require cooAddress != arg1
            mem[216] = nonce[msg.sender].field_0, 0, uint32(arg1) or Mask(64, 192, mem[216])
            _485 = sha3(0, arg1, nonce[msg.sender].field_192, mem[216 len 24])
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
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _485), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
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
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _485), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 280, 32))), 0) - 256) + 27 << 248, mem[216], mem[248]) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        require address(signer) != msg.sender
                        if cooAddress != address(signer):
                            if ceoAddress != address(signer):
                                require cfoAddress == address(signer)
    nonce[msg.sender].field_0++
    cfoAddress = arg1
    cLevelTxCount_++
}

function sub_1fc2ad65(?) {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0]
            else:
                require uint8(stor8.field_176) * ext_call.return_data[0] / ext_call.return_data[0] == uint8(stor8.field_176)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, uint8(stor8.field_176) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0] - (uint8(stor8.field_176) * ext_call.return_data[0] / 100)
        else:
            require uint8(stor8.field_160) * ext_call.return_data[0] / ext_call.return_data[0] == uint8(stor8.field_160)
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, uint8(stor8.field_160) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0] - (uint8(stor8.field_160) * ext_call.return_data[0] / 100)
            else:
                require uint8(stor8.field_176) * ext_call.return_data[0] / ext_call.return_data[0] == uint8(stor8.field_176)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, uint8(stor8.field_160) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, uint8(stor8.field_176) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0] - (uint8(stor8.field_160) * ext_call.return_data[0] / 100) - (uint8(stor8.field_176) * ext_call.return_data[0] / 100)
    else:
        require uint8(stor8.field_168) * ext_call.return_data[0] / ext_call.return_data[0] == uint8(stor8.field_168)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, uint8(stor8.field_168) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0] - (uint8(stor8.field_168) * ext_call.return_data[0] / 100)
            else:
                require uint8(stor8.field_176) * ext_call.return_data[0] / ext_call.return_data[0] == uint8(stor8.field_176)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, uint8(stor8.field_168) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, uint8(stor8.field_176) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0] - (uint8(stor8.field_168) * ext_call.return_data[0] / 100) - (uint8(stor8.field_176) * ext_call.return_data[0] / 100)
        else:
            require uint8(stor8.field_160) * ext_call.return_data[0] / ext_call.return_data[0] == uint8(stor8.field_160)
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, uint8(stor8.field_168) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, uint8(stor8.field_160) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0] - (uint8(stor8.field_168) * ext_call.return_data[0] / 100) - (uint8(stor8.field_160) * ext_call.return_data[0] / 100)
            else:
                require uint8(stor8.field_176) * ext_call.return_data[0] / ext_call.return_data[0] == uint8(stor8.field_176)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5b3c1da1Address, uint8(stor8.field_168) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args prizeAddress, uint8(stor8.field_160) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_46c14d27Address, uint8(stor8.field_176) * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args ceoAddress, ext_call.return_data[0] - (uint8(stor8.field_168) * ext_call.return_data[0] / 100) - (uint8(stor8.field_160) * ext_call.return_data[0] / 100) - (uint8(stor8.field_176) * ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
