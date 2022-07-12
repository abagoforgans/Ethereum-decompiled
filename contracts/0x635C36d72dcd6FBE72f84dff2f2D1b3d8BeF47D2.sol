contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct agreement;

function getAgreement(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return agreement[arg1].field_0, 
           agreement[arg1].field_256,
           agreement[arg1].field_512,
           agreement[arg1].field_768,
           agreement[arg1].field_1024,
           agreement[arg1].field_1280,
           agreement[arg1].field_1536,
           bool(agreement[arg1].field_1792)
}

function _fallback() payable {
    revert
}

function sub_9aebccc8(?) payable {
    require calldata.size - 4 >= 160
    require arg4 > 0
    require arg3 > 0
    require arg5 > 0
    require arg1
    require arg2
    stor0++
    agreement[stor0 + 1].field_0 = arg1
    agreement[stor0 + 1].field_256 = arg2
    agreement[stor0 + 1].field_512 = msg.sender
    agreement[stor0 + 1].field_768 = arg5
    agreement[stor0 + 1].field_1024 = arg4
    agreement[stor0 + 1].field_1280 = arg3
    agreement[stor0 + 1].field_1536 = 0
    agreement[stor0 + 1].field_1792 = 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x947d2dc7: agreement[stor0 + 1].field_0, agreement[stor0 + 1].field_768, agreement[stor0 + 1].field_1024, agreement[stor0 + 1].field_1280, block.timestamp, stor0 + 1, agreement[stor0 + 1].field_256, agreement[stor0 + 1].field_512
}

function withdrawTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > stor0:
        revert with 0, 'Invalid agreement specified'
    if not arg1:
        revert with 0, 'Invalid agreement specified'
    require not agreement[arg1].field_1792
    require agreement[arg1].field_1024 + agreement[arg1].field_768 >= agreement[arg1].field_768
    if block.timestamp >= agreement[arg1].field_1024 + agreement[arg1].field_768:
        require agreement[arg1].field_1536 <= agreement[arg1].field_1280
        require agreement[arg1].field_1280 - agreement[arg1].field_1536 > 0
        require agreement[arg1].field_1280 >= agreement[arg1].field_1536
        agreement[arg1].field_1536 = agreement[arg1].field_1280
        require ext_code.size(agreement[arg1].field_0)
        call agreement[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args agreement[arg1].field_256, agreement[arg1].field_1280 - agreement[arg1].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xae7c0fdf: agreement[arg1].field_0, agreement[arg1].field_1280 - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
    else:
        if block.timestamp <= agreement[arg1].field_768:
            require agreement[arg1].field_1536 <= 0
            require -agreement[arg1].field_1536 > 0
            require 0 >= agreement[arg1].field_1536
            agreement[arg1].field_1536 = 0
            require ext_code.size(agreement[arg1].field_0)
            call agreement[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args agreement[arg1].field_256, -agreement[arg1].field_1536
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xae7c0fdf: agreement[arg1].field_0, -agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
        else:
            require agreement[arg1].field_768 <= block.timestamp
            if not agreement[arg1].field_1280:
                require agreement[arg1].field_1024 > 0
                require agreement[arg1].field_1024
                require agreement[arg1].field_1536 <= 0 / agreement[arg1].field_1024
                require (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                require 0 / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                agreement[arg1].field_1536 = 0 / agreement[arg1].field_1024
                require ext_code.size(agreement[arg1].field_0)
                call agreement[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args agreement[arg1].field_256, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xae7c0fdf: agreement[arg1].field_0, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
            else:
                require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1280 == block.timestamp - agreement[arg1].field_768
                require agreement[arg1].field_1024 > 0
                require agreement[arg1].field_1024
                require agreement[arg1].field_1536 <= (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                require ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                agreement[arg1].field_1536 = (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                require ext_code.size(agreement[arg1].field_0)
                call agreement[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args agreement[arg1].field_256, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xae7c0fdf: agreement[arg1].field_0, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
}

function cancelAgreement(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == agreement[arg1].field_512
    require not agreement[arg1].field_1792
    require agreement[arg1].field_1024 + agreement[arg1].field_768 >= agreement[arg1].field_768
    if block.timestamp >= agreement[arg1].field_1024 + agreement[arg1].field_768:
        require agreement[arg1].field_1536 <= agreement[arg1].field_1280
        if agreement[arg1].field_1280 - agreement[arg1].field_1536 > 0:
            if arg1 > stor0:
                revert with 0, 'Invalid agreement specified'
            if not arg1:
                revert with 0, 'Invalid agreement specified'
            require not agreement[arg1].field_1792
            require agreement[arg1].field_1024 + agreement[arg1].field_768 >= agreement[arg1].field_768
            if block.timestamp >= agreement[arg1].field_1024 + agreement[arg1].field_768:
                require agreement[arg1].field_1536 <= agreement[arg1].field_1280
                require agreement[arg1].field_1280 - agreement[arg1].field_1536 > 0
                require agreement[arg1].field_1280 >= agreement[arg1].field_1536
                agreement[arg1].field_1536 = agreement[arg1].field_1280
                require ext_code.size(agreement[arg1].field_0)
                call agreement[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args agreement[arg1].field_256, agreement[arg1].field_1280 - agreement[arg1].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xae7c0fdf: agreement[arg1].field_0, agreement[arg1].field_1280 - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
            else:
                if block.timestamp <= agreement[arg1].field_768:
                    require agreement[arg1].field_1536 <= 0
                    require -agreement[arg1].field_1536 > 0
                    require 0 >= agreement[arg1].field_1536
                    agreement[arg1].field_1536 = 0
                    require ext_code.size(agreement[arg1].field_0)
                    call agreement[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args agreement[arg1].field_256, -agreement[arg1].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xae7c0fdf: agreement[arg1].field_0, -agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                else:
                    require agreement[arg1].field_768 <= block.timestamp
                    if not agreement[arg1].field_1280:
                        require agreement[arg1].field_1024 > 0
                        require agreement[arg1].field_1024
                        require agreement[arg1].field_1536 <= 0 / agreement[arg1].field_1024
                        require (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                        require 0 / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                        agreement[arg1].field_1536 = 0 / agreement[arg1].field_1024
                        require ext_code.size(agreement[arg1].field_0)
                        call agreement[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args agreement[arg1].field_256, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xae7c0fdf: agreement[arg1].field_0, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                    else:
                        require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1280 == block.timestamp - agreement[arg1].field_768
                        require agreement[arg1].field_1024 > 0
                        require agreement[arg1].field_1024
                        require agreement[arg1].field_1536 <= (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                        require ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                        require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                        agreement[arg1].field_1536 = (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                        require ext_code.size(agreement[arg1].field_0)
                        call agreement[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args agreement[arg1].field_256, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xae7c0fdf: agreement[arg1].field_0, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
    else:
        if block.timestamp <= agreement[arg1].field_768:
            require agreement[arg1].field_1536 <= 0
            if -agreement[arg1].field_1536 > 0:
                if arg1 > stor0:
                    revert with 0, 'Invalid agreement specified'
                if not arg1:
                    revert with 0, 'Invalid agreement specified'
                require not agreement[arg1].field_1792
                require agreement[arg1].field_1024 + agreement[arg1].field_768 >= agreement[arg1].field_768
                if block.timestamp >= agreement[arg1].field_1024 + agreement[arg1].field_768:
                    require agreement[arg1].field_1536 <= agreement[arg1].field_1280
                    require agreement[arg1].field_1280 - agreement[arg1].field_1536 > 0
                    require agreement[arg1].field_1280 >= agreement[arg1].field_1536
                    agreement[arg1].field_1536 = agreement[arg1].field_1280
                    require ext_code.size(agreement[arg1].field_0)
                    call agreement[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args agreement[arg1].field_256, agreement[arg1].field_1280 - agreement[arg1].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xae7c0fdf: agreement[arg1].field_0, agreement[arg1].field_1280 - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                else:
                    if block.timestamp <= agreement[arg1].field_768:
                        require agreement[arg1].field_1536 <= 0
                        require -agreement[arg1].field_1536 > 0
                        require 0 >= agreement[arg1].field_1536
                        agreement[arg1].field_1536 = 0
                        require ext_code.size(agreement[arg1].field_0)
                        call agreement[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args agreement[arg1].field_256, -agreement[arg1].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xae7c0fdf: agreement[arg1].field_0, -agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                    else:
                        require agreement[arg1].field_768 <= block.timestamp
                        if not agreement[arg1].field_1280:
                            require agreement[arg1].field_1024 > 0
                            require agreement[arg1].field_1024
                            require agreement[arg1].field_1536 <= 0 / agreement[arg1].field_1024
                            require (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                            require 0 / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                            agreement[arg1].field_1536 = 0 / agreement[arg1].field_1024
                            require ext_code.size(agreement[arg1].field_0)
                            call agreement[arg1].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args agreement[arg1].field_256, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xae7c0fdf: agreement[arg1].field_0, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                        else:
                            require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1280 == block.timestamp - agreement[arg1].field_768
                            require agreement[arg1].field_1024 > 0
                            require agreement[arg1].field_1024
                            require agreement[arg1].field_1536 <= (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                            require ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                            require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                            agreement[arg1].field_1536 = (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                            require ext_code.size(agreement[arg1].field_0)
                            call agreement[arg1].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args agreement[arg1].field_256, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xae7c0fdf: agreement[arg1].field_0, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
        else:
            require agreement[arg1].field_768 <= block.timestamp
            if not agreement[arg1].field_1280:
                require agreement[arg1].field_1024 > 0
                require agreement[arg1].field_1024
                require agreement[arg1].field_1536 <= 0 / agreement[arg1].field_1024
                if (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0:
                    if arg1 > stor0:
                        revert with 0, 'Invalid agreement specified'
                    if not arg1:
                        revert with 0, 'Invalid agreement specified'
                    require not agreement[arg1].field_1792
                    require agreement[arg1].field_1024 + agreement[arg1].field_768 >= agreement[arg1].field_768
                    if block.timestamp >= agreement[arg1].field_1024 + agreement[arg1].field_768:
                        require agreement[arg1].field_1536 <= agreement[arg1].field_1280
                        require agreement[arg1].field_1280 - agreement[arg1].field_1536 > 0
                        require agreement[arg1].field_1280 >= agreement[arg1].field_1536
                        agreement[arg1].field_1536 = agreement[arg1].field_1280
                        require ext_code.size(agreement[arg1].field_0)
                        call agreement[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args agreement[arg1].field_256, agreement[arg1].field_1280 - agreement[arg1].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xae7c0fdf: agreement[arg1].field_0, agreement[arg1].field_1280 - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                    else:
                        if block.timestamp <= agreement[arg1].field_768:
                            require agreement[arg1].field_1536 <= 0
                            require -agreement[arg1].field_1536 > 0
                            require 0 >= agreement[arg1].field_1536
                            agreement[arg1].field_1536 = 0
                            require ext_code.size(agreement[arg1].field_0)
                            call agreement[arg1].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args agreement[arg1].field_256, -agreement[arg1].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xae7c0fdf: agreement[arg1].field_0, -agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                        else:
                            require agreement[arg1].field_768 <= block.timestamp
                            if not agreement[arg1].field_1280:
                                require agreement[arg1].field_1024 > 0
                                require agreement[arg1].field_1024
                                require agreement[arg1].field_1536 <= 0 / agreement[arg1].field_1024
                                require (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                                require 0 / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                                agreement[arg1].field_1536 = 0 / agreement[arg1].field_1024
                                require ext_code.size(agreement[arg1].field_0)
                                call agreement[arg1].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args agreement[arg1].field_256, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xae7c0fdf: agreement[arg1].field_0, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                            else:
                                require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1280 == block.timestamp - agreement[arg1].field_768
                                require agreement[arg1].field_1024 > 0
                                require agreement[arg1].field_1024
                                require agreement[arg1].field_1536 <= (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                                require ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                                require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                                agreement[arg1].field_1536 = (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                                require ext_code.size(agreement[arg1].field_0)
                                call agreement[arg1].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args agreement[arg1].field_256, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xae7c0fdf: agreement[arg1].field_0, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
            else:
                require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1280 == block.timestamp - agreement[arg1].field_768
                require agreement[arg1].field_1024 > 0
                require agreement[arg1].field_1024
                require agreement[arg1].field_1536 <= (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                if ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0:
                    if arg1 > stor0:
                        revert with 0, 'Invalid agreement specified'
                    if not arg1:
                        revert with 0, 'Invalid agreement specified'
                    require not agreement[arg1].field_1792
                    require agreement[arg1].field_1024 + agreement[arg1].field_768 >= agreement[arg1].field_768
                    if block.timestamp >= agreement[arg1].field_1024 + agreement[arg1].field_768:
                        require agreement[arg1].field_1536 <= agreement[arg1].field_1280
                        require agreement[arg1].field_1280 - agreement[arg1].field_1536 > 0
                        require agreement[arg1].field_1280 >= agreement[arg1].field_1536
                        agreement[arg1].field_1536 = agreement[arg1].field_1280
                        require ext_code.size(agreement[arg1].field_0)
                        call agreement[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args agreement[arg1].field_256, agreement[arg1].field_1280 - agreement[arg1].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xae7c0fdf: agreement[arg1].field_0, agreement[arg1].field_1280 - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                    else:
                        if block.timestamp <= agreement[arg1].field_768:
                            require agreement[arg1].field_1536 <= 0
                            require -agreement[arg1].field_1536 > 0
                            require 0 >= agreement[arg1].field_1536
                            agreement[arg1].field_1536 = 0
                            require ext_code.size(agreement[arg1].field_0)
                            call agreement[arg1].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args agreement[arg1].field_256, -agreement[arg1].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xae7c0fdf: agreement[arg1].field_0, -agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                        else:
                            require agreement[arg1].field_768 <= block.timestamp
                            if not agreement[arg1].field_1280:
                                require agreement[arg1].field_1024 > 0
                                require agreement[arg1].field_1024
                                require agreement[arg1].field_1536 <= 0 / agreement[arg1].field_1024
                                require (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                                require 0 / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                                agreement[arg1].field_1536 = 0 / agreement[arg1].field_1024
                                require ext_code.size(agreement[arg1].field_0)
                                call agreement[arg1].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args agreement[arg1].field_256, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xae7c0fdf: agreement[arg1].field_0, (0 / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
                            else:
                                require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1280 == block.timestamp - agreement[arg1].field_768
                                require agreement[arg1].field_1024 > 0
                                require agreement[arg1].field_1024
                                require agreement[arg1].field_1536 <= (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                                require ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536 > 0
                                require (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024 >= agreement[arg1].field_1536
                                agreement[arg1].field_1536 = (block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024
                                require ext_code.size(agreement[arg1].field_0)
                                call agreement[arg1].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args agreement[arg1].field_256, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xae7c0fdf: agreement[arg1].field_0, ((block.timestamp * agreement[arg1].field_1280) - (agreement[arg1].field_768 * agreement[arg1].field_1280) / agreement[arg1].field_1024) - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
    require agreement[arg1].field_1536 <= agreement[arg1].field_1280
    require ext_code.size(agreement[arg1].field_0)
    call agreement[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args agreement[arg1].field_512, agreement[arg1].field_1280 - agreement[arg1].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    agreement[arg1].field_1792 = 1
    emit 0x4975aea2: agreement[arg1].field_0, agreement[arg1].field_768, agreement[arg1].field_1536, agreement[arg1].field_1280 - agreement[arg1].field_1536, block.timestamp, arg1, agreement[arg1].field_256, agreement[arg1].field_512
}



}
