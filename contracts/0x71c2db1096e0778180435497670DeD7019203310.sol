contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
address beneficiaryAddress;
array of struct stor6;
uint256 sub_6180c609;

function getBeneficiary() {
    return beneficiaryAddress
}

function sub_6180c609(?) {
    return sub_6180c609
}

function _fallback() payable {
    revert
}

function claim() {
    mem[64] = 224
    require msg.sender == beneficiaryAddress
    s = 96
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _61 = mem[64]
        mem[64] = mem[64] + 128
        mem[_61] = bool(stor6[idx].field_0)
        mem[_61 + 32] = stor6[idx].field_256
        mem[_61 + 64] = stor6[idx].field_512
        mem[_61 + 96] = bool(stor6[idx].field_768)
        if not stor6[idx].field_768:
            if stor6[idx].field_0:
                if bool(stor6[idx].field_0) == 1:
                    require stor6[idx].field_512 + stor2 >= stor6[idx].field_512
                    if stor6[idx].field_512 + stor2 < block.timestamp:
                        if not stor6[idx].field_256:
                            mem[mem[64] + 36] = 0
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < stor6.length
                            mem[0] = 6
                            stor6[idx].field_768 = 1
                            mem[mem[64]] = 0
                            mem[mem[64] + 32] = block.timestamp
                            emit Claimed(0, block.timestamp, msg.sender);
                        else:
                            require stor6[idx].field_256
                            require stor6[idx].field_256 * sub_6180c609 / stor6[idx].field_256 == sub_6180c609
                            mem[mem[64] + 36] = stor6[idx].field_256 * sub_6180c609 / 10000
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor6[idx].field_256 * sub_6180c609 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < stor6.length
                            mem[0] = 6
                            stor6[idx].field_768 = 1
                            mem[mem[64]] = stor6[idx].field_256 * sub_6180c609 / 10000
                            mem[mem[64] + 32] = block.timestamp
                            emit Claimed(stor6[idx].field_256 * sub_6180c609 / 10000, block.timestamp, msg.sender);
            else:
                require stor6[idx].field_512 + stor1 >= stor6[idx].field_512
                if stor6[idx].field_512 + stor1 < block.timestamp:
                    if not stor6[idx].field_256:
                        mem[mem[64] + 36] = 0
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < stor6.length
                        mem[0] = 6
                        stor6[idx].field_768 = 1
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = block.timestamp
                        emit Claimed(0, block.timestamp, msg.sender);
                    else:
                        require stor6[idx].field_256
                        require stor6[idx].field_256 * sub_6180c609 / stor6[idx].field_256 == sub_6180c609
                        mem[mem[64] + 36] = stor6[idx].field_256 * sub_6180c609 / 10000
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor6[idx].field_256 * sub_6180c609 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < stor6.length
                        mem[0] = 6
                        stor6[idx].field_768 = 1
                        mem[mem[64]] = stor6[idx].field_256 * sub_6180c609 / 10000
                        mem[mem[64] + 32] = block.timestamp
                        emit Claimed(stor6[idx].field_256 * sub_6180c609 / 10000, block.timestamp, msg.sender);
                else:
                    if bool(stor6[idx].field_0) == 1:
                        require stor6[idx].field_512 + stor2 >= stor6[idx].field_512
                        if stor6[idx].field_512 + stor2 < block.timestamp:
                            if not stor6[idx].field_256:
                                mem[mem[64] + 36] = 0
                                require ext_code.size(stor0)
                                call stor0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < stor6.length
                                mem[0] = 6
                                stor6[idx].field_768 = 1
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = block.timestamp
                                emit Claimed(0, block.timestamp, msg.sender);
                            else:
                                require stor6[idx].field_256
                                require stor6[idx].field_256 * sub_6180c609 / stor6[idx].field_256 == sub_6180c609
                                mem[mem[64] + 36] = stor6[idx].field_256 * sub_6180c609 / 10000
                                require ext_code.size(stor0)
                                call stor0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, stor6[idx].field_256 * sub_6180c609 / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < stor6.length
                                mem[0] = 6
                                stor6[idx].field_768 = 1
                                mem[mem[64]] = stor6[idx].field_256 * sub_6180c609 / 10000
                                mem[mem[64] + 32] = block.timestamp
                                emit Claimed(stor6[idx].field_256 * sub_6180c609 / 10000, block.timestamp, msg.sender);
        s = _61
        idx = idx + 1
        continue 
    return 0
}



}
