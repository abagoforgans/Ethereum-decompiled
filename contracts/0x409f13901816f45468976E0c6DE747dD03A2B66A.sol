contract main {


// =======================  Init code  ======================


address stor4;

function _fallback() {
    stor4 = code.data[3591 len 20]
    require ext_code.size(address(code.data[3579 len 32]))
    call address(code.data[3579 len 32]).0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('create(address,uint256,address,a', 'ddress,uint256)'))
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('authedBackout(address,uint256)'))
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('authedHold(address,uint256)'))
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('authedRefund(address,uint256)'))
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('authedAccept(address,uint256)'))
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('checkExpiry(address,uint256)'))
    require ext_call.success
    return code.data[1270 len 2309]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address stor1;
mapping of address stor2;
mapping of uint256 stor3;
address stor4;

function _fallback() payable {
    revert
}

function create(address arg1, uint256 arg2, address arg3, address arg4) {
    if stor4 == msg.sender:
        require stor0[arg2] <= 6
        require not stor0[arg2]
        stor0[arg2] = 1
        stor1[arg2] = arg3
        stor2[arg2] = arg4
        stor3[arg2] = 0
}

function sub_363a2e51(?) {
    if stor4 == msg.sender:
        require stor0[arg2] <= 6
        if stor0[arg2] == 1:
            if stor1[arg2] == arg1:
                stor0[arg2] = 2
                require stor0[arg2] <= 6
                emit 0x284a748f: arg2, stor0[arg2]
}

function sub_ea6c4d35(?) {
    if stor4 == msg.sender:
        require stor0[arg1] <= 6
        if stor0[arg1] == 3:
            if stor3[arg1] < block.timestamp:
                stor0[arg1] = 4
                require stor0[arg1] <= 6
                emit 0x284a748f: arg1, stor0[arg1]
}

function sub_2c8dae85(?) {
    if stor4 == msg.sender:
        require stor0[arg2] <= 6
        if stor0[arg2] == 1:
            if stor2[arg2] == arg1:
                stor0[arg2] = 3
                stor3[arg2] = block.timestamp + (168 * 24 * 3600)
                require stor0[arg2] <= 6
                emit 0x284a748f: arg2, stor0[arg2]
}

function sub_6a8ebe7e(?) {
    if stor4 == msg.sender:
        if stor1[arg2] == arg1:
            require stor0[arg2] <= 6
            if stor0[arg2] != 3:
                require stor0[arg2] <= 6
                if stor0[arg2] == 3:
                    if stor3[arg2] < block.timestamp:
                        stor0[arg2] = 4
                        require stor0[arg2] <= 6
                        emit 0x284a748f: arg2, stor0[arg2]
            else:
                if stor3[arg2] > block.timestamp:
                    stor0[arg2] = 6
                    require stor0[arg2] <= 6
                    emit 0x284a748f: arg2, stor0[arg2]
                else:
                    require stor0[arg2] <= 6
                    if stor0[arg2] == 3:
                        if stor3[arg2] < block.timestamp:
                            stor0[arg2] = 4
                            require stor0[arg2] <= 6
                            emit 0x284a748f: arg2, stor0[arg2]
}

function sub_9b9edebf(?) {
    if stor4 == msg.sender:
        if stor2[arg2] == arg1:
            require stor0[arg2] <= 6
            if stor0[arg2] != 3:
                require stor0[arg2] <= 6
                if stor0[arg2] == 6:
                    stor0[arg2] = 5
                    require stor0[arg2] <= 6
                    emit 0x284a748f: arg2, stor0[arg2]
                else:
                    require stor0[arg2] <= 6
                    if stor0[arg2] == 3:
                        if stor3[arg2] < block.timestamp:
                            stor0[arg2] = 4
                            require stor0[arg2] <= 6
                            emit 0x284a748f: arg2, stor0[arg2]
            else:
                if stor3[arg2] > block.timestamp:
                    stor0[arg2] = 5
                    require stor0[arg2] <= 6
                    emit 0x284a748f: arg2, stor0[arg2]
                else:
                    require stor0[arg2] <= 6
                    if stor0[arg2] == 6:
                        stor0[arg2] = 5
                        require stor0[arg2] <= 6
                        emit 0x284a748f: arg2, stor0[arg2]
                    else:
                        require stor0[arg2] <= 6
                        if stor0[arg2] == 3:
                            if stor3[arg2] < block.timestamp:
                                stor0[arg2] = 4
                                require stor0[arg2] <= 6
                                emit 0x284a748f: arg2, stor0[arg2]
}



}
