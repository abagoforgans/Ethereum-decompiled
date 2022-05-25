contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor5;
mapping of uint256 released;
mapping of uint8 stor7;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
}

function revocable() {
    return bool(stor5)
}

function owner() {
    return address(owner)
}

function released(address arg1) {
    return released[arg1]
}

function start() {
    return start
}

function revoked(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function owned() {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    require arg1
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require duration + start >= start
    if block.timestamp >= duration + start:
        return (released[address(arg1)] + ext_call.return_data[0])
    if stor7[address(arg1)]:
        return (released[address(arg1)] + ext_call.return_data[0])
    require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
    delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
         gas gas_remaining wei
        args block.timestamp, start
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
    delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xd05c78da with:
         gas gas_remaining wei
        args released[address(arg1)] + ext_call.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
    delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xb5931f7c with:
         gas gas_remaining wei
        args delegate.return_data[0], duration
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function releasableAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
        delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
             gas gas_remaining wei
            args 0, released[address(arg1)]
    else:
        require duration + start >= start
        require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
        if block.timestamp >= duration + start:
            delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                 gas gas_remaining wei
                args released[address(arg1)] + ext_call.return_data[0], released[address(arg1)]
        else:
            if stor7[address(arg1)]:
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args released[address(arg1)] + ext_call.return_data[0], released[address(arg1)]
            else:
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args block.timestamp, start
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xd05c78da with:
                     gas gas_remaining wei
                    args released[address(arg1)] + ext_call.return_data[0], delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xb5931f7c with:
                     gas gas_remaining wei
                    args delegate.return_data[0], duration
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args delegate.return_data[0], released[address(arg1)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function release(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
        delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
             gas gas_remaining wei
            args 0, released[address(arg1)]
    else:
        require duration + start >= start
        require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
        if block.timestamp >= duration + start:
            delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                 gas gas_remaining wei
                args released[address(arg1)] + ext_call.return_data[0], released[address(arg1)]
        else:
            if stor7[address(arg1)]:
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args released[address(arg1)] + ext_call.return_data[0], released[address(arg1)]
            else:
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args block.timestamp, start
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xd05c78da with:
                     gas gas_remaining wei
                    args released[address(arg1)] + ext_call.return_data[0], delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xb5931f7c with:
                     gas gas_remaining wei
                    args delegate.return_data[0], duration
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args delegate.return_data[0], released[address(arg1)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] > 0
    require delegate.return_data[0] + released[address(arg1)] >= released[address(arg1)]
    released[address(arg1)] += delegate.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Released(delegate.return_data[0]);
}

function revoke(address arg1) {
    require msg.sender == address(owner)
    require stor5
    require not stor7[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
        delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
             gas gas_remaining wei
            args 0, released[address(arg1)]
    else:
        require duration + start >= start
        require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
        if block.timestamp >= duration + start:
            delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                 gas gas_remaining wei
                args released[address(arg1)] + ext_call.return_data[0], released[address(arg1)]
        else:
            if stor7[address(arg1)]:
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args released[address(arg1)] + ext_call.return_data[0], released[address(arg1)]
            else:
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args block.timestamp, start
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xd05c78da with:
                     gas gas_remaining wei
                    args released[address(arg1)] + ext_call.return_data[0], delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xb5931f7c with:
                     gas gas_remaining wei
                    args delegate.return_data[0], duration
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
                delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
                     gas gas_remaining wei
                    args delegate.return_data[0], released[address(arg1)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x20b04c58d2eaf6579062057037311c7e6fe3ba0d)
    delegate 0x20b04c58d2eaf6579062057037311c7e6fe3ba0d.0xa293d1e8 with:
         gas gas_remaining wei
        args ext_call.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor7[address(arg1)] = 1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(owner), delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Revoked()
}



}
