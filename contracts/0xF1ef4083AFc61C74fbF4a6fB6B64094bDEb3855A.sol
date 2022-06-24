contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 times;
uint256 releaseStart;
uint256 interval;
address owner;
mapping of uint256 released;
mapping of uint256 revoked;
mapping of struct stor7;
uint256 stor8; offset 1
uint256 partnerCount;
uint256 sub_0fb5bfab;

function sub_0fb5bfab(?) payable {
    return sub_0fb5bfab
}

function beneficiary() payable {
    return beneficiaryAddress
}

function releaseStart() payable {
    return releaseStart
}

function owner() payable {
    return owner
}

function interval() payable {
    return interval
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    return released[arg1]
}

function times() payable {
    return times
}

function partnerCount() payable {
    return partnerCount
}

function revoked(address arg1) payable {
    require calldata.size - 4 >= 32
    return revoked[arg1]
}

function _fallback() payable {
    revert
}

function isRevocable() payable {
    if sub_0fb5bfab < stor8 + 1:
        return 0
    return 1
}

function sub_8c0dae07(?) payable {
    require calldata.size - 4 >= 32
    require stor7[address(msg.sender)].field_0 == msg.sender
    if bool(stor7[address(msg.sender)].field_160) != arg1:
        if not arg1:
            sub_0fb5bfab--
        else:
            sub_0fb5bfab++
        stor7[address(msg.sender)].field_160 = Mask(96, 0, arg1)
    emit 0x88f2c1a8: arg1
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor7[address(msg.sender)].field_0 == msg.sender
    require sub_0fb5bfab >= stor8 + 1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revoked[address(arg1)] += ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Revoked()
}

function releasableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < releaseStart:
        return 0
    if block.timestamp >= releaseStart - interval + (times * interval):
        return ext_call.return_data[0]
    if revoked[address(arg1)] > 0:
        return ext_call.return_data[0]
    require times
    require interval
    return ((ext_call.return_data[0] + released[address(arg1)] / times) + (block.timestamp - releaseStart / interval * ext_call.return_data[0] + released[address(arg1)] / times) - released[address(arg1)])
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor7[address(msg.sender)].field_0 == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.timestamp >= releaseStart
    if block.timestamp >= releaseStart - interval + (times * interval):
        require ext_call.return_data[0] > 0
        released[address(arg1)] += ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Released(ext_call.return_data[0]);
    else:
        if revoked[address(arg1)] > 0:
            require ext_call.return_data[0] > 0
            released[address(arg1)] += ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Released(ext_call.return_data[0]);
        else:
            require times
            require interval
            require (ext_call.return_data[0] + released[address(arg1)] / times) + (block.timestamp - releaseStart / interval * ext_call.return_data[0] + released[address(arg1)] / times) - released[address(arg1)] > 0
            released[address(arg1)] = (ext_call.return_data[0] + released[address(arg1)] / times) + (block.timestamp - releaseStart / interval * ext_call.return_data[0] + released[address(arg1)] / times)
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, (ext_call.return_data[0] + released[address(arg1)] / times) + (block.timestamp - releaseStart / interval * ext_call.return_data[0] + released[address(arg1)] / times) - released[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Released(((ext_call.return_data[0] + released[address(arg1)] / times) + (block.timestamp - releaseStart / interval * ext_call.return_data[0] + released[address(arg1)] / times) - released[address(arg1)]));
}



}
