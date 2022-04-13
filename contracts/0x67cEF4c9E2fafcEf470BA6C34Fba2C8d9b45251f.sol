contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[96 len 2228]
}



// =====================  Runtime code  =====================


address authorityAddress;
uint8 stor1; offset 160
address owner;
uint256 stor2;
uint128 zzz;

function owner() {
    return owner
}

function zzz() {
    return zzz
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function peek() {
    if not stor1:
        return stor2, bool(stor1)
    return stor2, block.timestamp < zzz
}

function read() {
    if stor1:
        if block.timestamp < zzz:
            return stor2
    else:
        if block.timestamp < zzz:
            if stor1:
                return stor2
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function void() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor1 = 0
}

function poke(bytes32 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor2 = arg1
    stor1 = 1
}

function prod(bytes32 arg1, uint128 arg2) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    zzz = arg2
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor2 = arg1
    stor1 = 1
}

function poke(address arg1, bytes32 arg2) {
    if msg.sender == this.address:
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        if msg.sender == this.address:
            stor2 = arg2
            stor1 = 1
            call arg1 with:
               funct Mask(32, 224, sha3('poke()')) >> 224
                 gas gas_remaining - 25710 wei
            if ext_call.success:
        else:
            if owner == msg.sender:
                stor2 = arg2
                stor1 = 1
                call arg1 with:
                   funct Mask(32, 224, sha3('poke()')) >> 224
                     gas gas_remaining - 25710 wei
                if ext_call.success:
            else:
                if authorityAddress:
                    require ext_code.size(authorityAddress)
                    call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), call.func_hash
                    require ext_call.success
                    if ext_call.return_data[0]:
                        stor2 = arg2
                        stor1 = 1
                        call arg1 with:
                           funct Mask(32, 224, sha3('poke()')) >> 224
                             gas gas_remaining - 25710 wei
                        if ext_call.success:
    else:
        if owner == msg.sender:
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            if msg.sender == this.address:
                stor2 = arg2
                stor1 = 1
                call arg1 with:
                   funct Mask(32, 224, sha3('poke()')) >> 224
                     gas gas_remaining - 25710 wei
                if ext_call.success:
            else:
                if owner == msg.sender:
                    stor2 = arg2
                    stor1 = 1
                    call arg1 with:
                       funct Mask(32, 224, sha3('poke()')) >> 224
                         gas gas_remaining - 25710 wei
                    if ext_call.success:
                else:
                    if authorityAddress:
                        require ext_code.size(authorityAddress)
                        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), call.func_hash
                        require ext_call.success
                        if ext_call.return_data[0]:
                            stor2 = arg2
                            stor1 = 1
                            call arg1 with:
                               funct Mask(32, 224, sha3('poke()')) >> 224
                                 gas gas_remaining - 25710 wei
                            if ext_call.success:
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                if ext_call.return_data[0]:
                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                    if msg.sender == this.address:
                        stor2 = arg2
                        stor1 = 1
                        call arg1 with:
                           funct Mask(32, 224, sha3('poke()')) >> 224
                             gas gas_remaining - 25710 wei
                        if ext_call.success:
                    else:
                        if owner == msg.sender:
                            stor2 = arg2
                            stor1 = 1
                            call arg1 with:
                               funct Mask(32, 224, sha3('poke()')) >> 224
                                 gas gas_remaining - 25710 wei
                            if ext_call.success:
                        else:
                            if authorityAddress:
                                require ext_code.size(authorityAddress)
                                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(this.address), call.func_hash
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    stor2 = arg2
                                    stor1 = 1
                                    call arg1 with:
                                       funct Mask(32, 224, sha3('poke()')) >> 224
                                         gas gas_remaining - 25710 wei
                                    if ext_call.success:
    revert
}

function prod(address arg1, bytes32 arg2, uint128 arg3) {
    if msg.sender == this.address:
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        if msg.sender == this.address:
            zzz = arg3
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            if msg.sender == this.address:
                stor2 = arg2
                stor1 = 1
                call arg1 with:
                   funct Mask(32, 224, sha3('poke()')) >> 224
                     gas gas_remaining - 25710 wei
                if ext_call.success:
            else:
                if owner == msg.sender:
                    stor2 = arg2
                    stor1 = 1
                    call arg1 with:
                       funct Mask(32, 224, sha3('poke()')) >> 224
                         gas gas_remaining - 25710 wei
                    if ext_call.success:
                else:
                    if authorityAddress:
                        require ext_code.size(authorityAddress)
                        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), call.func_hash
                        require ext_call.success
                        if ext_call.return_data[0]:
                            stor2 = arg2
                            stor1 = 1
                            call arg1 with:
                               funct Mask(32, 224, sha3('poke()')) >> 224
                                 gas gas_remaining - 25710 wei
                            if ext_call.success:
        else:
            if owner == msg.sender:
                zzz = arg3
                emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                if msg.sender == this.address:
                    stor2 = arg2
                    stor1 = 1
                    call arg1 with:
                       funct Mask(32, 224, sha3('poke()')) >> 224
                         gas gas_remaining - 25710 wei
                    if ext_call.success:
                else:
                    if owner == msg.sender:
                        stor2 = arg2
                        stor1 = 1
                        call arg1 with:
                           funct Mask(32, 224, sha3('poke()')) >> 224
                             gas gas_remaining - 25710 wei
                        if ext_call.success:
                    else:
                        if authorityAddress:
                            require ext_code.size(authorityAddress)
                            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), call.func_hash
                            require ext_call.success
                            if ext_call.return_data[0]:
                                stor2 = arg2
                                stor1 = 1
                                call arg1 with:
                                   funct Mask(32, 224, sha3('poke()')) >> 224
                                     gas gas_remaining - 25710 wei
                                if ext_call.success:
            else:
                if authorityAddress:
                    require ext_code.size(authorityAddress)
                    call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), call.func_hash
                    require ext_call.success
                    if ext_call.return_data[0]:
                        zzz = arg3
                        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                        if msg.sender == this.address:
                            stor2 = arg2
                            stor1 = 1
                            call arg1 with:
                               funct Mask(32, 224, sha3('poke()')) >> 224
                                 gas gas_remaining - 25710 wei
                            if ext_call.success:
                        else:
                            if owner == msg.sender:
                                stor2 = arg2
                                stor1 = 1
                                call arg1 with:
                                   funct Mask(32, 224, sha3('poke()')) >> 224
                                     gas gas_remaining - 25710 wei
                                if ext_call.success:
                            else:
                                if authorityAddress:
                                    require ext_code.size(authorityAddress)
                                    call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(this.address), call.func_hash
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        stor2 = arg2
                                        stor1 = 1
                                        call arg1 with:
                                           funct Mask(32, 224, sha3('poke()')) >> 224
                                             gas gas_remaining - 25710 wei
                                        if ext_call.success:
    else:
        if owner == msg.sender:
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            if msg.sender == this.address:
                zzz = arg3
                emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                if msg.sender == this.address:
                    stor2 = arg2
                    stor1 = 1
                    call arg1 with:
                       funct Mask(32, 224, sha3('poke()')) >> 224
                         gas gas_remaining - 25710 wei
                    if ext_call.success:
                else:
                    if owner == msg.sender:
                        stor2 = arg2
                        stor1 = 1
                        call arg1 with:
                           funct Mask(32, 224, sha3('poke()')) >> 224
                             gas gas_remaining - 25710 wei
                        if ext_call.success:
                    else:
                        if authorityAddress:
                            require ext_code.size(authorityAddress)
                            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), call.func_hash
                            require ext_call.success
                            if ext_call.return_data[0]:
                                stor2 = arg2
                                stor1 = 1
                                call arg1 with:
                                   funct Mask(32, 224, sha3('poke()')) >> 224
                                     gas gas_remaining - 25710 wei
                                if ext_call.success:
            else:
                if owner == msg.sender:
                    zzz = arg3
                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                    if msg.sender == this.address:
                        stor2 = arg2
                        stor1 = 1
                        call arg1 with:
                           funct Mask(32, 224, sha3('poke()')) >> 224
                             gas gas_remaining - 25710 wei
                        if ext_call.success:
                    else:
                        if owner == msg.sender:
                            stor2 = arg2
                            stor1 = 1
                            call arg1 with:
                               funct Mask(32, 224, sha3('poke()')) >> 224
                                 gas gas_remaining - 25710 wei
                            if ext_call.success:
                        else:
                            if authorityAddress:
                                require ext_code.size(authorityAddress)
                                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(this.address), call.func_hash
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    stor2 = arg2
                                    stor1 = 1
                                    call arg1 with:
                                       funct Mask(32, 224, sha3('poke()')) >> 224
                                         gas gas_remaining - 25710 wei
                                    if ext_call.success:
                else:
                    if authorityAddress:
                        require ext_code.size(authorityAddress)
                        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), call.func_hash
                        require ext_call.success
                        if ext_call.return_data[0]:
                            zzz = arg3
                            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                            if msg.sender == this.address:
                                stor2 = arg2
                                stor1 = 1
                                call arg1 with:
                                   funct Mask(32, 224, sha3('poke()')) >> 224
                                     gas gas_remaining - 25710 wei
                                if ext_call.success:
                            else:
                                if owner == msg.sender:
                                    stor2 = arg2
                                    stor1 = 1
                                    call arg1 with:
                                       funct Mask(32, 224, sha3('poke()')) >> 224
                                         gas gas_remaining - 25710 wei
                                    if ext_call.success:
                                else:
                                    if authorityAddress:
                                        require ext_code.size(authorityAddress)
                                        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, address(this.address), call.func_hash
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            stor2 = arg2
                                            stor1 = 1
                                            call arg1 with:
                                               funct Mask(32, 224, sha3('poke()')) >> 224
                                                 gas gas_remaining - 25710 wei
                                            if ext_call.success:
        else:
            if authorityAddress:
                require ext_code.size(authorityAddress)
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                if ext_call.return_data[0]:
                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                    if msg.sender == this.address:
                        zzz = arg3
                        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                        if msg.sender == this.address:
                            stor2 = arg2
                            stor1 = 1
                            call arg1 with:
                               funct Mask(32, 224, sha3('poke()')) >> 224
                                 gas gas_remaining - 25710 wei
                            if ext_call.success:
                        else:
                            if owner == msg.sender:
                                stor2 = arg2
                                stor1 = 1
                                call arg1 with:
                                   funct Mask(32, 224, sha3('poke()')) >> 224
                                     gas gas_remaining - 25710 wei
                                if ext_call.success:
                            else:
                                if authorityAddress:
                                    require ext_code.size(authorityAddress)
                                    call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(this.address), call.func_hash
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        stor2 = arg2
                                        stor1 = 1
                                        call arg1 with:
                                           funct Mask(32, 224, sha3('poke()')) >> 224
                                             gas gas_remaining - 25710 wei
                                        if ext_call.success:
                    else:
                        if owner == msg.sender:
                            zzz = arg3
                            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                            if msg.sender == this.address:
                                stor2 = arg2
                                stor1 = 1
                                call arg1 with:
                                   funct Mask(32, 224, sha3('poke()')) >> 224
                                     gas gas_remaining - 25710 wei
                                if ext_call.success:
                            else:
                                if owner == msg.sender:
                                    stor2 = arg2
                                    stor1 = 1
                                    call arg1 with:
                                       funct Mask(32, 224, sha3('poke()')) >> 224
                                         gas gas_remaining - 25710 wei
                                    if ext_call.success:
                                else:
                                    if authorityAddress:
                                        require ext_code.size(authorityAddress)
                                        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, address(this.address), call.func_hash
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            stor2 = arg2
                                            stor1 = 1
                                            call arg1 with:
                                               funct Mask(32, 224, sha3('poke()')) >> 224
                                                 gas gas_remaining - 25710 wei
                                            if ext_call.success:
                        else:
                            if authorityAddress:
                                require ext_code.size(authorityAddress)
                                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(this.address), call.func_hash
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    zzz = arg3
                                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                                    if msg.sender == this.address:
                                        stor2 = arg2
                                        stor1 = 1
                                        call arg1 with:
                                           funct Mask(32, 224, sha3('poke()')) >> 224
                                             gas gas_remaining - 25710 wei
                                        if ext_call.success:
                                    else:
                                        if owner == msg.sender:
                                            stor2 = arg2
                                            stor1 = 1
                                            call arg1 with:
                                               funct Mask(32, 224, sha3('poke()')) >> 224
                                                 gas gas_remaining - 25710 wei
                                            if ext_call.success:
                                        else:
                                            if authorityAddress:
                                                require ext_code.size(authorityAddress)
                                                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, address(this.address), call.func_hash
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    stor2 = arg2
                                                    stor1 = 1
                                                    call arg1 with:
                                                       funct Mask(32, 224, sha3('poke()')) >> 224
                                                         gas gas_remaining - 25710 wei
                                                    if ext_call.success:
    revert
}



}
