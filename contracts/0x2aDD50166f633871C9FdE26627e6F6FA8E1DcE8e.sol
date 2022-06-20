contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_8195ed24;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address sub_b075bfb4Address; offset 8

function sub_8195ed24(?) payable {
    require calldata.size - 4 >= 32
    return sub_8195ed24[arg1].field_0, 
           sub_8195ed24[arg1].field_256,
           sub_8195ed24[arg1].field_512,
           sub_8195ed24[arg1].field_768,
           sub_8195ed24[arg1].field_1024,
           bool(sub_8195ed24[arg1].field_1280)
}

function owner() payable {
    return owner
}

function sub_b075bfb4(?) payable {
    return sub_b075bfb4Address
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_b075bfb4Address = arg1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0e77e5e3(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == sub_b075bfb4Address
    require arg1
    sub_8195ed24[address(arg1)].field_0 = stor2
    sub_8195ed24[address(arg1)].field_256 = block.timestamp
    sub_8195ed24[address(arg1)].field_512 = stor3
    sub_8195ed24[address(arg1)].field_1024 = arg2
    sub_8195ed24[address(arg1)].field_768 = 0
    sub_8195ed24[address(arg1)].field_1280 = uint8(bool(stor4))
    return 1
}

function setVesting(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        require msg.sender == sub_b075bfb4Address
    require arg1
    require arg3 <= arg4
    sub_8195ed24[address(arg1)].field_0 = arg3
    sub_8195ed24[address(arg1)].field_256 = arg5
    sub_8195ed24[address(arg1)].field_512 = arg4
    sub_8195ed24[address(arg1)].field_1024 = arg2
    sub_8195ed24[address(arg1)].field_768 = 0
    sub_8195ed24[address(arg1)].field_1280 = 0
    return 1
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not sub_8195ed24[address(arg1)].field_1280
    require sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_0 >= sub_8195ed24[address(arg1)].field_256
    if block.timestamp < sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_0:
        require sub_8195ed24[address(arg1)].field_768 <= 0
        require -sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
        sub_8195ed24[address(arg1)].field_1280 = 1
        sub_8195ed24[address(arg1)].field_1024 = -sub_8195ed24[address(arg1)].field_768
        require ext_code.size(sub_b075bfb4Address)
        call sub_b075bfb4Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, sub_8195ed24[address(arg1)].field_1024 + sub_8195ed24[address(arg1)].field_768
    else:
        require sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_512 >= sub_8195ed24[address(arg1)].field_256
        if block.timestamp >= sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_512:
            require sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
            require sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
            sub_8195ed24[address(arg1)].field_1280 = 1
            sub_8195ed24[address(arg1)].field_1024 -= sub_8195ed24[address(arg1)].field_768
            require ext_code.size(sub_b075bfb4Address)
            call sub_b075bfb4Address.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, sub_8195ed24[address(arg1)].field_768
        else:
            if sub_8195ed24[address(arg1)].field_1280:
                require sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
                require sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
                sub_8195ed24[address(arg1)].field_1280 = 1
                sub_8195ed24[address(arg1)].field_1024 -= sub_8195ed24[address(arg1)].field_768
                require ext_code.size(sub_b075bfb4Address)
                call sub_b075bfb4Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, sub_8195ed24[address(arg1)].field_768
            else:
                require sub_8195ed24[address(arg1)].field_256 <= block.timestamp
                require sub_8195ed24[address(arg1)].field_0 > 0
                require sub_8195ed24[address(arg1)].field_0
                if not block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0:
                    if sub_8195ed24[address(arg1)].field_1024:
                        require sub_8195ed24[address(arg1)].field_1024
                        require not 0 / sub_8195ed24[address(arg1)].field_1024
                    require sub_8195ed24[address(arg1)].field_512 > 0
                    require sub_8195ed24[address(arg1)].field_512
                    require sub_8195ed24[address(arg1)].field_768 <= 0 / sub_8195ed24[address(arg1)].field_512
                    require (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
                    sub_8195ed24[address(arg1)].field_1280 = 1
                    sub_8195ed24[address(arg1)].field_1024 = (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768
                    require ext_code.size(sub_b075bfb4Address)
                    call sub_b075bfb4Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, sub_8195ed24[address(arg1)].field_1024 - (0 / sub_8195ed24[address(arg1)].field_512) + sub_8195ed24[address(arg1)].field_768
                else:
                    require block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0
                    require block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 == sub_8195ed24[address(arg1)].field_0
                    if not sub_8195ed24[address(arg1)].field_1024:
                        require sub_8195ed24[address(arg1)].field_512 > 0
                        require sub_8195ed24[address(arg1)].field_512
                        require sub_8195ed24[address(arg1)].field_768 <= 0 / sub_8195ed24[address(arg1)].field_512
                        require (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
                        sub_8195ed24[address(arg1)].field_1280 = 1
                        sub_8195ed24[address(arg1)].field_1024 = (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768
                        require ext_code.size(sub_b075bfb4Address)
                        call sub_b075bfb4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, sub_8195ed24[address(arg1)].field_1024 - (0 / sub_8195ed24[address(arg1)].field_512) + sub_8195ed24[address(arg1)].field_768
                    else:
                        require sub_8195ed24[address(arg1)].field_1024
                        require sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_1024 == block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0
                        require sub_8195ed24[address(arg1)].field_512 > 0
                        require sub_8195ed24[address(arg1)].field_512
                        require sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512
                        require (sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
                        sub_8195ed24[address(arg1)].field_1280 = 1
                        sub_8195ed24[address(arg1)].field_1024 = (sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768
                        require ext_code.size(sub_b075bfb4Address)
                        call sub_b075bfb4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, sub_8195ed24[address(arg1)].field_1024 - (sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512) + sub_8195ed24[address(arg1)].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit VestingRevoked(arg1);
}

function releaseToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_0 >= sub_8195ed24[address(arg1)].field_256
    if block.timestamp < sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_0:
        require sub_8195ed24[address(arg1)].field_768 <= 0
        require -sub_8195ed24[address(arg1)].field_768 > 0
        require 0 >= sub_8195ed24[address(arg1)].field_768
        sub_8195ed24[address(arg1)].field_768 = 0
        require ext_code.size(sub_b075bfb4Address)
        call sub_b075bfb4Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), -sub_8195ed24[address(arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenReleased(-sub_8195ed24[address(arg1)].field_768, arg1);
    else:
        require sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_512 >= sub_8195ed24[address(arg1)].field_256
        if block.timestamp >= sub_8195ed24[address(arg1)].field_256 + sub_8195ed24[address(arg1)].field_512:
            require sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
            require sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768 > 0
            require sub_8195ed24[address(arg1)].field_1024 >= sub_8195ed24[address(arg1)].field_768
            sub_8195ed24[address(arg1)].field_768 = sub_8195ed24[address(arg1)].field_1024
            require ext_code.size(sub_b075bfb4Address)
            call sub_b075bfb4Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenReleased((sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768), arg1);
        else:
            if sub_8195ed24[address(arg1)].field_1280:
                require sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024
                require sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768 > 0
                require sub_8195ed24[address(arg1)].field_1024 >= sub_8195ed24[address(arg1)].field_768
                sub_8195ed24[address(arg1)].field_768 = sub_8195ed24[address(arg1)].field_1024
                require ext_code.size(sub_b075bfb4Address)
                call sub_b075bfb4Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenReleased((sub_8195ed24[address(arg1)].field_1024 - sub_8195ed24[address(arg1)].field_768), arg1);
            else:
                require sub_8195ed24[address(arg1)].field_256 <= block.timestamp
                require sub_8195ed24[address(arg1)].field_0 > 0
                require sub_8195ed24[address(arg1)].field_0
                if not block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0:
                    if sub_8195ed24[address(arg1)].field_1024:
                        require sub_8195ed24[address(arg1)].field_1024
                        require not 0 / sub_8195ed24[address(arg1)].field_1024
                    require sub_8195ed24[address(arg1)].field_512 > 0
                    require sub_8195ed24[address(arg1)].field_512
                    require sub_8195ed24[address(arg1)].field_768 <= 0 / sub_8195ed24[address(arg1)].field_512
                    require (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768 > 0
                    require 0 / sub_8195ed24[address(arg1)].field_512 >= sub_8195ed24[address(arg1)].field_768
                    sub_8195ed24[address(arg1)].field_768 = 0 / sub_8195ed24[address(arg1)].field_512
                    require ext_code.size(sub_b075bfb4Address)
                    call sub_b075bfb4Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenReleased(((0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768), arg1);
                else:
                    require block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0
                    require block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 == sub_8195ed24[address(arg1)].field_0
                    if not sub_8195ed24[address(arg1)].field_1024:
                        require sub_8195ed24[address(arg1)].field_512 > 0
                        require sub_8195ed24[address(arg1)].field_512
                        require sub_8195ed24[address(arg1)].field_768 <= 0 / sub_8195ed24[address(arg1)].field_512
                        require (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768 > 0
                        require 0 / sub_8195ed24[address(arg1)].field_512 >= sub_8195ed24[address(arg1)].field_768
                        sub_8195ed24[address(arg1)].field_768 = 0 / sub_8195ed24[address(arg1)].field_512
                        require ext_code.size(sub_b075bfb4Address)
                        call sub_b075bfb4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenReleased(((0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768), arg1);
                    else:
                        require sub_8195ed24[address(arg1)].field_1024
                        require sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_1024 == block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0
                        require sub_8195ed24[address(arg1)].field_512 > 0
                        require sub_8195ed24[address(arg1)].field_512
                        require sub_8195ed24[address(arg1)].field_768 <= sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512
                        require (sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768 > 0
                        require sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512 >= sub_8195ed24[address(arg1)].field_768
                        sub_8195ed24[address(arg1)].field_768 = sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512
                        require ext_code.size(sub_b075bfb4Address)
                        call sub_b075bfb4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenReleased(((sub_8195ed24[address(arg1)].field_1024 * block.timestamp - sub_8195ed24[address(arg1)].field_256 / sub_8195ed24[address(arg1)].field_0 * sub_8195ed24[address(arg1)].field_0 / sub_8195ed24[address(arg1)].field_512) - sub_8195ed24[address(arg1)].field_768), arg1);
}

function sub_7e851e13(?) payable {
    require msg.sender
    require sub_8195ed24[address(msg.sender)].field_256 + sub_8195ed24[address(msg.sender)].field_0 >= sub_8195ed24[address(msg.sender)].field_256
    if block.timestamp < sub_8195ed24[address(msg.sender)].field_256 + sub_8195ed24[address(msg.sender)].field_0:
        require sub_8195ed24[address(msg.sender)].field_768 <= 0
        require -sub_8195ed24[address(msg.sender)].field_768 > 0
        require 0 >= sub_8195ed24[address(msg.sender)].field_768
        sub_8195ed24[address(msg.sender)].field_768 = 0
        require ext_code.size(sub_b075bfb4Address)
        call sub_b075bfb4Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, -sub_8195ed24[address(msg.sender)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenReleased(-sub_8195ed24[address(msg.sender)].field_768, msg.sender);
    else:
        require sub_8195ed24[address(msg.sender)].field_256 + sub_8195ed24[address(msg.sender)].field_512 >= sub_8195ed24[address(msg.sender)].field_256
        if block.timestamp >= sub_8195ed24[address(msg.sender)].field_256 + sub_8195ed24[address(msg.sender)].field_512:
            require sub_8195ed24[address(msg.sender)].field_768 <= sub_8195ed24[address(msg.sender)].field_1024
            require sub_8195ed24[address(msg.sender)].field_1024 - sub_8195ed24[address(msg.sender)].field_768 > 0
            require sub_8195ed24[address(msg.sender)].field_1024 >= sub_8195ed24[address(msg.sender)].field_768
            sub_8195ed24[address(msg.sender)].field_768 = sub_8195ed24[address(msg.sender)].field_1024
            require ext_code.size(sub_b075bfb4Address)
            call sub_b075bfb4Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_8195ed24[address(msg.sender)].field_1024 - sub_8195ed24[address(msg.sender)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenReleased((sub_8195ed24[address(msg.sender)].field_1024 - sub_8195ed24[address(msg.sender)].field_768), msg.sender);
        else:
            if sub_8195ed24[address(msg.sender)].field_1280:
                require sub_8195ed24[address(msg.sender)].field_768 <= sub_8195ed24[address(msg.sender)].field_1024
                require sub_8195ed24[address(msg.sender)].field_1024 - sub_8195ed24[address(msg.sender)].field_768 > 0
                require sub_8195ed24[address(msg.sender)].field_1024 >= sub_8195ed24[address(msg.sender)].field_768
                sub_8195ed24[address(msg.sender)].field_768 = sub_8195ed24[address(msg.sender)].field_1024
                require ext_code.size(sub_b075bfb4Address)
                call sub_b075bfb4Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_8195ed24[address(msg.sender)].field_1024 - sub_8195ed24[address(msg.sender)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenReleased((sub_8195ed24[address(msg.sender)].field_1024 - sub_8195ed24[address(msg.sender)].field_768), msg.sender);
            else:
                require sub_8195ed24[address(msg.sender)].field_256 <= block.timestamp
                require sub_8195ed24[address(msg.sender)].field_0 > 0
                require sub_8195ed24[address(msg.sender)].field_0
                if not block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0:
                    if sub_8195ed24[address(msg.sender)].field_1024:
                        require sub_8195ed24[address(msg.sender)].field_1024
                        require not 0 / sub_8195ed24[address(msg.sender)].field_1024
                    require sub_8195ed24[address(msg.sender)].field_512 > 0
                    require sub_8195ed24[address(msg.sender)].field_512
                    require sub_8195ed24[address(msg.sender)].field_768 <= 0 / sub_8195ed24[address(msg.sender)].field_512
                    require (0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768 > 0
                    require 0 / sub_8195ed24[address(msg.sender)].field_512 >= sub_8195ed24[address(msg.sender)].field_768
                    sub_8195ed24[address(msg.sender)].field_768 = 0 / sub_8195ed24[address(msg.sender)].field_512
                    require ext_code.size(sub_b075bfb4Address)
                    call sub_b075bfb4Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenReleased(((0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768), msg.sender);
                else:
                    require block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0
                    require block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 == sub_8195ed24[address(msg.sender)].field_0
                    if not sub_8195ed24[address(msg.sender)].field_1024:
                        require sub_8195ed24[address(msg.sender)].field_512 > 0
                        require sub_8195ed24[address(msg.sender)].field_512
                        require sub_8195ed24[address(msg.sender)].field_768 <= 0 / sub_8195ed24[address(msg.sender)].field_512
                        require (0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768 > 0
                        require 0 / sub_8195ed24[address(msg.sender)].field_512 >= sub_8195ed24[address(msg.sender)].field_768
                        sub_8195ed24[address(msg.sender)].field_768 = 0 / sub_8195ed24[address(msg.sender)].field_512
                        require ext_code.size(sub_b075bfb4Address)
                        call sub_b075bfb4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenReleased(((0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768), msg.sender);
                    else:
                        require sub_8195ed24[address(msg.sender)].field_1024
                        require sub_8195ed24[address(msg.sender)].field_1024 * block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / sub_8195ed24[address(msg.sender)].field_1024 == block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0
                        require sub_8195ed24[address(msg.sender)].field_512 > 0
                        require sub_8195ed24[address(msg.sender)].field_512
                        require sub_8195ed24[address(msg.sender)].field_768 <= sub_8195ed24[address(msg.sender)].field_1024 * block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / sub_8195ed24[address(msg.sender)].field_512
                        require (sub_8195ed24[address(msg.sender)].field_1024 * block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768 > 0
                        require sub_8195ed24[address(msg.sender)].field_1024 * block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / sub_8195ed24[address(msg.sender)].field_512 >= sub_8195ed24[address(msg.sender)].field_768
                        sub_8195ed24[address(msg.sender)].field_768 = sub_8195ed24[address(msg.sender)].field_1024 * block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / sub_8195ed24[address(msg.sender)].field_512
                        require ext_code.size(sub_b075bfb4Address)
                        call sub_b075bfb4Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_8195ed24[address(msg.sender)].field_1024 * block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenReleased(((sub_8195ed24[address(msg.sender)].field_1024 * block.timestamp - sub_8195ed24[address(msg.sender)].field_256 / sub_8195ed24[address(msg.sender)].field_0 * sub_8195ed24[address(msg.sender)].field_0 / sub_8195ed24[address(msg.sender)].field_512) - sub_8195ed24[address(msg.sender)].field_768), msg.sender);
    return 1
}



}
