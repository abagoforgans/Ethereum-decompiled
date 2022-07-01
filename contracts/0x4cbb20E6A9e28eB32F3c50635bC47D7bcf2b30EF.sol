contract main {




// =====================  Runtime code  =====================


#
#  - sub_571e76f7(?)
#
address brokerAddress;
mapping of struct swaps;
mapping of uint8 stor2;

function broker() {
    return brokerAddress
}

function usedHashes(bytes32 arg1) {
    return bool(stor2[arg1])
}

function swaps(bytes32 arg1) {
    return swaps[arg1].field_0, 
           swaps[arg1].field_256,
           swaps[arg1].field_512,
           swaps[arg1].field_768,
           swaps[arg1].field_1024,
           swaps[arg1].field_1280,
           swaps[arg1].field_1536,
           bool(swaps[arg1].field_1792)
}

function _fallback() payable {
    revert
}

function sub_90a6ba88(?) {
    require ext_code.size(brokerAddress)
    call brokerAddress.approveSpender(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_410adb4d(?) {
    if not swaps[arg1].field_1792:
        revert with 0, 'Swap is inactive'
    hash = sha256hash(arg2[all]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = sha256hash(hash) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if hash != arg1:
        revert with 0, 'Invalid preimage'
    swaps[arg1].field_0 = 0
    swaps[arg1].field_256 = 0
    swaps[arg1].field_512 = 0
    swaps[arg1].field_768 = 0
    swaps[arg1].field_1024 = 0
    swaps[arg1].field_1280 = 0
    swaps[arg1].field_1536 = 0
    swaps[arg1].field_1792 = 0
    require ext_code.size(brokerAddress)
    if swaps[arg1].field_512 != swaps[arg1].field_768:
        call brokerAddress.0x66acab4c with:
             gas gas_remaining wei
            args this.address, swaps[arg1].field_256, swaps[arg1].field_1024, swaps[arg1].field_512, 52, 53
    else:
        call brokerAddress.0x66acab4c with:
             gas gas_remaining wei
            args this.address, swaps[arg1].field_256, swaps[arg1].field_1024 - swaps[arg1].field_1536, swaps[arg1].field_512, 52, 53
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if swaps[arg1].field_1536 > 0:
        require ext_code.size(brokerAddress)
        call brokerAddress.operator() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(brokerAddress)
        call brokerAddress.0x66acab4c with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0]), swaps[arg1].field_1536, swaps[arg1].field_768, 54, 55
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xb8f777c2: arg1
}

function sub_14488fe4(?) {
    if not swaps[arg1].field_1792:
        revert with 0, 'Swap is inactive'
    if block.timestamp < swaps[arg1].field_1280:
        revert with 0, 'Cancellation time not yet reached'
    require ext_code.size(brokerAddress)
    call brokerAddress.coordinator() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        if swaps[arg1].field_1536 > swaps[arg1].field_1536:
            revert with 0, 'Cancel fee must be less than swap fee'
        swaps[arg1].field_0 = 0
        swaps[arg1].field_256 = 0
        swaps[arg1].field_512 = 0
        swaps[arg1].field_768 = 0
        swaps[arg1].field_1024 = 0
        swaps[arg1].field_1280 = 0
        swaps[arg1].field_1536 = 0
        swaps[arg1].field_1792 = 0
        require ext_code.size(brokerAddress)
        if swaps[arg1].field_512 != swaps[arg1].field_768:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args this.address, swaps[arg1].field_0, swaps[arg1].field_1024, swaps[arg1].field_512, 57, 56
        else:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args this.address, swaps[arg1].field_0, swaps[arg1].field_1024 - swaps[arg1].field_1536, swaps[arg1].field_512, 57, 56
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if swaps[arg1].field_1536 > 0:
            require ext_code.size(brokerAddress)
            call brokerAddress.operator() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(brokerAddress)
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0]), swaps[arg1].field_1536, swaps[arg1].field_768, 58, 59
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg2 > swaps[arg1].field_1536:
            revert with 0, 'Cancel fee must be less than swap fee'
        swaps[arg1].field_0 = 0
        swaps[arg1].field_256 = 0
        swaps[arg1].field_512 = 0
        swaps[arg1].field_768 = 0
        swaps[arg1].field_1024 = 0
        swaps[arg1].field_1280 = 0
        swaps[arg1].field_1536 = 0
        swaps[arg1].field_1792 = 0
        require ext_code.size(brokerAddress)
        if swaps[arg1].field_512 != swaps[arg1].field_768:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args this.address, swaps[arg1].field_0, swaps[arg1].field_1024, swaps[arg1].field_512, 57, 56
        else:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args this.address, swaps[arg1].field_0, swaps[arg1].field_1024 - arg2, swaps[arg1].field_512, 57, 56
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if swaps[arg1].field_1536 > 0:
            require ext_code.size(brokerAddress)
            call brokerAddress.operator() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(brokerAddress)
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0]), arg2, swaps[arg1].field_768, 58, 59
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if swaps[arg1].field_512 != swaps[arg1].field_768:
            if swaps[arg1].field_1536 - arg2 > 0:
                require ext_code.size(brokerAddress)
                call brokerAddress.0x66acab4c with:
                     gas gas_remaining wei
                    args this.address, swaps[arg1].field_0, swaps[arg1].field_1536 - arg2, swaps[arg1].field_768, 60, 61
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit 0xad8f5783: arg1
}



}
