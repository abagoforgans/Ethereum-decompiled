contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor4;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint8 stor12; offset 152
address stor12;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = this.address
    stor7 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    stor8 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor9 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor10 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    stor11 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    Mask(152, 0, stor12.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor12.field_152) = 0
    stor0 = msg.sender
    return code.data[483 len 2533]
}



// =====================  Runtime code  =====================


address stor0;
address newOwner;
address senderAddress;
address owner;
array of uint256 version;
address etherTokenAddress;
address selfAddress;
address stor7;

function selfAddress() {
    return selfAddress
}

function version() {
    return version[0 len version.length]
}

function sender() {
    return senderAddress
}

function owner() {
    return owner
}

function etherToken() {
    return etherTokenAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    require stor0 != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(stor0, newOwner);
    stor0 = newOwner
    newOwner = 0
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require stor0 == msg.sender
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_56315214(?) {
    if arg2 != msg.value:
        if not arg1:
            delegate stor7 with:
               funct (Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224)
                 gas gas_remaining - 710 wei
                args arg2
            require delegate.return_code
        else:
            if 1 == arg1:
                delegate stor7 with:
                   funct (Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224)
                     gas gas_remaining - 710 wei
                    args msg.value
                require delegate.return_code
            else:
                if 2 == arg1:
                    delegate stor7 with:
                       funct (Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224)
                         gas gas_remaining - 710 wei
                        args msg.value
                    require delegate.return_code
                else:
                    if 3 == arg1:
                        call stor7 with:
                           funct Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224
                             gas 200000 wei
                            args arg2
                    else:
                        if 4 == arg1:
                            call stor7 with:
                               funct Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224
                                 gas 200000 wei
                                args msg.value
                        else:
                            if 5 == arg1:
                                delegate stor7 with:
                                   funct (Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224)
                                     gas gas_remaining - 710 wei
                                    args arg2
                                require delegate.return_code
                            else:
                                if 6 == arg1:
                                    call stor7 with:
                                       funct Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224
                                         gas 200000 wei
                                        args arg2
                                else:
                                    if 7 == arg1:
                                        call stor7 with:
                                           funct Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224
                                             gas 200000 wei
                                            args msg.value
    else:
        if not arg1:
            delegate stor7 with:
               funct (Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224)
                 gas gas_remaining - 710 wei
                args msg.value
            require delegate.return_code
        else:
            if 1 == arg1:
                delegate stor7 with:
                   funct (Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224)
                     gas gas_remaining - 710 wei
                    args msg.value
                require delegate.return_code
            else:
                if 2 == arg1:
                    delegate stor7 with:
                       funct (Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224)
                         gas gas_remaining - 710 wei
                        args msg.value
                    require delegate.return_code
                else:
                    if 3 == arg1:
                        call stor7 with:
                           funct Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224
                             gas 200000 wei
                            args msg.value
                    else:
                        if 4 == arg1:
                            call stor7 with:
                               funct Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224
                                 gas 200000 wei
                                args msg.value
                        else:
                            if 5 == arg1:
                                delegate stor7 with:
                                   funct (Mask(32, 224, sha3(0x6574686572416464726573732e73656e642875696e74323536)) >> 224)
                                     gas gas_remaining - 710 wei
                                    args msg.value
                                require delegate.return_code
                            else:
                                if 6 == arg1:
                                    call stor7 with:
                                       funct Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224
                                         gas 200000 wei
                                        args msg.value
                                else:
                                    if 7 == arg1:
                                        call stor7 with:
                                           funct Mask(32, 224, sha3(0x6574686572416464726573732e7472616e736665722875696e74323536)) >> 224
                                             gas 200000 wei
                                            args msg.value
}



}
